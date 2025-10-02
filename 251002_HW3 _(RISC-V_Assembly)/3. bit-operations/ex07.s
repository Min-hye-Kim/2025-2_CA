    .text
    .globl main
main:
    li   t0, 0b1010       # 10
    li   t1, 0b1000       # bit3 mask (8)
    or   t2, t0, t1       # set: 10|8 = 10 (이미 1)
    li   t5, -9           # ~0b1000
    and  t3, t0, t5       # clear: 10 & ~8 = 2
    xor  t4, t0, t1       # toggle: 10 ^ 8 = 2
    ret
