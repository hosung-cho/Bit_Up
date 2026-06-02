// =======================================================================
// riscv_test.h for 2-bit Off-chip Serial RF MCU (SERV-based) - Dhrystone CRT
// =======================================================================

#ifndef _ENV_MY_MCU_H
#define _ENV_MY_MCU_H

// Replace unsupported fence instructions with nop
#define fence nop

#define RVTEST_CODE_BEGIN                                               \
        .section .text.init;                                            \
        .globl _start;                                                  \
_start:                                                                 \
        /* 1. Register Initialization */                               \
        li x1, 0;                                                       \
        li x2, 0;                                                       \
        /* Set Stack Pointer (sp) to 2KB physical memory end (0x800) */ \
        li sp, 0x800;                                                   \
        li gp, 0;                                                       \
        li tp, 0;                                                       \
        li t0, 0;                                                       \
        li t1, 0;                                                       \
        li t2, 0;                                                       \
        li s0, 0;                                                       \
        li s1, 0;                                                       \
        li a0, 0;                                                       \
        li a1, 0;                                                       \
        li a2, 0;                                                       \
        li a3, 0;                                                       \
        li a4, 0;                                                       \
        li a5, 0;                                                       \
        li a6, 0;                                                       \
        li a7, 0;                                                       \
        li s2, 0;                                                       \
        li s3, 0;                                                       \
        li s4, 0;                                                       \
        li s5, 0;                                                       \
        li s6, 0;                                                       \
        li s7, 0;                                                       \
        li s8, 0;                                                       \
        li s9, 0;                                                       \
        li s10, 0;                                                      \
        li s11, 0;                                                      \
        li t3, 0;                                                       \
        li t4, 0;                                                       \
        li t5, 0;                                                       \
        li t6, 0;                                                       \
        /* 2. Jump to C Main Function */                                \
        jal main;                                                       \
        /* 3. Write return code a0 (1 = success, others = checksum fail) to 0x700 */ \
        sw a0, 0x700(zero);                                             \
self_loop:                                                              \
        j self_loop;

#define RVTEST_CODE_END
#define RVTEST_DATA_BEGIN
#define RVTEST_DATA_END

#endif // _ENV_MY_MCU_H
