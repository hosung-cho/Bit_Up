# SERV-compatible Execution Unit 상세 사양서

## 1. 목적

`SERV-compatible execution unit`은 `C_SERV_ALU_FPGA` 프로젝트에서 ASIC으로 제작하는 최소 실행 유닛이다. 전체 RISC-V MCU를 ASIC에 넣는 대신, FPGA가 프로그램 실행 환경을 맡고 ASIC은 SERV의 핵심 산술/논리/비교 연산에 참여하도록 설계했다.

이 블록의 목적은 다음과 같다.

- SERV 원본의 bit-serial ALU 구조를 실제 ASIC 핵심 로직으로 사용한다.
- FPGA-hosted RISC-V 시스템이 ASIC execution unit을 호출해 실제 연산 결과를 받는다.
- instruction fetch, decode, register file, memory, CSR, bus, peripheral은 ASIC에서 제외한다.
- 1mm x 1mm MPW 면적 제약 안에 들어가는 작고 검증 가능한 실리콘 블록을 만든다.

## 2. 설계 위치

전체 시스템 분할은 아래와 같다.

```text
FPGA
  - instruction fetch
  - instruction decode
  - register file
  - data/instruction memory
  - PC/branch sequencing
  - load/store/jump/CSR/system control
  - 32-bit request/response bridge

ASIC
  - SERV-compatible execution unit
  - operand latch
  - original SERV 1-bit ALU instance
  - 32-cycle bit-serial execute sequencer
  - result latch
  - 1-bit command/response interface
```

ASIC top module은 `src/rtl/asic/serv_exec_unit.v`의 `serv_exec_unit`이다. FPGA-side protocol bridge는 `src/rtl/fpga/serv_exec_fpga_bridge.v`의 `serv_exec_fpga_bridge`이다.

## 3. 핵심 역할

`serv_exec_unit`은 RISC-V 명령어 전체를 직접 실행하지 않는다. FPGA가 instruction을 decode한 뒤 필요한 연산을 `cmd_op`로 변환해 ASIC에 보낸다. ASIC은 두 32-bit operand를 1-bit serial로 수신하고, 내부에서도 SERV 방식에 맞춰 1-bit씩 32cycle 동안 연산한 뒤 결과를 다시 1-bit serial로 반환한다.

즉, 이 블록은 CPU가 아니라 `SERV-compatible ALU/execution accelerator`이다.

## 4. ASIC Top Interface

### 4.1 Clock and Reset

| Signal | Direction | Width | Description |
| --- | --- | ---: | --- |
| `clk` | input | 1 | ASIC execution unit clock |
| `rst_n` | input | 1 | active-low synchronous reset |

리셋은 동기 리셋이다. ETRI 0.5um std-cell library에서 비동기 reset/set 플롭인 `DFFSR` 면적이 크기 때문에, 최종 netlist에서 `DFFSR` 유입을 피하기 위해 동기 리셋 구조로 작성했다.

### 4.2 Command Channel

| Signal | Direction | Width | Description |
| --- | --- | ---: | --- |
| `cmd_valid` | input | 1 | FPGA가 command bit을 제공함 |
| `cmd_ready` | output | 1 | ASIC이 command bit을 받을 수 있음 |
| `cmd_op` | input | 4 | operation code |
| `cmd_a` | input | 1 | operand A bit |
| `cmd_b` | input | 1 | operand B bit |
| `cmd_last` | input | 1 | 현재 bit이 마지막 command bit임 |

Command transfer는 `cmd_valid & cmd_ready`가 1인 clock edge에서 성립한다. Operand는 little-endian bit order로 전송한다.

```text
cycle 0: bit[0]
cycle 1: bit[1]
...
cycle 31: bit[31], cmd_last=1
```

정상 32-bit operation은 32개의 command bit을 사용한다. `cmd_last`가 먼저 들어오면 그 시점까지 수신된 하위 bit만 유효하고 나머지는 0으로 남는다. 현재 FPGA bridge는 항상 32개 bit을 전송한다.

### 4.3 Response Channel

| Signal | Direction | Width | Description |
| --- | --- | ---: | --- |
| `rsp_valid` | output | 1 | ASIC이 result bit을 제공함 |
| `rsp_ready` | input | 1 | FPGA가 result bit을 받을 수 있음 |
| `rsp_result` | output | 1 | result bit |
| `rsp_last` | output | 1 | 현재 bit이 마지막 response bit임 |

Response transfer는 `rsp_valid & rsp_ready`가 1인 clock edge에서 성립한다. Result도 little-endian bit order로 반환한다.

```text
cycle 0: result[0]
cycle 1: result[1]
...
cycle 31: result[31], rsp_last=1
```

