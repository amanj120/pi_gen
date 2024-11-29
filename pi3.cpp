#include <iostream>
#include <sstream>
#include <vector>
#include <utility>
#include <cassert>

using std::vector;
using std::pair;
using std::stringstream;

using Int     = uint64_t;
using IntPair = pair<Int, Int>;
using BigInt  = vector<Int>;

constexpr uint64_t half_64 = 0xffffffff;
constexpr uint32_t half_32 = 0xffff;
constexpr uint16_t half_16 = 0xff;
constexpr uint8_t  half_8  = 0xf;

// least significant bits
uint64_t rh(const uint64_t x) {
    return x & half_64;
}
// most significant bits
uint64_t lh(const uint64_t x) {
    return (x >> 32) & half_64;
}

// least significant bits
uint32_t rh(const uint32_t x) {
    return x & half_32;
}
// most significant bits
uint32_t lh(const uint32_t x) {
    return (x >> 16) & half_32;
}

// least significant bits
uint16_t rh(const uint16_t x) {
    return x & half_16;
}
// most significant bits
uint16_t lh(const uint16_t x) {
    return (x >> 8) & half_16;
}

// least significant bits
uint8_t rh(const uint8_t x) {
    return x & half_16;
}
// most significant bits
uint8_t lh(const uint8_t x) {
    return (x >> 4) & half_8;
}

// Returns in little-endian order
IntPair mul(const Int x, const Int y) {
    auto const xl = lh(x);
    auto const xr = rh(x);
    auto const yl = lh(y);
    auto const yr = rh(y);
    auto const ll = xl * yl;
    auto const lr = xl * yr;
    auto const rl = xr * yl;
    auto const rr = xr * yr;
    auto const o0 = rh(rr);
    auto const o1 = rh(lr) + rh(rl) + lh(rr);
    auto const o2 = rh(ll) + lh(lr) + lh(rl) + lh(o1);
    auto const o3 = lh(ll);
    auto const pr = (o3 << 32) + o2;
    auto const pl = (o1 << 32) + o0;

    return {pl, pr};
}

// Returns false if b > a, else does a -= b in place and returns true.
bool diffeq(BigInt& a, const BigInt& b) {
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
    Int carry = 0;
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
void saxpy(BigInt& s, const BigInt& a, const Int& x, const BigInt& y) {
    // mul
    Int p_carry = 0; // carry for product
    Int s_carry = 0; // carry for sum
    if (a.size() >= y.size()) {
        s.resize(a.size() + 1, 0UL);
    } else {
        s.resize(y.size() + 1, 0UL);
    }

    Int s_idx; 
    for (size_t idx = 0; idx < s.size(); idx++) {
        s_idx = 0;
        
        if (idx < a.size()) {
            auto const [pl, pr] = mul(a[idx], x);
            s_idx = p_carry + pl;
            if (s_idx < p_carry) {
                p_carry = pr + 1;
            } else {
                p_carry = pr;
            }
        } else if (idx == a.size()) {
            s_idx = p_carry;
            p_carry = 0;
        }

        if (idx < y.size()) {
            const Int old_si = s_idx;
            s_idx += y[idx] + s_carry;
            if (s_idx > old_si || (s_idx == old_si && s_carry == 0)) { // no overflow
                s_carry = 0;
            } else {
                s_carry = 1;
            }
        } else if (s_carry > 0) {
            s_idx += s_carry;
            if (s_idx != 0 && s_carry == 1) { // no overflow
                s_carry = 0;
            }
        }
        
        s[idx] = s_idx;
    }

    while (s.back() == 0 && s.size() > 1) {
        s.pop_back();
    }
}

int main(int argc, char* argv[]) {
    assert(argc == 2);
    Int N = std::stoull(argv[1]);
    // Any bigger and x3 gets close to overflowing.
    assert(N <= 369'000'000UL);

    stringstream pi;

    BigInt n0 = {1};
    BigInt n1 = {0};
    BigInt n2 = {1};

    const BigInt zero = {0};

    Int x0 = 5;
    Int x1 = 300;
    Int x2 = 30;
    Int x3 = 3;
    Int i  = 1;

    while (N >= i) {
        if (i % 1000 == 0) {
            std::cerr << i << std::endl;
        }
        
        // n1 = (n0 * x3) + n1
        saxpy(n1, n0, x3, n1);

        char y = '0';
        while (diffeq(n1, n2)) {
            y += 1;
        }
        assert(y <= '9');
        pi << y;

        saxpy(n0, n0, x0, zero);    // n0 *= x0
        saxpy(n1, n1, x1, zero);    // n1 *= x1
        saxpy(n2, n2, x2, zero);    // n2 *= x2

        i  += 1;
        x0 += 20 * i;
        x0 -= 15;
        x1 += 270 * i;
        x2 += 27 * i;
        x3 += 5;
    }

    std::cout << pi.str() << std::endl;
}

