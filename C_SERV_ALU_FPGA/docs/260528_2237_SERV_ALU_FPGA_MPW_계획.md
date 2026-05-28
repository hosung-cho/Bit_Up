# C_SERV_ALU_FPGA MPW 계획

## 1. 목표

기존 `A_MCU`의 SERV 기반 MCU 전체 온칩화는 1mm x 1mm MPW 면적 제약 안에 넣기 어렵다. `C_SERV_ALU_FPGA`에서는 방향을 바꿔, SERV의 핵심 실행 로직만 ASIC으로 만들고 나머지 시스템 기능은 FPGA에 배치한다.

목표는 완전한 단독 MCU ASIC이 아니라, FPGA가 instruction fetch, decode, register file, memory, system control을 담당하고 ASIC이 SERV-compatible execution unit으로 실제 RISC-V 연산에 참여하는 구조를 검증하는 것이다.

## 2. 기본 아키텍처

```text
+-------------------------------+        +-------------------------------+
| FPGA                           |        | ASIC                           |
|-------------------------------|        |-------------------------------|
| Instruction memory             |        | SERV-compatible execution unit |
| Data memory                    |        |                               |
| Register file                  |        | - bit-serial ALU               |
| PC / branch sequencing         |        | - add/sub                      |
| Instruction decode             |        | - logic ops                    |
| Main control FSM               |        | - compare/branch flags         |
| UART/SPI/debug/test harness    |        | - optional shift support       |
| ASIC command/result interface  | <----> | - operand/result registers     |
+-------------------------------+        +-------------------------------+
```

핵심 원칙은 FPGA와 ASIC 사이를 매 bit마다 왕복시키지 않는 것이다. 가능한 한 FPGA가 명령 단위 또는 micro-op 단위로 `start`를 주고, ASIC이 내부에서 bit-serial 연산을 진행한 뒤 `done`과 결과를 반환하는 구조를 우선 검토한다.

## 3. ASIC에 넣을 후보 기능

### 3.1 1차 필수 기능

- `ADD`, `SUB`
- `AND`, `OR`, `XOR`
- `SLT`, `SLTU`
- branch compare flag: `EQ`, `NE`, `LT`, `LTU`, `GE`, `GEU`
- operand latch
- result latch
- `valid/ready` 또는 `start/done` handshake
- reset 후 deterministic idle state

### 3.2 2차 선택 기능

- `SLL`, `SRL`, `SRA`
- immediate operand path 최적화
- 단순 trace/debug register
- scan 관찰용 internal state export
- FPGA clock과 ASIC clock 분리용 CDC wrapper

### 3.3 ASIC에서 제외할 기능

- instruction memory
- data memory
- register file
- CSR
- full instruction decoder
- bus master
- UART/GPIO 등 peripheral
- boot/reset firmware flow

## 4. FPGA에 남길 기능

- 프로그램 저장 및 instruction fetch
- register file
- data memory
- PC update
- instruction decode
- memory load/store 처리
- branch/jump target 계산 또는 보조 계산
- ASIC command 생성
- ASIC result 수신 및 register writeback
- 시뮬레이션/실보드 공통 test harness

## 5. 인터페이스 초안

초기 버전은 핀 수와 검증 난이도를 줄이기 위해 병렬 32-bit operand 인터페이스보다 직렬 또는 좁은 병렬 인터페이스를 우선 검토한다. 다만 bit마다 ALU 조합결과를 왕복시키는 방식은 피한다.

### 5.1 명령 단위 handshake

```text
FPGA -> ASIC
  clk
  rst_n
  cmd_valid
  cmd_op[3:0]
  cmd_signed
  cmd_a_bit / cmd_a_data[N-1:0]
  cmd_b_bit / cmd_b_data[N-1:0]
  cmd_last

ASIC -> FPGA
  cmd_ready
  rsp_valid
  rsp_result_bit / rsp_result_data[N-1:0]
  rsp_flags
  rsp_last
```

### 5.2 검토할 데이터 폭

- 1-bit serial: 핀 수 최소, latency 최대, SERV 철학과 가장 가까움
- 2-bit 또는 4-bit nibble serial: 핀 수와 성능의 균형
- 8-bit chunk: FPGA 연계와 디버깅이 쉬우나 핀 수 증가
- 32-bit parallel: 구현은 쉽지만 MPW pad/pin 제약과 ASIC 면적 이점이 약해질 수 있음

초기 계획은 1-bit 또는 4-bit를 비교한 뒤 결정한다.

