    .data
B:  .byte 0x7F, 0x80      # 127, 128(부호비트 1)
    .text
    .globl main
main:
    la   t0, B
    lb   t1, 0(t0)        # t1=0x0000007F (127)
    lb   t2, 1(t0)        # t2=0xFFFFFF80 (-128)
    lbu  t3, 1(t0)        # t3=0x00000080 (128)
    ret
