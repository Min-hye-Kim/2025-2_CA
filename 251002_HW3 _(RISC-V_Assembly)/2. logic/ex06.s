    .data
LEN: .word 5
B:   .word -1, 22, 5, 42, 7
    .text
    .globl main
main:
    la   t0, B
    lw   t5, LEN
    lw   t1, 0(t0)        # max=B[0]
    addi t0, t0, 4
    li   t2, 1
loop:
    beq  t2, t5, done
    lw   t3, 0(t0)
    blt  t1, t3, update   # if (max < val)
    j    cont
update:
    mv   t1, t3
cont:
    addi t0, t0, 4
    addi t2, t2, 1
    j    loop
done:
    mv   a0, t1
    ret
