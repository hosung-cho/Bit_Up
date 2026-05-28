# RV32I directed regression 확장 결과

## 개요

FPGA-hosted RV32I 시스템의 smoke test를 보완하기 위해 별도 directed regression 테스트벤치를 추가했다. 기존 `testbench/2_fpga_host_rv32i`는 보존하고, 더 넓은 명령 커버리지를 갖는 `testbench/3_fpga_host_rv32i_directed`를 신규 구성했다.

## 추가 파일

- `testbench/3_fpga_host_rv32i_directed/tb_fpga_host_rv32i_directed.v`
- `testbench/3_fpga_host_rv32i_directed/sim/run_sim.tcl`
- `testbench/3_fpga_host_rv32i_directed/sim/run.sh`
- `testbench/3_fpga_host_rv32i_directed/sim/run.bat`

## 검증 대상

### ASIC execution unit 경유 명령

- R-type 산술/논리: `ADD`, `SUB`, `AND`, `OR`, `XOR`
- R-type 비교: `SLT`, `SLTU`
- I-type 산술/논리/비교: `ADDI`, `ANDI`, `ORI`, `XORI`, `SLTI`, `SLTIU`
- Branch 비교: `BEQ`, `BNE`, `BLT`, `BGE`, `BLTU`, `BGEU`

### FPGA host local 실행 명령

- Shift: `SLL`, `SRL`, `SRA`, `SLLI`, `SRLI`, `SRAI`
- Load/store: `LB`, `LBU`, `LH`, `LHU`, `LW`, `SB`, `SH`, `SW`
- Upper immediate: `LUI`, `AUIPC`
- Jump: `JAL`, `JALR`
- Halt: `EBREAK`

## Directed program 구성

테스트 프로그램은 하나의 RV32I 명령 시퀀스로 구성했다. 주요 확인 항목은 다음과 같다.

- signed/unsigned 비교 차이 확인
- 음수 immediate 및 sign extension 확인
- shift amount 및 arithmetic right shift 확인
- byte/halfword load의 signed/unsigned 확장 확인
- store 이후 little-endian memory byte 결과 확인
- taken/not-taken branch가 의도한 명령을 실행 또는 skip하는지 확인
- `JAL`, `JALR`의 link register와 target PC 확인
- `LUI`, `AUIPC`의 immediate/PC-relative 결과 확인

## 실행 방법

```bash
cd MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/testbench/3_fpga_host_rv32i_directed/sim
./run.sh
```

RTL Verilog 시뮬레이션은 프로젝트 규칙에 맞춰 `sim/run_sim.tcl`, `sim/run.sh`, `sim/run.bat`을 사용해 Vivado batch mode로 수행한다.

## Vivado 시뮬레이션 결과

실행 환경:

- Tool: Vivado v2024.2
- Top: `tb_fpga_host_rv32i_directed`
- 실행 일시: 2026-05-29 00:10 KST

결과:

```text
TB PASS
```

대표 최종 체크:

- `x1 = ffffffff`
- `x3 = 0000005a`
- `x5 = 000000bc`
- `x7 = 000000cc`
- `x11 = 00000100`
- `x23 = ffffff80`
- `x24 = 00000080`
- `x27 = 0000ffff`
- `x29 = 12345000`
- `x30 = 000010b4`
- `dmem[64] = 80`
- `dmem[66:67] = ff ff`
- `dmem[68:71] = 00 01 00 00`

## 현재 의미

이번 regression은 SERV-compatible ASIC execution unit과 FPGA host/bridge 조합이 RV32I의 핵심 integer datapath, branch, memory, jump 흐름을 함께 처리할 수 있음을 확인한다. 아직 공식 RISC-V compliance test나 랜덤 instruction stream 검증은 아니므로, 다음 단계에서는 자동화된 회귀 실행과 trap/unsupported instruction negative test를 추가하는 것이 좋다.
