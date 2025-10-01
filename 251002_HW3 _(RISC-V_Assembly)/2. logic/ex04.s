    .text
    .globl main
main:
    li   t0, 5
    li   t1, 5
    beq  t0, t1, L1       # 같으므로 점프 (taken)
    li   a0, 1            # 실행 안 됨
L1:
    li   a0, 99           # 실행됨
    ret
