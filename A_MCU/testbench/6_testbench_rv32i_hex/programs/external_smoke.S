    .option norvc
    .section .text.init
    .globl _start

    .macro SETTLE4
        nop
        nop
        nop
        nop
    .endm

    .macro CHECK_SW reg, addr
        SETTLE4
        sw \reg, \addr(x0)
    .endm

_start:
    # ----------------------------------------------------
    # 1. R-type 및 Shift-Immediate 연산 검증
    # ----------------------------------------------------
    addi x1, x0, -100
    addi x2, x0, 200

    # ADD
    add x3, x1, x2
    CHECK_SW x3, 0x700     # 기대값: 100 (0x00000064)

    # SUB
    sub x4, x1, x2
    CHECK_SW x4, 0x704     # 기대값: -300 (0xfffffed4)

    # SLL
    sll x5, x1, x2
    CHECK_SW x5, 0x708     # 기대값: 0xffff9c00

    # SLT
    slt x6, x1, x2
    CHECK_SW x6, 0x70c     # 기대값: 1 (0x00000001)

    # SLTU
    sltu x7, x1, x2
    CHECK_SW x7, 0x710     # 기대값: 0 (0x00000000)

    # XOR
    xor x8, x1, x2
    CHECK_SW x8, 0x714     # 기대값: 0xffffff54

    # OR
    or  x9, x1, x2
    CHECK_SW x9, 0x718     # 기대값: 0xffffffdc

    # AND
    and x10, x1, x2
    CHECK_SW x10, 0x71c    # 기대값: 0x00000088

    # SRL
    srl x11, x1, x2
    CHECK_SW x11, 0x720    # 기대값: 0x00ffffff

    # SRA
    sra x12, x1, x2
    CHECK_SW x12, 0x724    # 기대값: 0xffffffff

    # SLLI
    slli x13, x1, 20
    CHECK_SW x13, 0x728    # 기대값: 0xf9c00000

    # SRLI
    srli x14, x1, 20
    CHECK_SW x14, 0x72c    # 기대값: 0x00000fff

    # SRAI
    srai x15, x1, 20
    CHECK_SW x15, 0x730    # 기대값: 0xffffffff

    # ----------------------------------------------------
    # 2. I-type Arithmetic 연산 검증
    # ----------------------------------------------------
    # ADDI
    addi x3, x1, -200
    CHECK_SW x3, 0x734     # 기대값: -300 (0xfffffed4)

    # SLTI
    slti x4, x1, -200
    CHECK_SW x4, 0x738     # 기대값: 0 (0x00000000)

    # SLTIU
    sltiu x5, x1, -200
    CHECK_SW x5, 0x73c     # 기대값: 0 (0x00000000)

    # XORI
    xori x6, x1, -200
    CHECK_SW x6, 0x740     # 기대값: 164 (0x000000a4)

    # ORI
    ori  x7, x1, -200
    CHECK_SW x7, 0x744     # 기대값: -68 (0xffffffbc)

    # ANDI
    andi x8, x1, -200
    CHECK_SW x8, 0x748     # 기대값: -232 (0xffffff18)

    # ----------------------------------------------------
    # 3. Load & Store 연산 검증 (Subword 포함)
    # ----------------------------------------------------
    # 데이터 준비
    lui  x20, 0x00000
    SETTLE4
    addi x20, x20, 0x600  # x20 = 0x00000600
    SETTLE4
    # memory[0x600] = 0xdeadbeef is provided by generated/program.hex.

    # LW
    lw   x2, 0(x20)
    CHECK_SW x2, 0x74c     # 기대값: 0xdeadbeef

    # LH
    lh   x3, 0(x20)
    CHECK_SW x3, 0x750     # 기대값: 0xffffbeef

    # LH offset 2
    lh   x5, 2(x20)
    CHECK_SW x5, 0x754     # 기대값: 0xffffdead

    # LB offset 0
    lb   x7, 0(x20)
    CHECK_SW x7, 0x758     # 기대값: 0xffffffef

    # LB offset 1
    lb   x8, 1(x20)
    CHECK_SW x8, 0x75c     # 기대값: 0xffffffbe

    # LB offset 2
    lb   x9, 2(x20)
    CHECK_SW x9, 0x760     # 기대값: 0xffffffad

    # LB offset 3
    lb   x10, 3(x20)
    CHECK_SW x10, 0x764    # 기대값: 0xffffffde

    # LHU offset 0
    lhu  x11, 0(x20)
    CHECK_SW x11, 0x768    # 기대값: 0x0000beef

    # LHU offset 2
    lhu  x13, 2(x20)
    CHECK_SW x13, 0x76c    # 기대값: 0x0000dead

    # LBU offset 0
    lbu  x15, 0(x20)
    CHECK_SW x15, 0x770    # 기대값: 0x000000ef

    # LBU offset 1
    lbu  x16, 1(x20)
    CHECK_SW x16, 0x774    # 기대값: 0x000000be

    # LBU offset 2
    lbu  x17, 2(x20)
    CHECK_SW x17, 0x778    # 기대값: 0x000000ad

    # LBU offset 3
    lbu  x18, 3(x20)
    CHECK_SW x18, 0x77c    # 기대값: 0x000000de

    # Store subword 테스트용 데이터 클리어
    sw   x0, 0x640(x0)
    sw   x0, 0x644(x0)
    sw   x0, 0x648(x0)
    sw   x0, 0x650(x0)

    # LUI & Store
    lui  x21, 0x12345     # x21 = 0x12345000
    addi x21, x21, 0x678  # x21 = 0x12345678
    
    # SW
    sw   x21, 0x640(x0)   # memory[0x640] = 0x12345678

    # SH
    sh   x21, 0x644(x0)   # memory[0x644] = 0x00005678

    # SH
    sh   x21, 0x64a(x0)   # memory[0x648] = 0x56780000

    # SB
    sb   x21, 0x650(x0)
    sb   x21, 0x651(x0)
    sb   x21, 0x652(x0)
    sb   x21, 0x653(x0)   # memory[0x650] = 0x78787878

    # ----------------------------------------------------
    # 4. U-type 연산 검증
    # ----------------------------------------------------
    # LUI
    lui  x22, 0x7fff0     # x22 = 0x7fff0000
    CHECK_SW x22, 0x780    # 기대값: 0x7fff0000

    # AUIPC
