// =======================================================================
// riscv_test.h for 2-bit Off-chip Serial RF MCU (SERV-based, RV32E Mode)
// =======================================================================

#ifndef _ENV_MY_MCU_E_H
#define _ENV_MY_MCU_E_H

// Replace unsupported fence instructions with nop
#define fence nop

#define RVTEST_RV32U                                                    \
  .macro init;                                                          \
  .endm

#define RVTEST_RV32M                                                    \
  .macro init;                                                          \
  .endm

#define RVTEST_RV32S                                                    \
  .macro init;                                                          \
  .endm

#define RVTEST_ENABLE_MACHINE
#define RVTEST_ENABLE_SUPERVISOR

// Initialize GPRs to 0 (x0~x15 only for RV32E)
#define INIT_XREG                                                       \
  li x1, 0;                                                             \
  li x2, 0;                                                             \
  li x3, 0;                                                             \
  li x4, 0;                                                             \
  li x5, 0;                                                             \
  li x6, 0;                                                             \
  li x7, 0;                                                             \
  li x8, 0;                                                             \
  li x9, 0;                                                             \
  li x10, 0;                                                            \
  li x11, 0;                                                            \
  li x12, 0;                                                            \
  li x13, 0;                                                            \
  li x14, 0;                                                            \
  li x15, 0;

#define RVTEST_CODE_BEGIN                                               \
        .section .text.init;                                            \
        .align  6;                                                      \
        .globl _start;                                                  \
        _start:                                                                 \
        /* Simple reset vector */                                       \
        j reset_vector;                                                 \
        .align 2;                                                       \
        write_tohost:                                                           \
        /* Write results directly to RESULT_BASE (0x700) */             \
        nop;                                                            \
        nop;                                                            \
        nop;                                                            \
        nop;                                                            \
        sw gp, 0x700(zero);                                             \
        self_loop:                                                              \
        j self_loop;                                                    \
        reset_vector:                                                           \
        INIT_XREG;                                                      \
        li TESTNUM, 0;                                                  \
        init;                                                           \
        /* Direct jump to test execution */                             \
        j 1f;                                                           \
        .align 2;                                                       \
        1:

#define RVTEST_CODE_END                                                 \
        /* End of test placeholder */                                   \
        nop;

#define TESTNUM gp
#define RVTEST_PASS                                                     \
        fence;                                                          \
        li TESTNUM, 1;                                                  \
        j write_tohost;

#define RVTEST_FAIL                                                     \
        fence;                                                          \
        1:      beqz TESTNUM, 1b;                                               \
        sll TESTNUM, TESTNUM, 1;                                        \
        or TESTNUM, TESTNUM, 1;                                         \
        j write_tohost;

#define RVTEST_DATA_BEGIN                                               \
        .data;                                                          \
        .align 4;                                                       \
        .global begin_signature; begin_signature:

#define RVTEST_DATA_END                                                 \
        .align 4;                                                       \
        .global end_signature; end_signature:

#endif // _ENV_MY_MCU_E_H
