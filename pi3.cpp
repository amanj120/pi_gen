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

// c = a * b
void mul(const BigInt& a, const Int b, BigInt& c) {
    Int carry = 0;
    c.resize(a.size());
    for (auto i = 0; i < a.size(); i++) {
        auto const [pl, pr] = mul(a[i], b);
        c[i] = (carry + pl);
        if (c[i] < carry) {
            carry = pr + 1;
        } else {
            carry = pr;
        }
    }
    c.push_back(carry);

    while (c.back() == 0 && c.size() > 1) {
        c.pop_back();
    }
}

// a += b
void sumeq(BigInt& a, const BigInt& b) {
    Int carry = 0;
    const auto m = a.size() >= b.size() ? a.size() : b.size();
    for (auto i = 0; i < m; i++) {
        if (i == a.size()) {
            a.push_back(b[i] + carry);
            if (carry == 1 && a[i] != 0) {
                carry = 0;
            }
        } else if (i >= b.size()) {
            a[i] += carry;
            if (carry == 1 && a[i] != 0) {
                carry = 0;
            }
        } else {
            auto const old_ai = a[i];
            a[i] += b[i];
            a[i] += carry;
            if (a[i] > old_ai || (a[i] == old_ai && carry == 0)) {
                carry = 0;
            } else {
                carry = 1;
            }
        }
    }
}

// s = a * x + y
void saxpy(BigInt& s, const BigInt& a, const Int& x, const BigInt& y) {
    // mul
    Int p_carry = 0; // carry for product
    Int s_carry = 0; // carry for sum
    Int s_idx   = 0;
    if (a.size() >= y.size()) {
        s.resize(a.size() + 1, 0UL);
    } else {
        s.resize(y.size() + 1, 0UL);
    }

    for (size_t idx = 0; idx < s.size(); idx++) {
        if (idx < a.size()) {
            auto const [pl, pr] = mul(a[idx], x);
            s_idx = p_carry + pl;
            if (s_idx < p_carry) {
                p_carry = pr + 1;
            } else {
                p_carry = pr;
            }
        } else {
            s_idx = p_carry;
            p_carry = 0;
        }

        if (idx < y.size()) {
            const Int old_si = s_idx;
            s_idx += y[idx] + s_carry;
            if (s_idx > old_si) { // no overflow
                s_carry = 0; 
            } else if (s_idx == old_si && s_carry == 0) { // also no overflow
                s_carry = 0;
            } else {
                s_carry = 1;
            }
        } else {
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

// General Purpose functions:
// X  = A * B + C
// X += A * B   <=> X = A * B + X
// X += A       <=> X = X * 1 + A       
// X *= A       <=> X = A * X + 0
// X -= A
// X >= A

int main(int argc, char* argv[]) {
    assert(argc == 2);
    Int N = std::stoull(argv[1]);
    // Any bigger and x3 gets close to overflowing.
    assert(N <= 369'000'000UL);

    stringstream pi;

    BigInt n0 = {1};
    BigInt n1 = {0};
    BigInt n2 = {1};
    BigInt n3 = {0};

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
        // mul(n0, x3, n3);
        // sumeq(n1, n3);
        saxpy(n1, n0, x3, n1);

        char y = '0';
        while (diffeq(n1, n2)) {
            y += 1;
        }
        assert(y <= '9');
        pi << y;

        mul(n0, x0, n0);    // n0 *= x0
        mul(n1, x1, n1);    // n1 *= x1
        mul(n2, x2, n2);    // n2 *= x2

        i  += 1;
        x0 += 20 * i;
        x0 -= 15;
        x1 += 270 * i;
        x2 += 27 * i;
        x3 += 5;
    }

    std::cout << pi.str() << std::endl;
}

