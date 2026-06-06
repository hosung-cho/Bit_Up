# C_SERV_ALU_FPGA postroute simulation 결과

## 실행 조건

- 실행일: 2026-06-06
- 실행 위치: sandbox 밖 Vivado batch simulation
- DUT netlist:
  - `MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/ETRI050_Ho/synthesis/serv_exec_unit_postroute.v`
- Standard cell model:
  - `ETRI-0.5um-CMOS-MPW-Std-Cell-DK/digital_ETRI/khu_etri05_stdcells.v`
- 실행 방식:
  - 각 testbench의 `sim/run_postroute.tcl` 사용
  - `4_fpga_host_riscv_tests`는 각 RV32UI `program.hex`별로 `PROGRAM_HEX`를 지정하여 `run_postroute.tcl` 반복 실행

## 요약 결과

| Testbench | 결과 |
| --- | --- |
| `0_exec_unit_basic` | PASS |
| `1_fpga_bridge` | PASS |
| `2_fpga_host_rv32i` | PASS |
| `3_fpga_host_rv32i_directed` | PASS |
| `4_fpga_host_riscv_tests` | 37/37 PASS |

전체 결과:

```text
overall_exit=0
```

## RV32UI postroute regression

`4_fpga_host_riscv_tests`에서 실행한 37개 케이스가 모두 통과했다.

```text
add   addi  and   andi  auipc
beq   bge   bgeu  blt   bltu  bne
jal   jalr
lb    lbu   lh    lhu   lui   lw
or    ori
sb    sh    sw
sll   slli  srl   srli  sra   srai
slt   slti  sltiu sltu
sub   xor   xori

4_total=37
4_pass=37
4_fail=0
```

## 로그 위치

- 통합 요약:
  - `/tmp/c_serv_alu_fpga_postroute_summary.txt`
- 개별 postroute simulation 로그:
  - `MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/testbench/0_exec_unit_basic/sim/postroute_run_latest.log`
  - `MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/testbench/1_fpga_bridge/sim/postroute_run_latest.log`
  - `MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/testbench/2_fpga_host_rv32i/sim/postroute_run_latest.log`
  - `MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/testbench/3_fpga_host_rv32i_directed/sim/postroute_run_latest.log`
  - `MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/testbench/4_fpga_host_riscv_tests/sim/compliance_logs_postroute/*.log`

## 비고

- `serv_exec_unit_postroute.v`는 qflow `DEF2Verilog`가 route 결과 DEF에서 생성한 postroute Verilog이다.
- `ETRI050_Ho/log/route.log` 기준 route 최종 결과는 `Final: No failed routes!`이다.
