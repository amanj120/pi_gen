#include <iostream>

// Returns false if b > a, else does a -= b in place and returns true
bool diffeq(uint64_t* a, uint64_t& asize, uint64_t* b, uint64_t& bsize) {
    // checking to make sure a >= b;
    if (bsize > asize) {
        return false;
    }
    for (auto i = asize; i > 0; --i) {
        if (a[i - 1] > b[i - 1]) {
            break;
        } else if (b[i - 1] > a[i - 1]) {
            return false;
        }
    }

    for (size_t i = 0; i < bsize; i++) {
        if (b[i] > a[i]) {
            // TODO: deal with multiple 0's in a row
            // assert(a[i + 1] != 0);
            a[i + 1] -= 1;
        }
        a[i] -= b[i];
    }
    while (a[asize - 1] == 0 && asize > 0) {
        asize--;
    }
    return true;
}

// s = a * x + y
void saxpy(uint64_t* s, uint64_t& ssize, uint64_t* a, uint64_t& asize, const uint64_t x, uint64_t* y, uint64_t& ysize) {
    constexpr size_t shift = (sizeof(uint64_t) * 4UL);
    constexpr uint64_t    half  = static_cast<uint64_t>(0xffffffffffffffffUL >> shift);

    uint64_t p_carry = 0; // carry for product
    uint64_t s_carry = 0; // carry for sum
    if (asize >= ysize) {
        ssize = asize + 1;
    } else {
        ssize = ysize + 1;
    }

    for (size_t i = 0; i < ssize; i++) {
        const uint64_t ai = a[i];
        const uint64_t yi = y[i];
        const uint64_t xm = x >> shift;   // most significant half of x
        const uint64_t xl = x & half;     // least significant half of x
        const uint64_t am = ai >> shift;  // most significant half of a[i]
        const uint64_t al = ai & half;    // least significant half of a[i]
        const uint64_t mm = xm * am;
        const uint64_t ml = xm * al;
        const uint64_t lm = xl * am;
        const uint64_t ll = xl * al;
        const uint64_t o1 = (ml & half) + (lm & half) + (ll >> shift);
        const uint64_t pm = mm + (ml >> shift) + (lm >> shift) + (o1 >> shift); // most significant half of product
        const uint64_t pl = (o1 << shift) + (ll & half); // least significant half of product

        const uint64_t sip = p_carry + pl;       // s[i] after product (to calculate p_carry)
        const uint64_t sis = sip + yi + s_carry; // s[i] after sum (to calculate s_carry)

        p_carry = pm + ((sip < pl) * 1);
        s_carry = ((sis < sip) * 1) + ((sis == sip) * s_carry);

        s[i] = sis;
    }

    while (s[ssize - 1] == 0 && ssize > 0) {
        ssize--;
    }
}

// a *= x
void muleq(uint64_t* a, uint64_t& asize, const uint64_t x) {
    constexpr size_t shift = (sizeof(uint64_t) * 4UL);
    constexpr uint64_t    half  = static_cast<uint64_t>(0xffffffffffffffffUL >> shift);

    uint64_t p_carry = 0; // carry for product

    for (size_t i = 0; i < asize; i++) {
        const uint64_t ai = a[i];
        const uint64_t xm = x >> shift;   // most significant half of x
        const uint64_t xl = x & half;     // least significant half of x
        const uint64_t am = ai >> shift;  // most significant half of a[i]
        const uint64_t al = ai & half;    // least significant half of a[i]
        const uint64_t mm = xm * am;
        const uint64_t ml = xm * al;
        const uint64_t lm = xl * am;
        const uint64_t ll = xl * al;
        const uint64_t o1 = (ml & half) + (lm & half) + (ll >> shift);
        const uint64_t pm = mm + (ml >> shift) + (lm >> shift) + (o1 >> shift); // most significant half of product
        const uint64_t pl = (o1 << shift) + (ll & half); // least significant half of product
        
        const uint64_t ai_new = p_carry + pl;       // a[i] after product (to calculate p_carry)
        p_carry = pm + ((ai_new < pl) * 1);
        a[i] = ai_new;
    }

    if (p_carry != 0) {
        a[asize] = p_carry;
        asize++;
    } 
}

int main(int argc, char* argv[]) {
    if (argc != 2) {
        std::cerr << "argc != 2" << std::endl;
        return -1;
    }

    const uint64_t N = std::stoull(argv[1]);
   
    // Any bigger and x1 gets close to overflowing
    if (N > 369'000'000UL) { 
        std::cerr << "N > 369,000,000" << std::endl;
        return -1;
    }

    uint64_t n0[N];
    uint64_t n1[N];
    uint64_t n2[N];

    for (auto i = 0; i < N; i++) {
        n0[i] = 0;
        n1[i] = 0;
        n2[i] = 0;
    }

    n0[0] = 1;
    n2[0] = 1;

    uint64_t n0size = 1;
    uint64_t n1size = 1;
    uint64_t n2size = 1;

    uint64_t x0 = 5;
    uint64_t x1 = 300;
    uint64_t x2 = 30;
    uint64_t x3 = 3;

    for (uint64_t i = 1; i <= N; ++i) {
        saxpy(n1, n1size, n0, n0size, x3, n1, n1size);      // n1 = (n0 * x3) + n1 

        char y = '0';
        while (true) {
            // while (diffeq(n1, n1size, n2, n2size)) {
            // checking to make sure a >= b;
            if (n2size > n1size) {
                break;
            }
            bool n1larger = true;
            for (auto i = n1size; i > 0; --i) {
                if (n1[i - 1] > n2[i - 1]) {
                    break;
                } else if (n2[i - 1] > n1[i - 1]) {
                    n1larger = false;
                    break;
                }
            }
            if (!n1larger) {
                break;
            }

            for (size_t i = 0; i < n2size; i++) {
                if (n2[i] > n1[i]) {
                    // TODO: deal with multiple 0's in a row
                    // assert(a[i + 1] != 0);
                    n1[i + 1] -= 1;
                }
                n1[i] -= n2[i];
            }

            while (n1[n1size - 1] == 0 && n1size > 0) {
                n1size--;
            }

            y += 1;
        }

        if (y > '9') {
            std::cerr << "y > '9'" << std::endl;
            return -1;
        }
        std::cout << y;

        muleq(n0, n0size, x0);  // n0 *= x0
        muleq(n1, n1size, x1);  // n1 *= x1
        muleq(n2, n2size, x2);  // n2 *= x2

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

no vector saxpy and muleq
18.965
18.910
18.806

*/