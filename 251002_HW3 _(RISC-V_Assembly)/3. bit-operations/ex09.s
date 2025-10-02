    .text
    .globl main
main:
    li   t0, -1           # 0xFFFFFFFF
    li   t1, 1
    slt  t2, t0, t1       # 1  (-1 < 1)
    sltu t3, t0, t1       # 0  (0xFFFFFFFF > 1)
    ret