### 4.4 Debug Signals

| Signal | Direction | Width | Description |
| --- | --- | ---: | --- |
| `busy` | output | 1 | `state != ST_IDLE` |
| `debug_state` | output | 3 | internal FSM state export |

`debug_state`는 bring-up과 FPGA 연동 디버깅용이다. 28핀 MPW가 전원핀 포함 조건이므로 데이터 폭을 1-bit로 줄이고 `busy`, `debug_state[2:0]`는 살리는 구성을 채택했다.

## 5. Opcode Specification

현재 opcode map은 RTL localparam 기준이다.

| Opcode | Mnemonic | Result |
| ---: | --- | --- |
| `4'h0` | `ADD` | `a + b` |
| `4'h1` | `SUB` | `a - b` |
| `4'h2` | `AND` | `a & b` |
| `4'h3` | `OR` | `a | b` |
| `4'h4` | `XOR` | `a ^ b` |
| `4'h5` | `SLT` | signed `a < b`, result `0` or `1` |
| `4'h6` | `SLTU` | unsigned `a < b`, result `0` or `1` |
| `4'h7` | `EQ` | `a == b`, result `0` or `1` |
| `4'h8` | `NE` | `a != b`, result `0` or `1` |
| `4'h9` | `LT` | signed `a < b`, branch compare result |
| `4'ha` | `LTU` | unsigned `a < b`, branch compare result |
| `4'hb` | `GE` | signed `a >= b`, branch compare result |
| `4'hc` | `GEU` | unsigned `a >= b`, branch compare result |
| `4'hd`-`4'hf` | reserved | 사용 금지 |

`SLT`와 `LT`는 같은 signed less-than 비교를 사용한다. 차이는 시스템 의미다. `SLT`는 register writeback용 ALU result이고, `LT`는 branch condition용 compare result로 쓰는 것을 의도한다. 현재 RTL 출력값은 둘 다 `0` 또는 `1`이다.

## 6. 28-pin MPW Pin Budget

MPW package의 28핀이 전원핀을 포함하므로 ASIC signal pin은 여유 있게 줄여야 한다. 현재 `serv_exec_unit`의 ASIC-facing signal pin은 아래와 같이 25개다.

| Group | Signals | Count |
| --- | --- | ---: |
| clock/reset | `clk`, `rst_n` | 2 |
| command control | `cmd_valid`, `cmd_ready`, `cmd_last` | 3 |
| command payload | `cmd_op[3:0]`, `cmd_a`, `cmd_b` | 6 |
| response control | `rsp_valid`, `rsp_ready`, `rsp_last` | 3 |
| response payload | `rsp_result` | 1 |
| response debug | `rsp_flags[5:0]` | 6 |
| debug | `busy`, `debug_state[2:0]` | 4 |
| total |  | 25 |

`rsp_flags[5:0]`는 bring-up 시 compare/sub 상태를 직접 관찰하기 위해 ASIC top interface에 유지했다. qflow DEF 기준으로는 signal 25개와 `vdd`, `gnd` 2개를 합쳐 `PINS 27`이다.

## 7. Internal Architecture

### 7.1 구성 요소

ASIC execution unit은 다음 구성 요소로 이루어진다.

- command receive FSM
- `op_r`: opcode latch
- `a_r`: 32-bit operand A shift/latch register
- `b_r`: 32-bit operand B shift/latch register
- 원본 SERV `serv_alu #(.W(1))`
- `exec_cnt`: 32-cycle bit execution counter
- `result_r`: 32-bit result shift/latch register
- `cmp_r`: compare result latch
- response send FSM
- debug state output

### 7.2 원본 SERV ALU 사용 방식

`serv_exec_unit`은 원본 `serv_alu`를 아래와 같이 1-bit 폭으로 사용한다.

```verilog
serv_alu #(.W(1)) u_serv_alu (...);
```

각 execute cycle에서 `a_r[0]`, `b_r[0]`를 `serv_alu`에 넣고, cycle마다 `a_r`, `b_r`를 right shift한다. `serv_alu`의 `o_rd` 1-bit result는 `result_r`의 MSB 방향으로 누적되어 32cycle 후 32-bit 결과를 이룬다.

비교 연산의 경우 `serv_alu.o_cmp`를 32cycle 동안 갱신하고 마지막 결과를 `cmp_r` 및 `result_r[0]`에 반영한다. `NE`, `GE`, `GEU`는 마지막 compare 값을 invert해 반환한다.

## 8. FSM

ASIC FSM state는 다음과 같다.

