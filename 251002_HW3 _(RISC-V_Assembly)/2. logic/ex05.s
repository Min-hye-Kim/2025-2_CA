    .data
N:  .word 5
A:  .word 3,4,5,6,7
    .text
    .globl main
main:
    la   t0, A
    lw   t1, N            # n
    li   t2, 0            # sum
    li   t3, 0            # i
loop:
    beq  t3, t1, done
    lw   t4, 0(t0)        # val=A[i]
    add  t2, t2, t4       # sum+=val
    addi t0, t0, 4        # ptr++
    addi t3, t3, 1        # i++
    j    loop
done:
    mv   a0, t2           # a0=합
    ret
