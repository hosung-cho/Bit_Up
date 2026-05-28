# 1-bit serial execution unit 전환 결과

## 목적

MPW 28핀이 전원핀을 포함하는 조건에 맞추기 위해 ASIC-facing command/response 데이터 폭을 4-bit nibble에서 1-bit serial로 축소했다. `busy`, `debug_state[2:0]`, `rsp_flags[5:0]`는 bring-up용 디버그 핀으로 유지했다.

## 변경 요약

- ASIC `serv_exec_unit`
  - `cmd_a[3:0]` -> `cmd_a`
  - `cmd_b[3:0]` -> `cmd_b`
  - `rsp_result[3:0]` -> `rsp_result`
  - `rsp_flags[5:0]` 유지
  - command load 32 cycle, response send 32 cycle로 변경
- FPGA bridge
  - 32-bit request operand를 LSB-first 1-bit stream으로 전송
  - ASIC result bit을 32 cycle 동안 수신해 32-bit result로 재조립
  - ASIC `rsp_flags[5:0]`를 FPGA-side `resp_flags[5:0]`로 전달
- FPGA host/top 및 testbench
  - ASIC-facing signal 폭을 1-bit로 반영
  - direct unit, bridge, RV32I smoke, RV32I directed regression 모두 1-bit protocol로 갱신
- qflow physical source
  - `backend_physical_qflow/source/serv_exec_unit.v`를 1-bit RTL과 동기화
  - qflow synthesize/place/STA/route/migrate 재실행

## ASIC Pin Budget

현재 `serv_exec_unit`의 signal pin은 25개다.

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

qflow DEF 기준으로는 `PINS 27`이며, 이는 signal 25개에 `vdd`, `gnd` 2개를 포함한 수다. 28핀 MPW 조건에서 1핀이 남는다.

## Latency

| Protocol | Command | Execute | Response | Total |
| --- | ---: | ---: | ---: | ---: |
| 이전 4-bit nibble | 8 | 32 | 8 | 48 cycles |
| 현재 1-bit serial | 32 | 32 | 32 | 96 cycles |

latency는 약 2배 증가하지만, MPW 핀 예산과 SERV bit-serial 구조의 일관성을 우선했다.

## Vivado RTL Simulation

모든 RTL simulation은 각 testbench의 `sim/run.sh`와 `run_sim.tcl`을 사용해 Vivado batch mode로 수행했다.

| Testbench | Result |
| --- | --- |
| `testbench/0_exec_unit_basic` | `TB PASS` |
| `testbench/1_fpga_bridge` | `TB PASS` |
| `testbench/2_fpga_host_rv32i` | `TB PASS` |
| `testbench/3_fpga_host_rv32i_directed` | `TB PASS` |

## qflow 결과

실행:

```bash
cd MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/backend_physical_qflow
make synthesize place sta route migrate
```

결과 요약:

- LEF size: `918.000um x 879.000um`
- 면적: 약 `0.806922 mm^2`
- DEF: `PINS 27`
- route: `Final: No failed routes!`
- STA: maximum clock frequency 약 `202.488 MHz`

Magic migrate 단계에서 기존 flow와 동일하게 DEF read 관련 `END statement out of context` 메시지가 출력되지만, command는 완료되었고 `serv_exec_unit.mag`, `serv_exec_unit.lef`가 재생성되었다.

## 결론

1-bit serial execution unit 전환 후에도 ASIC unit, FPGA bridge, FPGA-hosted RV32I smoke, RV32I directed regression이 모두 통과했다. qflow place/route도 완료되었고, 1mm x 1mm 면적 제약 및 28핀 MPW 핀 예산에 더 적합한 인터페이스가 되었다.
