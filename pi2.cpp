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

constexpr Int max32 = 0xffffffff;

// least significant bits
Int rh(const Int x) {
    return x & max32;
}

// most significant bits
Int lh(const Int x) {
    return (x >> 32) & max32;
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

// c = a * b
void mul(const BigInt& a, const Int b, BigInt& c) {
    Int carry = 0;
    c.clear();
    for (auto i = 0; i < a.size(); i++) {
        auto const [pl, pr] = mul(a[i], b);
        c.push_back(carry + pl);
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

// a *= b
void muleq(BigInt& a, const Int b) {
    Int carry = 0;
    for (auto i = 0; i < a.size(); i++) {
        auto const [pl, pr] = mul(a[i], b);
        a[i] = carry + pl;
        if (a[i] < carry) {
            carry = pr + 1;
        } else {
            carry = pr;
        }
    }
    if (carry != 0) {
        a.push_back(carry);
    }
}


// a -= b
void diffeq(BigInt& a, const BigInt& b) {
    Int carry = 0;
    assert(ge(a, b));
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
    BigInt n4 = {0};

    for (Int i = 1; i <= N; i++) {
        if (prune(n0, n1, n2)) {
            assert(!prune(n0, n1, n2));
        }

        if (i % 1000 == 0) {
            std::cerr << i << std::endl;
        }

        const Int x0 = i * ((2UL * i) - 1UL);
        const Int x1 = ((5UL * i) - 2UL);
        const Int x2 = (27UL * i) - 12UL;
        const Int x3 = (3UL * ((3UL * i) + 1UL) * ((3UL * i) + 2UL)) >> 1UL;
        const Int x4 = x3 * 10;

        muleq(n2, x3);          // n2 *= x3
        mul(n0, x1, n3);        // n3  = n0 * x1
        sumeq(n1, n3);          // n1 += n3
        muleq(n1, x4);          // n1 *= x4
        mul(n0, x0, n3);        // n3  = n0 * x0
        mul(n3, 5, n0);         // n0  = n3 * 5
        muleq(n3, x2);          // n3 *= x2
        sumeq(n3, n1);          // n3 += n1
        mul(n2, 10, n4);        // n4  = n2 * 10

        auto y = 0;
        while (ge(n3, n4)) {    // n3 > n4
            ++y;
            diffeq(n3, n4);     // n3 -= n4
            diffeq(n1, n4);     // n1 -= n4
        }
        
        assert(y < 10);
        pi << y;
    }

    std::cout << pi.str() << std::endl;
}

