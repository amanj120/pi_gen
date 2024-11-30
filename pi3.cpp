#include <iostream>
#include <vector>
#include <cassert>

using Int    = uint64_t;
using BigInt = std::vector<Int>;

// Returns false if b > a, else does a -= b in place and returns true.
bool diffeq(BigInt& a, const BigInt& b) {
    // checking to make sure a >= b;
    if (b.size() > a.size()) {
        return false;
    }
    for (auto i = a.size(); i > 0; --i) {
        if (a[i - 1] > b[i - 1]) {
            break;
        } else if (b[i - 1] > a[i - 1]) {
            return false;
        }
    }

    for (size_t i = 0; i < b.size(); i++) {
        if (b[i] > a[i]) {
            // TODO: deal with multiple 0's in a row
            assert(a[i + 1] != 0);
            a[i + 1] -= 1;
        }
        a[i] -= b[i];
    }
    while (a.back() == 0 && a.size() > 1) {
        a.pop_back();
    }
    return true;
}

// s = a * x + y
void saxpy(BigInt& s, const BigInt& a, const Int x, const BigInt& y) {
    constexpr Int half_64 = 0xffffffff;

    Int p_carry = 0; // carry for product
    Int s_carry = 0; // carry for sum

    const Int ys = y.size();
    const Int as = a.size();
    if (as >= ys) {
        s.resize(as + 1, 0UL);
    } else {
        s.resize(ys + 1, 0UL);
    }

    for (size_t i = 0; i < s.size(); i++) {
        const Int ai = i < as ? a[i] : 0UL;
        const Int yi = i < ys ? y[i] : 0UL;

        const Int xm = x >> 32;         // most significant half of x
        const Int xl = x & half_64;     // least significant half of x
        const Int am = ai >> 32;        // most significant half of a[i]
        const Int al = ai & half_64;    // least significant half of a[i]
        const Int mm = xm * am;
        const Int ml = xm * al;
        const Int lm = xl * am;
        const Int ll = xl * al;
        const Int o1 = (ml & half_64) + (lm & half_64) + (ll >> 32);
        const Int pm = mm + (ml >> 32) + (lm >> 32) + (o1 >> 32); // most significant half of product
        const Int pl = (o1 << 32) + (ll & half_64); // least significant half of product

        const Int sip = p_carry + pl;       // s[i] after product (to calculate p_carry)
        const Int sis = sip + yi + s_carry; // s[i] after sum (to calculate s_carry)

        p_carry = pm + ((sip < pl) * 1);
        s_carry = ((sis < sip) * 1) + ((sis == sip) * s_carry);

        s[i] = sis;
    }

    while (s.back() == 0 && s.size() > 1) {
        s.pop_back();
    }
}

int main(int argc, char* argv[]) {
    assert(argc == 2);
    Int N = std::stoull(argv[1]);
    // Any bigger and x1 gets close to overflowing.
    assert(N <= 369'000'000UL);

    BigInt n0 = {1};
    BigInt n1 = {0};
    BigInt n2 = {1};

    const BigInt zero = {};

    Int x0 = 5;
    Int x1 = 300;
    Int x2 = 30;
    Int x3 = 3;

    for (Int i = 1; i <= N; ++i) {
        if (i % 128 == 0) {
            std::cout << std::endl << std::flush;
        }
        
        
        saxpy(n1, n0, x3, n1);      // n1 = (n0 * x3) + n1 

        char y = '0';
        while (diffeq(n1, n2)) {
            y += 1;
        }
        assert(y <= '9');
        std::cout << y;

        saxpy(n0, n0, x0, zero);    // n0 *= x0
        saxpy(n1, n1, x1, zero);    // n1 *= x1
        saxpy(n2, n2, x2, zero);    // n2 *= x2

        // i  += 1;
        x0 += (20 * i) + 5;
        x1 += 270 * (i + 1);
        x2 += 27 * (i + 1);
        x3 += 5;
    }
    std::cout << std::endl << std::flush;
}

