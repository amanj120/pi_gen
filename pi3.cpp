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
    if (carry != 0) {
        c.push_back(carry);
    }
}

// a -= b
void diffeq(BigInt& a, const BigInt& b) {
    Int carry = 0;
    for (size_t i = 0; i < b.size(); i++) {
        if (a[i] >= b[i]) {
            a[i] -= b[i];
        } else {
            // TODO: deal with multiple 0's in a row
            assert(a[i + 1] != 0);
            a[i+1]--;
            a[i] -= b[i];
        }
    }
    while (a.back() == 0 && a.size() > 1) {
        a.pop_back();
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

// a >= b
bool ge(const BigInt& a, const BigInt& b) {
    if (a.size() != b.size()) {
        return a.size() > b.size();
    }
    for (auto i = a.size(); i > 0; --i) {
        if (a[i - 1] != b[i - 1]) {
            return a[i - 1] > b[i - 1];
        }
    }
    return true;
}

// Remove trailing 0
bool prune(BigInt& a, BigInt& b, BigInt& c) {
    if (a[0] == 0 && b[0] == 0 && c[0] == 0) {
        a.erase(a.begin());
        b.erase(b.begin());
        c.erase(c.begin());
        return true;
    }
    return false;
}

// General Purpose functions:
// X += A * B
// X += A
// X *= A
// X -= A
// X >= A

int main(int argc, char* argv[]) {
    assert(argc == 2);
    Int N = std::stoull(argv[1]);
    // Any bigger and x4 gets close to overflowing.
    assert(N <= 369'000'000UL);

    stringstream pi;

    BigInt n0 = {1};
    BigInt n1 = {0};
    BigInt n2 = {1};
    BigInt n3 = {0};

    Int x0 = 5UL;
    Int x1 = 300UL;
    Int x2 = 30UL;
    Int x3 = 3UL;
    Int i  = 1UL;

    while (N >= i) {
        if (i % 1000 == 0) {
            std::cerr << i << std::endl;
        }
        
        // n1 = (n0 * x0) + n1
        // Y  = A * B + C
        // n1 += (n0 * x3)
        mul(n0, x3, n3);
        sumeq(n1, n3);

        char y = '0';
        while (ge(n1, n2)) {
            y += 1;
            diffeq(n1, n2);
        }
        assert(y <= '9');
        pi << y;

        mul(n0, x0, n0);    // n0 *= x0
        mul(n1, x1, n1);    // n1 *= x1
        mul(n2, x2, n2);    // n2 *= x2

        x0 += 5;
        x0 += (i * 20);

        x1 += 135;
        x1 += 135;
        x1 += (i * 135);
        x1 += (i * 135);

        x2 += 27;
        x2 += (i * 27);

        x3 += 5;

        i  += 1;
    }

    std::cout << pi.str() << std::endl;
}

