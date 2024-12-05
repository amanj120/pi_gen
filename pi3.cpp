#include <iostream>
#include <vector>
#include <assert.h>
// #include <stdio.h>
// #include <cassert>

using Int    = uint64_t;
using BigInt = std::vector<Int>;

// Returns false if b > a, else does a -= b in place and returns true
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
            // assert(a[i + 1] != 0);
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
    constexpr size_t shift = (sizeof(Int) * 4UL);
    constexpr Int    half  = static_cast<Int>(0xffffffffffffffffUL >> shift);

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

        const Int xm = x >> shift;   // most significant half of x
        const Int xl = x & half;     // least significant half of x
        const Int am = ai >> shift;  // most significant half of a[i]
        const Int al = ai & half;    // least significant half of a[i]
        const Int mm = xm * am;
        const Int ml = xm * al;
        const Int lm = xl * am;
        const Int ll = xl * al;
        const Int o1 = (ml & half) + (lm & half) + (ll >> shift);
        const Int pm = mm + (ml >> shift) + (lm >> shift) + (o1 >> shift); // most significant half of product
        const Int pl = (o1 << shift) + (ll & half); // least significant half of product

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

// a *= x
void muleq(BigInt& a, const Int x) {
    constexpr size_t shift = (sizeof(Int) * 4UL);
    constexpr Int    half  = static_cast<Int>(0xffffffffffffffffUL >> shift);

    Int p_carry = 0; // carry for product

    const Int as = a.size();

    for (size_t i = 0; i < as; i++) {
        const Int ai = a[i];
        const Int xm = x >> shift;   // most significant half of x
        const Int xl = x & half;     // least significant half of x
        const Int am = ai >> shift;  // most significant half of a[i]
        const Int al = ai & half;    // least significant half of a[i]
        const Int mm = xm * am;
        const Int ml = xm * al;
        const Int lm = xl * am;
        const Int ll = xl * al;
        const Int o1 = (ml & half) + (lm & half) + (ll >> shift);
        const Int pm = mm + (ml >> shift) + (lm >> shift) + (o1 >> shift); // most significant half of product
        const Int pl = (o1 << shift) + (ll & half); // least significant half of product
        
        const Int ai_new = p_carry + pl;       // a[i] after product (to calculate p_carry)
        p_carry = pm + ((ai_new < pl) * 1);
        a[i] = ai_new;
    }

    if (p_carry != 0) {
        a.push_back(p_carry);
    } 
}

int main(int argc, char* argv[]) {
    assert(argc == 2);
    const Int N = std::stoull(argv[1]);
    // Any bigger and x1 gets close to overflowing
    assert(N <= 369'000'000UL);

    BigInt n0 = {1};
    BigInt n1 = {0};
    BigInt n2 = {1};

    Int x0 = 5;
    Int x1 = 300;
    Int x2 = 30;
    Int x3 = 3;

    for (Int i = 1; i <= N; ++i) {
        saxpy(n1, n0, x3, n1);      // n1 = (n0 * x3) + n1 

        char y = '0';
        while (diffeq(n1, n2)) {
            y += 1;
        }
        assert(y <= '9');
        std::cout << y;

        muleq(n0, x0);  // n0 *= x0
        muleq(n1, x1);  // n1 *= x1
        muleq(n2, x2);  // n2 *= x2

        x0 += (20 * i) + 5;
        x1 += 270 * (i + 1);
        x2 += 27 * (i + 1);
        x3 += 5;

        if (i % 128 == 0) {
            std::cout << std::endl << std::flush;
            std::cerr << i << std::endl << std::flush;
        }
    }
    std::cout << std::endl << std::flush;
}

/*
only saxpy:
50k
20.598
20.410
20.532

saxpy and muleq
19.366
19.521
19.515

*/