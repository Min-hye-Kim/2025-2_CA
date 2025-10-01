    .text
    .globl main
main:
    li   a0, 10           # a0=10
    li   a1, 32           # a1=32
    add  a2, a0, a1       # a2=42
    addi a2, a2, -2       # a2=40
    sub  t0, a1, a0       # t0=22
    ret
