#include <iostream>
#include <cstdlib>

void mul(const uint64_t x, const uint64_t y, uint64_t& cur, uint64_t& carry) {
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
    const uint64_t pl = (o1 << shift) + (ll & half); // least significant half of product
    const uint64_t pm = mm + (ml >> shift) + (lm >> shift) + (o1 >> shift); // most significant half of product
    
    cur   = pl + carry;
    carry = pm + ((cur < pl) * 1);
}

// s = a * x + y
void saxpy(uint64_t* s, uint64_t& ssize, const uint64_t* a, const uint64_t asize, const uint64_t x, const uint64_t* y, const uint64_t ysize) {
    uint64_t p_carry = 0; // carry for product
    uint64_t new_ssize = asize + 1;
    
    if (y == 0 || ysize == 0) {
        for (size_t i = 0; i < new_ssize; i++) {
            mul(a[i], x, s[i], p_carry);
        }
    } else {
        uint64_t s_carry = 0; // carry for sum
        uint64_t cur;         // tmp used for calculating s_carry
        if (ysize > asize) {
            new_ssize = ysize + 1;
        }
        for (size_t i = 0; i < new_ssize; i++) {
            mul(a[i], x, cur, p_carry);
            s[i] = cur + y[i] + s_carry;        // s[i] after sum (to calculate s_carry)
            s_carry = ((s[i] < cur) * 1) + ((s[i] == cur) * s_carry);
        }
    }

    while (s[new_ssize - 1] == 0 && new_ssize > 0) {
        new_ssize--;
    }

    ssize = new_ssize;
}

int main(int argc, char* argv[]) {
    if (argc != 2) {
        std::cerr << "argc != 2" << std::endl;
        return -1;
    }
    const uint64_t N = std::stoull(argv[1]);
    if (N > 369'000'000UL) {    // Any bigger and (x2 * 10) gets close to overflowing
        std::cerr << "N > 369,000,000" << std::endl;
        return -1;
    }

    uint64_t* buf = reinterpret_cast<uint64_t*>(calloc((N * 3), sizeof(uint64_t)));
    uint64_t* n0 = &buf[0];
    uint64_t* n1 = &buf[N];
    uint64_t* n2 = &buf[N * 2];

    n0[0] = 1;
    n2[0] = 1;

    uint64_t n0size = 1;
    uint64_t n1size = 0;
    uint64_t n2size = 1;

    char y;
    for (uint64_t i = 1; i <= N; ++i) {
        const uint64_t x3 = (5 * i) - 2;
        const uint64_t x0 = (5 * i) * ((2 * i) - 1);
        const uint64_t x2 = (3 * ((3 * i) + 1) * ((3 * i) + 2)) >> 1;

        /*
        y = ((n0 * x3) + n1) // n2
        n1 = (((n0 * x3) + n1) % n2) * (x2 * 10)
        n2 = (n2 * x2)
        n0 = (n0 * x0)
        */

        saxpy(n1, n1size, n0, n0size, x3, n1, n1size); // n1 = (n0 * x3) + n1 
        for (y = '0'; y <= '9'; ++y) { // y = n1 // n2; n1 %= n2
            if (n1size < n2size) { // break once n1 < n2
                break; 
            } else if (n1size == n2size) {
                if (n1[n1size - 1] < n2[n1size - 1]) {
                    break;
                } else if (n1[n1size - 1] == n2[n1size - 1] && n1size > 1 && n1[n1size - 2] < n2[n1size - 2]) {
                    break;
                }
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
        }
        std::cout << y << std::flush;
        saxpy(n0, n0size, n0, n0size, x0, 0, 0);        // n0 *= x0
        saxpy(n1, n1size, n1, n1size, (x2 * 10), 0, 0); // n1 *= x2 * 10
        saxpy(n2, n2size, n2, n2size, x2, 0, 0);        // n2 *= x2
    }
    std::cout << std::endl << std::flush;
    free(buf);
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

./run 300000 > pi_50k.txt  647.86s user 1.43s system 98% cpu 10:58.73 total

(base) aman@mac pi % time ./run2 4992
Decimal digits of pi at position 4992: 132604721
./run2 4992  8.67s user 0.00s system 99% cpu 8.708 total
(base) aman@mac pi % time ./run2 10000
Decimal digits of pi at position 10000: 856672279
./run2 10000  33.49s user 0.03s system 99% cpu 33.807 total
(base) aman@mac pi % time ./run2 20000
Decimal digits of pi at position 20000: 820385653
./run2 20000  129.75s user 0.11s system 99% cpu 2:10.88 total
(base) aman@mac pi % time ./run2 40000
Decimal digits of pi at position 40000: 119299015
./run2 40000  504.35s user 0.33s system 99% cpu 8:28.43 total
(base) aman@mac pi % time ./run2 80000
Decimal digits of pi at position 80000: 694828436
./run2 80000  1967.89s user 0.97s system 96% cpu 33:59.64 total
*/