| State | Encoding | Role |
| --- | ---: | --- |
| `ST_IDLE` | `3'd0` | idle, 첫 command bit 수신 대기 |
| `ST_LOAD` | `3'd1` | operand bit 수신 |
| `ST_EXEC` | `3'd2` | 32-cycle bit-serial execution |
| `ST_SEND` | `3'd3` | result bit 송신 |

정상 operation 흐름:

```text
ST_IDLE
  -> first command bit accepted
ST_LOAD
  -> remaining command bits accepted
ST_EXEC
  -> 32 cycles using original SERV ALU
ST_SEND
  -> 32 response bits sent
ST_IDLE
```

## 9. Latency and Throughput

`cmd_ready=1`이고 `rsp_ready=1`인 이상적인 경우, ASIC execution unit의 한 operation은 다음 cycle 수를 갖는다.

| Phase | Cycles |
| --- | ---: |
| command load | 32 |
| bit-serial execute | 32 |
| response send | 32 |
| total command-first to response-last | 96 |

첫 command bit이 handshake된 cycle을 0으로 보면, 마지막 command bit은 cycle 31, execute는 cycle 32부터 63, 첫 response bit은 cycle 64, 마지막 response bit은 cycle 95에 handshake된다.

Back-pressure가 있으면 response phase가 늘어난다. Command phase에서도 FPGA가 `cmd_valid`를 늦게 주면 전체 operation 시간이 늘어난다. 현재 설계는 single-issue, non-pipelined 구조이므로 한 operation이 끝나기 전 다음 operation을 받을 수 없다.

## 10. FPGA-side Bridge

`serv_exec_fpga_bridge`는 FPGA 내부에서 쓰기 쉬운 32-bit request/response 인터페이스를 ASIC의 1-bit serial protocol로 변환한다.

### 10.1 FPGA Request Interface

| Signal | Direction | Width | Description |
| --- | --- | ---: | --- |
| `req_valid` | input | 1 | FPGA controller가 32-bit operation 요청 |
| `req_ready` | output | 1 | bridge가 새 요청 수신 가능 |
| `req_op` | input | 4 | operation code |
| `req_a` | input | 32 | operand A |
| `req_b` | input | 32 | operand B |

### 10.2 FPGA Response Interface

| Signal | Direction | Width | Description |
| --- | --- | ---: | --- |
| `resp_valid` | output | 1 | 32-bit response valid |
| `resp_ready` | input | 1 | FPGA controller response accept |
| `resp_result` | output | 32 | 32-bit result |
| `resp_flags` | output | 6 | ASIC response flags |

### 10.3 Bridge FSM

| State | Role |
| --- | --- |
| `ST_IDLE` | 32-bit request 수신 |
| `ST_SEND` | 32개 command bit을 ASIC으로 전송 |
| `ST_RECV` | 32개 response bit을 ASIC에서 수신 |
| `ST_RESP` | FPGA에 32-bit response 제공 |

Bridge는 ASIC-facing side에서 `asic_cmd_*`, `asic_rsp_*` 신호를 그대로 사용한다. FPGA controller는 bridge의 32-bit request/response만 보면 되므로 decode/register-file/writeback FSM을 단순하게 유지할 수 있다.

## 11. Reset Behavior

`rst_n=0`이 clock edge에서 샘플되면 다음 값으로 초기화된다.

- `state = ST_IDLE`
- counters = 0
- `op_r = OP_ADD`
- operands/result = 0
- compare latch = 0
- response valid latch = 0

Reset release 후에는 deterministic idle state에서 첫 command를 기다린다.

## 12. 지원하지 않는 기능

ASIC execution unit에서 제외한 기능은 다음과 같다.

- instruction fetch
- instruction decode
- register file
- immediate generation
- PC update
- branch target calculation
- load/store address sequencing beyond simple add/sub result
- data memory
- instruction memory
- CSR
- exception/interrupt
- Wishbone/AXI/bus master
- UART/GPIO/peripheral
- clock-domain crossing synchronizer
- scan chain
- shift instruction dedicated datapath
- multiply/divide

현재 shift instruction은 ASIC opcode로 정의되어 있지 않다. FPGA에서 처리하거나 후속 revision에서 opcode와 datapath를 추가해야 한다.

## 13. SERV Compatibility의 의미

이 프로젝트에서 `SERV-compatible`은 “SERV 전체 core와 pin-compatible”이라는 뜻이 아니다. 의미는 다음과 같다.

- 원본 SERV `serv_alu` RTL을 핵심 ALU로 사용한다.
- SERV의 bit-serial execution 철학을 유지한다.
- FPGA가 SERV-style 또는 RISC-V controller 역할을 맡고, ASIC은 그 controller가 호출하는 execution slice가 된다.
- RV32I 연산 중 ALU/compare subset의 결과가 RISC-V architectural result와 일치하도록 한다.