## 6. 검증 계획

### Phase 0: 기존 A_MCU 분석

- `A_MCU`에서 ALU, RF, memory bridge, control의 면적 기여도를 정리한다.
- 기존 testbench 중 재사용 가능한 directed RV32I test와 compliance 흐름을 분리한다.
- SERV 원본 내부 신호 중 ASIC boundary로 가져갈 최소 신호를 정의한다.

### Phase 1: Golden model 작성

- FPGA 쪽 controller model과 ASIC execution unit RTL model을 만든다.
- 명령별 예상 결과를 비교하는 standalone testbench를 만든다.
- `ADD/SUB/logic/compare`만 먼저 통과시킨다.

### Phase 2: SERV-compatible 실행 경로 통합

- FPGA-hosted decoder/register file이 ASIC execution unit을 호출하도록 연결한다.
- 기존 RV32I directed test 일부를 실행한다.
- load/store/jump/branch 흐름에서 ASIC 결과가 writeback과 PC update에 정상 반영되는지 확인한다.

### Phase 3: 인터페이스 폭과 latency sweep

- 1-bit, 4-bit, 8-bit 인터페이스의 cycle count, 핀 수, RTL 면적을 비교한다.
- FPGA clock과 ASIC clock을 동일 clock으로 둘지, 별도 clock으로 둘지 결정한다.
- latency가 커져도 명령 실행이 깨지지 않도록 controller interlock을 검증한다.

### Phase 4: ASIC top 확정

- ASIC top module pinout을 고정한다.
- reset, idle, timeout, debug 관찰 신호를 확정한다.
- qflow 또는 기존 MPW backend 흐름으로 합성/배치 초기 결과를 확인한다.

### Phase 5: FPGA 연동 데모

- FPGA test harness에서 간단한 RV32I 프로그램을 실행한다.
- ASIC RTL simulation, post-synth simulation, 실제 칩 연결 시나리오를 같은 protocol로 유지한다.
- 데모 목표는 "FPGA-hosted RISC-V system이 ASIC execution unit을 사용해 프로그램을 실행"하는 것이다.

## 7. 초기 디렉터리 계획

```text
C_SERV_ALU_FPGA/
  docs/
  src/
    rtl/
      asic/
      fpga/
      common/
  testbench/
    0_exec_unit_basic/
    1_protocol_loopback/
    2_rv32i_directed/
  backend_synth/
  backend_physical_qflow/
```

첫 구현에서는 `docs`와 `src/rtl/asic`부터 시작하고, 실제 backend 폴더는 top module과 pinout이 어느 정도 안정된 뒤 생성한다.

## 8. 주요 의사결정 항목

- ASIC/FPGA 인터페이스 폭: 1-bit, 4-bit, 8-bit 중 선택
- ASIC이 shift 연산까지 맡을지 여부
- branch target 계산을 FPGA에 둘지 ASIC 보조 계산으로 둘지 여부
- ASIC clock을 FPGA와 공유할지 여부
- MPW pad 수 제한 안에서 debug 신호를 얼마나 둘지 여부
- 기존 `A_MCU` testbench를 복사할지, 공통화할지 여부

## 9. 리스크와 대응

| 리스크 | 영향 | 대응 |
| --- | --- | --- |
| ALU만 ASIC으로 빼면 통신 overhead가 너무 큼 | 성능 저하, 데모 설득력 약화 | 명령 단위 execution unit으로 정의 |
| 핀 수가 부족함 | 실제 보드 연동 어려움 | 1-bit/4-bit serial protocol 우선 검토 |
| FPGA controller가 복잡해짐 | 검증 기간 증가 | 기존 SERV 흐름을 최대한 보존하고 boundary만 명확히 함 |
| ASIC 제작 후 protocol bug 수정 불가 | MPW 실패 위험 | timeout, idle recovery, loopback/debug mode 추가 |
| 기존 compliance 흐름 재사용이 어려움 | 검증 신뢰도 저하 | directed test부터 시작 후 compliance subset으로 확장 |

## 10. 바로 다음 작업

1. `A_MCU/src/rtl`의 SERV 관련 파일 목록과 ALU/control/RF boundary를 정리한다.
2. ASIC execution unit의 최소 opcode set을 확정한다.
3. `C_SERV_ALU_FPGA/src/rtl/asic/serv_exec_unit.v` 초안을 만든다.
4. standalone arithmetic/compare testbench를 만든다.
5. 1-bit와 4-bit protocol의 pin/cycle 비교표를 작성한다.

