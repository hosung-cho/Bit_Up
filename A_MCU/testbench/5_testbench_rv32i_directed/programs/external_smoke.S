    .option norvc
    .section .text.init
    .globl _start

_start:
    addi x1, x0, 1
    sw   x1, 0x700(x0)

1:
    jal  x0, 1b
