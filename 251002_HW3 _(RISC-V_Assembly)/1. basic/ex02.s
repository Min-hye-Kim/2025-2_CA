    .data
A:  .word 1, 2, 3, 4
    .text
    .globl main
main:
    la   t0, A            # t0=&A[0]
    lw   t1, 0(t0)        # t1=1
    lw   t2, 4(t0)        # t2=2
    add  t3, t1, t2       # t3=3
    sw   t3, 8(t0)        # A[2]=3 (덮어씀, 원래 3이었음)
    ret