따라서 `serv_exec_unit`은 standalone CPU가 아니며, FPGA-hosted CPU/controller와 함께 쓰는 execution unit이다.

## 14. 물리 구현 사양

현재 qflow 결과 기준:

- process/library: ETRI 0.5um CMOS std-cell DK
- backend flow: qflow + yosys + graywolf + qrouter + magic
- top: `serv_exec_unit`
- final route: no failed routes
- DEF area: `807um x 807um`
- area: `0.651249 mm^2`
- MPW constraint: `1mm x 1mm` 충족
- mapped cells: 732
- final sequential cells: `DFFPOSX1` 118개
- final netlist `DFFSR`: 없음
- STA zero-margin max frequency: 약 `245.533 MHz`
- hold timing: meet

## 15. 검증 사양

### 15.1 ASIC Unit Test

위치:

```text
testbench/0_exec_unit_basic/
```

실행:

```sh
cd MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/testbench/0_exec_unit_basic/sim
./run.sh
```

`run.sh`는 Vivado batch mode로 `run_sim.tcl`을 실행한다. Windows에서는 `run.bat`을 사용한다.

검증 항목:

- ADD carry wrap
- SUB
- AND/OR/XOR
- signed SLT
- unsigned SLTU
- EQ/NE
- signed LT/GE
- unsigned LTU/GEU

현재 결과:

```text
TB PASS
```

### 15.2 FPGA Bridge Integration Test

위치:

```text
testbench/1_fpga_bridge/
```

실행:

```sh
cd MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/testbench/1_fpga_bridge/sim
./run.sh
```

검증 항목:

- FPGA-side 32-bit request 수신
- 1-bit command 분해
- ASIC command handshake
- ASIC response bit 수신
- 32-bit response 재조립
- operation 결과 일치

현재 결과:

```text
TB PASS
```

## 16. 사용 예시

FPGA controller는 하나의 decoded ALU micro-op에 대해 다음 순서를 따른다.

```text
1. req_ready 확인
2. req_op, req_a, req_b 설정
3. req_valid 1cycle assert
4. resp_valid 대기
5. resp_result를 register writeback 또는 branch decision에 사용
6. resp_ready assert
```

ASIC direct protocol을 직접 사용하는 경우에는 아래 순서를 따른다.

```text
1. cmd_ready 확인
2. operand[0]부터 1-bit씩 32회 전송
3. 마지막 command bit에서 cmd_last assert
4. rsp_valid 대기
5. result[0]부터 1-bit씩 32회 수신
6. rsp_last 확인 후 operation 완료
```

## 17. 설계상 주의사항

- `cmd_op` reserved value `4'hd`-`4'hf`는 사용하지 않는다.
- `rsp_flags`는 architectural state가 아니라 bring-up/debug용 보조 정보다.
- 현재 설계는 single clock domain을 전제로 한다.
- FPGA와 ASIC clock이 달라질 경우 CDC wrapper가 별도로 필요하다.
- `cmd_ready`는 `ST_IDLE`과 `ST_LOAD`에서만 올라간다.
- `rsp_valid`는 `ST_SEND`에서만 올라간다.
- operation 중에는 `busy=1`이다.
- command와 response는 little-endian bit order다.
- 현재 shift instruction은 ASIC에서 지원하지 않는다.
- 현재 multiply/divide는 지원하지 않는다.

## 18. 후속 확장 후보

우선순위가 높은 확장 후보는 다음과 같다.

- `SLL`, `SRL`, `SRA` opcode 추가
- debug_state를 pad로 직접 빼지 않고 debug mux로 축소
- ASIC/FPGA clock 분리를 위한 CDC wrapper
- invalid opcode error flag
- timeout/recovery state
- post-route gate-level simulation flow
- FPGA-hosted RV32I directed test와 연결
- chip-top pad ring 및 실제 MPW top integration

## 19. 요약

`serv_exec_unit`은 SERV 원본 `serv_alu`를 ASIC 내부에 포함한 32-bit bit-serial execution unit이다. FPGA가 시스템과 RISC-V control plane을 담당하고 ASIC은 ALU/compare execution plane을 담당한다. 현재 구현은 ADD/SUB/logic/compare subset을 지원하며, 1-bit serial protocol로 operand와 result를 교환한다. 28핀 MPW가 전원핀 포함 조건이므로 데이터 포트는 1-bit로 줄였고, 남는 핀에는 `busy`, `debug_state[2:0]`, `rsp_flags[5:0]`를 bring-up용으로 유지했다.
