import sys
import subprocess

m64 = (1 << 64) - 1

def to_int64(x):
    if x == 0:
        return [0]
    l = []
    while x != 0:
        l.append(x & m64)
        x = x >> 64
    return l

def to_arg(x):
    t = to_int64(x)
    return ",".join([str(ti) for ti in t])

# Version 7: register assign
s = ""
k = int(sys.argv[1])

u0 = 1
u1 = 0
u3 = 1

util = "/Users/aman/Documents/cpp_projects/pi/utils"

for i in range(1, k+1):
    # print(i)
    x3 = (3 * ((3 * i) + 1) * ((3 * i) + 2)) >> 1
    x1 = ((5 * i) - 2)
    x0 = i * ((2 * i) - 1)
    x2 = (27 * i) - 12

    if ((u0 & m64 == 0) and (u1 & m64 == 0)and (u3 & m64 == 0)):
        u0 >>= 64
        u1 >>= 64
        u3 >>= 64

    if i == 17837:
        print("u3= ", to_arg(u3))
        print("x3= ", to_arg(x3))
        cpp = subprocess.check_output([util, "muleq", to_arg(u3), to_arg(x3)]).decode("ascii").strip()
        u3 *= x3
        print("u3= ", to_arg(u3))
        print("cpp= ", cpp)
        assert to_arg(u3) == cpp
    else:
        u3 *= x3


    # cpp = subprocess.check_output([util, "mul", to_arg(u0), to_arg(x1)]).decode("ascii").strip()
    v0 = u0 * x1
    # assert to_arg(v0) == cpp

    # cpp = subprocess.check_output([util, "sumeq", to_arg(u1), to_arg(v0)]).decode("ascii").strip()
    u1 += v0
    # assert to_arg(u1) == cpp

    # cpp = subprocess.check_output([util, "muleq", to_arg(u1), to_arg(x3)]).decode("ascii").strip()
    u1 *= x3
    # assert to_arg(u1) == cpp
    
    # cpp = subprocess.check_output([util, "muleq", to_arg(u1), to_arg(10)]).decode("ascii").strip()
    u1 *= 10
    # assert to_arg(u1) == cpp

    # cpp = subprocess.check_output([util, "mul", to_arg(u0), to_arg(x0)]).decode("ascii").strip()
    v0 = u0 * x0
    # assert to_arg(v0) == cpp

    # cpp = subprocess.check_output([util, "mul", to_arg(v0), to_arg(5)]).decode("ascii").strip()
    u0 = v0 * 5
    # assert to_arg(u0) == cpp

    # cpp = subprocess.check_output([util, "muleq", to_arg(v0), to_arg(x2)]).decode("ascii").strip()
    v0 *= x2
    # assert to_arg(v0) == cpp

    # cpp = subprocess.check_output([util, "sumeq", to_arg(v0), to_arg(u1)]).decode("ascii").strip()
    v0 += u1
    # assert to_arg(v0) == cpp

    # cpp = subprocess.check_output([util, "mul", to_arg(u3), to_arg(10)]).decode("ascii").strip()
    v1 = u3 * 10
    # assert to_arg(v1) == cpp
    
    y = 0
    while v0 >= v1:
        # cpp = subprocess.check_output([util, "diffeq", to_arg(v0), to_arg(v1)]).decode("ascii").strip()
        v0 -= v1
        # assert to_arg(v0) == cpp

        # cpp = subprocess.check_output([util, "diffeq", to_arg(u1), to_arg(v1)]).decode("ascii").strip()
        u1 -= v1
        # assert to_arg(u1) == cpp

        y += 1
    s += str(y)

print(s)

# assert s == pi_ref[:len(s)]