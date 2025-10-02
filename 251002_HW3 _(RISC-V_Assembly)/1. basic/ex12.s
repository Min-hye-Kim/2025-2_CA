    .text
    .globl main
main:
    lui  t0, 0x12345      # 상위 20비트 로드 → t0=0x12345000
    addi t0, t0, 0x678    # 하위 12비트 더하기 → 0x12345678
    ret
