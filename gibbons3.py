from tqdm import tqdm

N = 10000
assert N <= 369000000

pi = ""

n0 = 1
n1 = 0
n2 = 1
n3 = 0

for i in tqdm(range(1, N+1)):
    x3 = (5 * i) - 2
    
    n3  = n0 * x3
    n1 += n3
    y   = 0
    while n1 >= n2:
        y += 1
        n1 -= n2
        
    x0 = (10 * i) * ((2 * i) - 1); 
    x2 = (3 * ((3 * i) + 1) * ((3 * i) + 2));
    x1 = x2 * 10
    
    n0 *= (x0 // g)    
    n1 *= (x1 // g)
    n2 *= (x2 // g)
    
    assert(y < 10)
    pi += str(y)

print(pi)