pc_label:
    auipc x23, 0x7fff0    # x23 = PC + 0x7fff0000
    CHECK_SW x23, 0x784    # 기대값: 0x7fff0000 + PC_at_auipc

    # ----------------------------------------------------
    # 5. Branch 연산 검증 (모든 조건 분기)
    # ----------------------------------------------------
    addi x1, x0, 100
    addi x2, x0, 100
    addi x24, x0, 0

    # BEQ
    beq  x1, x2, b_eq_taken
    addi x24, x0, 1
b_eq_taken:
    addi x24, x24, 2
    CHECK_SW x24, 0x788    # 기대값: 2

    # BNE
    addi x2, x0, 200
    addi x24, x0, 0
    bne  x1, x2, b_ne_taken
    addi x24, x0, 1
b_ne_taken:
    addi x24, x24, 3
    CHECK_SW x24, 0x78c    # 기대값: 3

    # BLT
    addi x24, x0, 0
    blt  x1, x2, b_lt_taken
    addi x24, x0, 1
b_lt_taken:
    addi x24, x24, 4
    CHECK_SW x24, 0x790    # 기대값: 4

    # BGE
    addi x1, x0, 200
    addi x2, x0, 100
    addi x24, x0, 0
    bge  x1, x2, b_ge_taken
    addi x24, x0, 1
b_ge_taken:
    addi x24, x24, 5
    CHECK_SW x24, 0x794    # 기대값: 5

    # BLTU
    addi x1, x0, 1
    addi x2, x0, -1
    addi x24, x0, 0
    bltu x1, x2, b_ltu_taken
    addi x24, x0, 1
b_ltu_taken:
    addi x24, x24, 6
    CHECK_SW x24, 0x798    # 기대값: 6

    # BGEU
    addi x1, x0, -1
    addi x2, x0, 1
    addi x24, x0, 0
    bgeu x1, x2, b_geu_taken
    addi x24, x0, 1
b_geu_taken:
    addi x24, x24, 7
    CHECK_SW x24, 0x79c    # 기대값: 7

    # ----------------------------------------------------
    # 6. JAL & JALR 연산 검증
    # ----------------------------------------------------
    # JAL
jal_label:
    jal  x25, jal_target
    addi x26, x0, 1
jal_target:
    addi x27, x0, 9
    CHECK_SW x25, 0x7a0    # x25: jal_label + 4
    CHECK_SW x26, 0x7a4    # x26: 0
    CHECK_SW x27, 0x7a8    # x27: 9

    # JALR
    # JALR 대상 주소를 링킹 시점에 획득하기 위해 la 심볼 로드 사용
    la   x28, jalr_target
jalr_label:
    jalr x29, 0(x28)
    addi x30, x0, 1
jalr_target:
    addi x31, x0, 10
    CHECK_SW x29, 0x7ac    # x29: jalr_label + 4
    CHECK_SW x30, 0x7b0    # x30: 0
    CHECK_SW x31, 0x7b4    # x31: 10

    # 무한루프로 시뮬레이션 끝마침
1:
    jal  x0, 1b
