# riscv-tests RV32UI 회귀 구현 및 현재 이슈

## 목적

PYNQ-Z2(Zynq-7020) FPGA host + 1-bit serial ASIC execution unit 구조가 directed test뿐 아니라 RISC-V 공식 `riscv-tests`의 RV32UI 명령어 테스트를 통과하는지 확인하기 위한 회귀 환경을 추가했다.

## 추가한 회귀 환경

- 위치: `testbench/4_fpga_host_riscv_tests/`
- 공식 테스트 소스 참조:
  - `../A_MCU/testbench/7_testbench_rv32i_compliance/riscv-tests`
- 빌드 스크립트:
  - `sim/build_compliance.sh`
- Vivado 실행 스크립트:
  - `sim/run_sim.tcl`
  - `sim/run.sh`
  - `sim/run.bat`
- 전체 회귀 스크립트:
  - `sim/run_compliance.sh`
- 테스트벤치:
  - `tb_fpga_host_riscv_tests.v`

## 테스트 범위

RV32UI 37개 테스트를 대상으로 한다.

`add addi and andi auipc beq bge bgeu blt bltu bne jal jalr lb lbu lh lhu lui lw or ori sb sh sll slli slt slti sltiu sltu sra srai srl srli sub sw xor xori`

## 구현 방식

- `/opt/riscv32i/bin/riscv32-unknown-elf-*` 툴체인으로 공식 `.S` 테스트를 ELF/BIN/HEX로 변환한다.
- `my_mcu_env/riscv_test.h`는 bare-metal 환경에 맞춰 pass/fail 결과를 memory-mapped mailbox에 store한다.
- 현재 mailbox 주소는 `0x100`이다.
- 테스트벤치는 프로그램 HEX를 instruction memory와 data memory에 mirror하여 단순 unified-memory 형태를 흉내낸다.
- `$readmemh` 런타임 로딩 대신 `run_sim.tcl`이 `program_init.vh`를 생성하여 compile-time 초기화문으로 삽입한다.

## 최종 확인 결과

- `./build_compliance.sh`: 37개 테스트 모두 빌드 완료.
- sandbox 내부 `PROGRAM_HEX=generated/add/program.hex ./run.sh`: xsim simulate 단계에서 `ERROR: unexpected exception when evaluating tcl command` 발생.
- sandbox 밖 동일 명령: `add` 테스트 `TB PASS`.
- sandbox 밖 `./run_compliance.sh`: RV32UI 37개 모두 PASS.

## RV32UI 회귀 결과

- TOTAL: 37
- PASS: 37
- FAIL: 0
- ELAPSED: 501s

통과한 테스트:

`add addi and andi auipc beq bge bgeu blt bltu bne jal jalr lb lbu lh lhu lui lw or ori sb sh sll slli slt slti sltiu sltu sra srai srl srli sub sw xor xori`

## 해결한 문제

초기 회귀에서 `lb/lbu/lh/lhu/lw/sb/sh/sw` 8개 테스트가 실패했다. 원인은 RTL load/store 구현이 아니라 compliance harness 축소 과정에서 생긴 data memory map 불일치였다.

- 공식 load/store 테스트는 `.data` section을 `0x300` 이후, 특히 `lw` 기준 `0x380` 부근에 배치한다.
- 테스트 코드 내부에서는 `lw`가 주소 896(`0x380`)을 읽는다.
- harness를 줄이는 과정에서 `DMEM_BYTES=512`와 mailbox `0x100` 설정을 사용했기 때문에 load/store 테스트가 유효한 data 영역을 접근하지 못했다.
- `DMEM_BYTES=2048`, pass/fail mailbox `0x700`으로 복구한 뒤 load/store 8개 단독 테스트와 전체 RV32UI 회귀가 모두 PASS했다.

## 관찰한 내용

- 기존 directed testbench(`testbench/3_fpga_host_rv32i_directed/sim/run.sh`)는 동일 Vivado 2024.2 환경에서 정상 PASS한다.
- sandbox 내부에서는 새 compliance TB가 xsim snapshot load 단계에서 예외를 낸다.
- sandbox 밖에서는 동일 테스트가 실행되므로, 해당 예외는 RTL/TB 기능 문제라기보다 Codex sandbox와 Vivado/xsim 실행 환경의 호환성 문제로 판단한다.
- 이전 기능 실패처럼 보였던 load/store 8개는 harness memory map 문제였고, 수정 후 공식 RV32UI에서 모두 통과했다.
- ALU, immediate, compare, branch, jump, shift, load/store 계열 모두 공식 RV32UI 테스트에서 통과했다.

## 다음 조치

1. Codex sandbox 내부에서는 Vivado/xsim 결과를 신뢰하지 말고, 회귀 검증 시 sandbox 밖 실행 권한으로 `./run.sh` 또는 `./run_compliance.sh`를 사용한다.
2. 이후 PYNQ-Z2용 FPGA wrapper/XDC 및 ASIC 28핀 인터페이스와 연결해 board-level bring-up 순서로 진행한다.
