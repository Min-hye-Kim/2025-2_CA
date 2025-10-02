    .data
str: .asciiz "Hello, RISC-V!"
    .text
    .globl main
main:
    la   t0, str
    li   t1, 0
loop:
    lbu  t2, 0(t0)
    beq  t2, x0, done
    addi t1, t1, 1
    addi t0, t0, 1
    j    loop
done:
    mv   a0, t1           # length
    ret
