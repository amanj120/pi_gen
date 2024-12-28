#include <iostream>
#include <format>

static_assert(sizeof(long) == 8, "long has wrong precision!");

int main(int argc, char* argv[]) {
    if (argc != 2) {
        std::cerr << "argc != 2" << std::endl;
        return -1;
    }

    const long digits = std::stoull(argv[1]);
    // 2**32 - 1 = 4294967295
    const long big = 4294967000;
    const long extract = big / 1000;

    std::cout << "3" << std::flush;

    long n, a, k, N, s, m, vmax, alpha, b, A, v, tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, k2;

    for (n = 1; n <= digits; n += 3) {
        N = ((n + 30) * 10) / 3;
        s = 0;
        for (a = 3; a <= (2 * N); a += 2) {
            tmp1 = 1;
            for (tmp0 = 3; tmp0 < a; tmp0 += 2) {
                if (tmp0 * tmp0 > a) {
                    break;
                }
                if (a % tmp0 == 0) {
                    tmp1 = 0;
                    break;
                }
            }

            if (tmp1 == 0) {
                continue;
            }

            m = 1;
            vmax = 0;

            while (m * a < (2 * N)) {
                m *= a;
                vmax += 1;
            }

            alpha = 0;
            b = 1;
            A = 1;
            v = 0;

            for (k = 1; k <= N; k++) {
                /*
                1) find multiplicity of `a` in `k`, v_k
                2) v -= v_k
                3) b = (b * a^(v_k)) % m
                */
                tmp0 = k;
                while (tmp0 % a == 0) {
                    tmp0 /= a;
                    v -= 1;
                }
                b = (tmp0 * b) % m;

                /*
                1) find multiplicity of `a` in `2k - 1`, v_2k
                2) v += v_2k
                3) A = (A * a^(v_2k)) % m
                */
                tmp0 = (2 * k) - 1;
                while (tmp0 % a == 0) {
                    tmp0 /= a;
                    v += 1;
                }
                A = (tmp0 * A) % m;

                if (v > 0) {
                    k2 = (k * b) % m;
                    // modinv
                    tmp1 = m;
                    tmp4 = A;
                    tmp5 = 1;
                    tmp3 = 0;

                    // Euclidean algo for A^-1 mod m
                    while (tmp4 > 1) {
                        tmp2 = tmp4 / tmp1;
                        tmp0 = tmp1;

                        tmp1 = tmp4 % tmp1;
                        tmp4 = tmp0;
                        tmp0 = tmp3;

                        tmp3 = tmp5 - tmp2 * tmp3;
                        tmp5 = tmp0;
                    }

                    // Make x positive
                    if (tmp5 < 0) {
                        tmp5 += m;
                    }

                    k2 = (k2 * tmp5) % m;

                    // k2 *= (a^(vmax - v)) % m
                    tmp1 = a;
                    tmp0 = vmax - v;
                    while (tmp0 != 0) {
                        if ((tmp0 & 1) == 1) {
                            k2 *= tmp1;
                            k2 %= m;
                        }
                        tmp1 *= tmp1;
                        tmp1 %= m;
                        tmp0 >>= 1;
                    }

                    alpha = (alpha + k2) % m;
                }
            }

            tmp1 = 10;
            tmp2 = 1;
            tmp0 = (n - 1);
            while (tmp0 != 0) {
                if ((tmp0 & 1) == 1) {
                    tmp2 *= tmp1;
                    tmp2 %= m;
                }
                tmp1 *= tmp1;
                tmp1 %= m;
                tmp0 >>= 1;
            }
            alpha = (alpha * tmp2) % m;
            s = (s + ((alpha * big)/m)) % big;
        }
        std::cout << std::format("{:03d}", (s / extract)) << std::flush;
    }
    std::cout << std::endl;
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