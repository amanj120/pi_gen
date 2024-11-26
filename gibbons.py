from tqdm import tqdm

s = []
k = 1<<9

def put(n: int):
    s.append(str(n))

def swap(n0: int, n1: int):
    t = n0
    n0 = n1
    n1 = t

# _nx registers need O(n) space
_n0, _n1, _n2, _n3, _n4, _n5 = 1, 0, 1, 0, 0, 0
# _ix registers need O(1) space
_i0, _i1, _i2, _i3 = 1, 0, 0, 0

for _ in tqdm(range(k)):
    # dbg = [len(bin(d)) - 2 for d in [_n0, _n1, _n2, _n3, _n4, _n5, _i0, _i1, _i2, _i3]]
    # print(_i0, ": ", dbg)
    _i1 = _i0 + 1
    _i2 = _i0 * 27
    _i3 = _i1 * _i2
    _i2 = _i3 + 6
    _n3 = _n2 * _i2
    _i3 = _i0 * 5
    _i1 = _i3 - 2
    _n4 = _n0 * _i1
    _n5 = _n4 + _n1
    _n4 = _n5 * _i2
    _i2 = _i0 * 2
    _i3 = _i2 - 1
    _i2 = _i3 * _i0
    _n5 = _n0 * _i2
    _n0 = _n5
    _n1 = _n4
    while _n1 > 0:
        _n2 = _n0
        if _n1 > _n0:
            _n0 = _n1
            _n1 = _n2
        else:
            _n0 = _n1
            _n1 = _n2 % _n0
    _n1 = _n3
    while _n1 > 0:
        _n2 = _n0
        if _n1 > _n0:
            _n0 = _n1
            _n1 = _n2
        else:
            _n0 = _n1
            _n1 = _n2 % _n0
    _n2 = _n3 // _n0
    _n3 = _n4 // _n0
    _n4 = _n5 // _n0
    _i2 = _i0 * 27
    _i1 = _i0 + 1
    _i0 = _i2 + 15
    _n5 = _n4 * _i0
    _i0 = _i1
    _n1 = _n4 * 5
    _n0 = _n1 * 2
    _n4 = _n3 * 5
    _n3 = _n5 + _n4
    _n5 = _n2 * 5
    _n1 = _n3 // _n5
    _n3 = _n5 * _n1
    _n5 = _n4 - _n3
    put(_n1)
    _n1 = _n5 * 2

print("".join(s))