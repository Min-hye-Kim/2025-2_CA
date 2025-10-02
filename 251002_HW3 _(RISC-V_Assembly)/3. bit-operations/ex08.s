    .text
    .globl main
main:
    li   t0, -16          # 0xFFFFFFF0
    srai t1, t0, 2        # -4 (부호 유지)
    srli t2, t0, 2        # 0x3FFFFFFC (논리)
    slli t3, t0, 3        # 왼쪽 시프트
    ret
