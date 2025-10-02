    .text
    .globl main
main:
    li   a0, 5            # n=5
    jal  ra, sum_to_n     # 호출
    # a0=15
    ret

sum_to_n:
    addi sp, sp, -16
    sw   ra, 12(sp)
    sw   s0, 8(sp)

    mv   s0, a0           # n
    li   t0, 1            # i
    li   t1, 0            # sum=0
loop:
    blt  s0, t0, done     # if (i>n) break
    add  t1, t1, t0
    addi t0, t0, 1
    j    loop
done:
    mv   a0, t1           # return sum
    lw   s0, 8(sp)
    lw   ra, 12(sp)
    addi sp, sp, 16
    ret
