# FPGA-hosted RV32I 시스템 구현 결과

## 1. 구현 목표

`C_SERV_ALU_FPGA`의 FPGA 부분을 단순 protocol bridge 수준에서 실제 RISC-V 프로그램을 실행할 수 있는 host system으로 확장했다. FPGA가 PC, instruction memory, data memory, register file, decoder, load/store/branch/jump control을 담당하고, ASIC `serv_exec_unit`은 ALU/compare 연산에 참여한다.

## 2. 추가된 RTL

### `src/rtl/fpga/serv_fpga_host.v`

FPGA-hosted RV32I 실행기의 핵심 top이다.

구성 요소:

- program counter
- instruction memory
- data memory
- 32-entry register file
- instruction fetch/decode FSM
- RV32I subset decoder
- ASIC request/response control
- load/store datapath
- branch/jump PC update
- halt/trap/debug outputs

ASIC과 직접 1-bit serial protocol을 말하지 않고 기존 `serv_exec_fpga_bridge`를 통해 32-bit operation request를 보낸다.

### `src/rtl/fpga/serv_fpga_top.v`

보드 연결 준비용 wrapper이다.

포함 내용:

- `clk`, `rst_n`
- ASIC command/response pin bundle
- debug LED bundle
- placeholder `debug_uart_tx`

실제 FPGA 보드 constraint는 사용하는 보드가 정해진 뒤 추가해야 한다.

## 3. 현재 지원 명령어

### ASIC execution unit을 사용하는 명령

다음 명령은 `serv_exec_fpga_bridge`를 거쳐 ASIC `serv_exec_unit`에서 처리한다.

- R-type: `ADD`, `SUB`, `AND`, `OR`, `XOR`, `SLT`, `SLTU`
- I-type: `ADDI`, `ANDI`, `ORI`, `XORI`, `SLTI`, `SLTIU`
- Branch compare: `BEQ`, `BNE`, `BLT`, `BGE`, `BLTU`, `BGEU`

### FPGA 내부에서 처리하는 명령

다음 명령은 FPGA host 내부에서 직접 처리한다.

- Shift: `SLL`, `SRL`, `SRA`, `SLLI`, `SRLI`, `SRAI`
- Load: `LB`, `LH`, `LW`, `LBU`, `LHU`
- Store: `SB`, `SH`, `SW`
- Upper/immediate PC: `LUI`, `AUIPC`
- Jump: `JAL`, `JALR`
- Halt: `EBREAK`

### 아직 미지원

- CSR instructions
- `ECALL`
- `FENCE`
- interrupt/exception handling
- formal RV32I compliance 전체 regression
- external instruction/data memory bus
- UART debug protocol
- 실제 FPGA board constraints

## 4. 실행 FSM

`serv_fpga_host`의 주요 FSM:

```text
ST_FETCH
  - pc 기반 instruction fetch

ST_DECODE
  - opcode/funct decode
  - direct FPGA execution 또는 ASIC request 준비

ST_ASIC_ISSUE
  - bridge req_valid/req_ready handshake

ST_ASIC_WAIT
  - ASIC result 대기
  - register writeback 또는 branch PC update

ST_HALT
  - EBREAK 종료

ST_TRAP
  - unsupported instruction 또는 invalid state
```

## 5. 새 테스트벤치

추가된 testbench:

```text
testbench/2_fpga_host_rv32i/tb_fpga_host_rv32i.v
```

Vivado 실행 스크립트:

```text
testbench/2_fpga_host_rv32i/sim/run_sim.tcl
testbench/2_fpga_host_rv32i/sim/run.sh
testbench/2_fpga_host_rv32i/sim/run.bat
```

실행:

```sh
cd MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/testbench/2_fpga_host_rv32i/sim
./run.sh
```

## 6. 테스트 프로그램

testbench는 hand-written RV32I 프로그램을 `serv_fpga_host` 내부 instruction memory에 로드한다.

검증한 흐름:

- `addi x1, x0, 5`
- `addi x2, x0, 7`
- `add x3, x1, x2`
- `sub x4, x3, x1`
- `and x5, x4, x2`
- `xor x6, x5, x1`
- `slt x7, x1, x2`
- `sltu x8, x2, x1`
- `beq` not-taken
- `bne` taken
- `sw x3, 0(x0)`
- `lw x10, 0(x0)`
- `jal`
- `ebreak`

즉, ALU immediate, ALU register, branch, store, load, jump, halt까지 한 번에 통과한다.

## 7. Vivado 시뮬레이션 결과

실행 결과:

```text
PASS x1 = 00000005
PASS x2 = 00000007
PASS x3 = 0000000c
PASS x4 = 00000007
PASS x5 = 00000007
PASS x6 = 00000002
PASS x7 = 00000001
PASS x8 = 00000000
PASS x9 = 00000011
PASS x10 = 0000000c
PASS x11 = 0000003c
PASS x12 = 00000000
PASS x13 = 00000044
PASS dmem[0] = 0c
PASS dmem[1] = 00
PASS dmem[2] = 00
PASS dmem[3] = 00
TB PASS
```

이 결과는 FPGA host가 실제 instruction stream을 fetch/decode/execute하고, ALU/compare 연산은 ASIC execution unit을 통해 처리했음을 확인한다.

## 8. 현재 구현의 의미

이제 `C_SERV_ALU_FPGA`는 다음 상태까지 왔다.

- ASIC execution unit 구현 완료
- ASIC qflow P&R 완료
- FPGA-side protocol bridge 구현 완료
- FPGA-hosted RV32I mini-system 구현 완료
- RV32I smoke program 실행 완료

따라서 “FPGA가 나머지를 담당하고 ASIC ALU가 실제 RISC-V 실행에 참여한다”는 기본 데모 구조는 구현되었다.

## 9. 다음 단계

아직 MPW/보드 데모 관점에서 남은 작업은 다음이다.

1. FPGA host의 instruction/data memory를 외부 hex 초기화 방식으로 정리
2. 더 큰 RV32I directed regression 추가
3. CSR/ECALL/FENCE를 trap 또는 minimal handling으로 명확히 정의
4. UART 또는 GPIO 기반 pass/fail 출력 추가
5. 실제 FPGA 보드 pin constraint 작성
6. ASIC chip package/pad pinout과 FPGA top pin mapping 확정
7. post-route ASIC netlist와 FPGA host를 연결한 mixed simulation
8. 실제 칩 bring-up용 timeout/recovery/debug protocol 추가
