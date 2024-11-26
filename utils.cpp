#include <iostream>
#include <ostream>
#include <vector>
#include <utility>
#include <cassert>
#include <sstream>
#include <format>
#include <string>

using std::vector;
using std::pair;
using std::ostream;
using std::stringstream;
using std::string;

using Int     = uint64_t;
using IntPair = pair<Int, Int>;
using BigInt  = vector<Int>;

ostream& operator<<(ostream& os, const BigInt& x) {
    for (size_t i = 0; i < x.size() - 1; i++) {
        os << x[i] << ",";
    }
    os << x.back();
    return os;
}

constexpr Int max32 = 0xffffffff;
constexpr Int max64 = 0xffffffffffffffff;

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
    auto const o3 = lh(ll) + lh(o2);
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

BigInt get_bigint(const string& s) {
    const auto len = s.size();
    BigInt ret;
    const char delim = ',';
    size_t cur = 0;
    while(true) {
        auto pos = s.find(delim, cur);
        if (pos == std::string::npos) {
            ret.push_back(std::stoull(s.substr(cur, len)));
            break;
        }
        ret.push_back(std::stoull(s.substr(cur, pos)));
        cur = pos + 1;
    }
    return ret;
}

Int get_int(const string& s) {
    return std::stoull(s);
}

int main(int argc, char* argv[]) {
    assert(argc == 4);
    const string op(argv[1]);
    const string arg0(argv[2]);
    const string arg1(argv[3]);
    if (op == "sumeq") {
        auto op0 = get_bigint(arg0);
        auto const op1 = get_bigint(arg1);
        sumeq(op0, op1);
        std::cout << op0 << std::endl;
    } else if (op == "diffeq") {
        auto op0 = get_bigint(arg0);
        auto const op1 = get_bigint(arg1);
        diffeq(op0, op1);
        std::cout << op0 << std::endl;
    } else if (op == "muleq") {
        auto op0 = get_bigint(arg0);
        auto const op1 = get_int(arg1);
        muleq(op0, op1);
        std::cout << op0 << std::endl;
    } else if (op == "mul") {
        BigInt op2;
        auto const op0 = get_bigint(arg0);
        auto const op1 = get_int(arg1);
        mul(op0, op1, op2);
        std::cout << op2 << std::endl;
    } else if (op == "ge") {
        auto const op0 = get_bigint(arg0);
        auto const op1 = get_bigint(arg1);
        auto const res = ge(op0, op1);
        std::cout << res << std::endl;
    } else {
        throw std::runtime_error(std::format("Unrecognized op={}", op));
    }

    return 0;
}

