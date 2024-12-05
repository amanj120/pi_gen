#include <iostream>

void mul(const uint64_t x, const uint64_t y, uint64_t& pm, uint64_t& pl) {
    constexpr uint64_t shift = (sizeof(uint64_t) * 4UL);
    constexpr uint64_t half  = static_cast<uint64_t>(0xffffffffffffffffUL >> shift);

    const uint64_t xm = x >> shift;  // most significant half of x
    const uint64_t xl = x & half;    // least significant half of x
    const uint64_t ym = y >> shift;  // most significant half of y
    const uint64_t yl = y & half;    // least significant half of y
    const uint64_t mm = xm * ym;
    const uint64_t ml = xm * yl;
    const uint64_t lm = xl * ym;
    const uint64_t ll = xl * yl;
    const uint64_t o1 = (ml & half) + (lm & half) + (ll >> shift);
    pm = mm + (ml >> shift) + (lm >> shift) + (o1 >> shift); // most significant half of product
    pl = (o1 << shift) + (ll & half); // least significant half of product
}

// s = a * x + y
void saxpy(uint64_t* s, uint64_t& ssize, uint64_t* a, uint64_t& asize, const uint64_t x, uint64_t* y, uint64_t& ysize) {
    if (y != nullptr) {
        uint64_t p_carry = 0; // carry for product
        uint64_t s_carry = 0; // carry for sum
        uint64_t pm; // most significant half of 64 bit multiply.
        uint64_t pl; // least significant half of 64 bit multiply.

        if (asize >= ysize) {
            ssize = asize + 1;
        } else {
            ssize = ysize + 1;
        }

        for (size_t i = 0; i < ssize; i++) {
            mul(a[i], x, pm, pl);
            const uint64_t sip = p_carry + pl;  // s[i] after product (to calculate p_carry)
            s[i] = sip + y[i] + s_carry;        // s[i] after sum (to calculate s_carry)
            p_carry = pm + ((sip < pl) * 1);
            s_carry = ((s[i] < sip) * 1) + ((s[i] == sip) * s_carry);
        }

        while (s[ssize - 1] == 0 && ssize > 0) {
            ssize--;
        }
    } else {
        uint64_t p_carry = 0; // carry for product
        uint64_t pm; // most significant half of 64 bit multiply.
        uint64_t pl; // least significant half of 64 bit multiply.

        ssize = asize + 1;
        for (size_t i = 0; i < ssize; i++) {
            mul(a[i], x, pm, pl);
            s[i] = p_carry + pl;
            p_carry = pm + ((s[i] < pl) * 1);
        }

        while (s[ssize - 1] == 0 && ssize > 0) {
            ssize--;
        }
    }
    
}

// s = a * x
void sax(uint64_t*s, uint64_t& ssize, uint64_t* a, uint64_t& asize, const uint64_t x) {
    uint64_t p_carry = 0; // carry for product
    uint64_t pm; // most significant half of 64 bit multiply.
    uint64_t pl; // least significant half of 64 bit multiply.

    ssize = asize + 1;
    for (size_t i = 0; i < ssize; i++) {
        mul(a[i], x, pm, pl);
        s[i] = p_carry + pl;
        p_carry = pm + ((s[i] < pl) * 1);
    }

    while (s[ssize - 1] == 0 && ssize > 0) {
        ssize--;
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

    uint64_t z = 0;

    for (uint64_t i = 1; i <= N; ++i) {
        saxpy(n1, n1size, n0, n0size, x3, n1, n1size);      // n1 = (n0 * x3) + n1 

        char y = '0';
        while (y <= '9') { // y = n1//n2; n1 %= n2; 
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

        std::cout << y;

        saxpy(n0, n0size, n0, n0size, x0, nullptr, z);  // n0 *= x0
        saxpy(n1, n1size, n1, n1size, x1, nullptr, z);  // n1 *= x1
        saxpy(n2, n2size, n2, n2size, x2, nullptr, z);  // n2 *= x2

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