# C_SERV_ALU_FPGA 구현 및 P&R 결과

## 구현 요약

`C_SERV_ALU_FPGA`는 FPGA가 instruction fetch, decode, register file, memory, system control을 담당하고 ASIC은 SERV-compatible execution unit만 담당하는 구조로 구현했다.

ASIC top은 `serv_exec_unit`이며, 원본 SERV의 `serv_alu`를 1-bit ALU로 인스턴스화해 내부 32-cycle 실행에 사용한다. FPGA-ASIC 인터페이스는 4-bit nibble serial command/response 방식이다.

## 주요 파일

- RTL top: `src/rtl/asic/serv_exec_unit.v`
- 원본 SERV ALU: `src/rtl/serv/serv_alu.v`
- FPGA-side protocol bridge: `src/rtl/fpga/serv_exec_fpga_bridge.v`
- 기본 검증 testbench: `testbench/0_exec_unit_basic/tb_serv_exec_unit.v`
- FPGA bridge 통합 testbench: `testbench/1_fpga_bridge/tb_fpga_bridge_exec_unit.v`
- test 실행 스크립트: `testbench/0_exec_unit_basic/sim/run.sh`
- qflow backend: `backend_physical_qflow/`
- 합성 스크립트: `backend_physical_qflow/source/serv_exec_unit.ys`
- 최종 post-route netlist: `backend_physical_qflow/synthesis/serv_exec_unit_postroute.v`
- 최종 routed DEF: `backend_physical_qflow/layout/serv_exec_unit.def`
- Magic layout DB: `backend_physical_qflow/layout/serv_exec_unit.mag`
- extracted spice: `backend_physical_qflow/layout/serv_exec_unit.spice`

## 지원 op

- `ADD`, `SUB`
- `AND`, `OR`, `XOR`
- `SLT`, `SLTU`
- branch compare 형태의 `EQ`, `NE`, `LT`, `LTU`, `GE`, `GEU`

## 기능 검증

실행 명령:

```sh
cd MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/testbench/0_exec_unit_basic/sim
./run.sh
```

`run.sh`는 Vivado batch mode로 `run_sim.tcl`을 실행한다. Windows에서는 같은 폴더의 `run.bat`을 사용한다.

결과:

```text
TB PASS
```

검증 범위는 ADD/SUB/logic/signed compare/unsigned compare/branch compare의 directed smoke test다.

FPGA-side bridge까지 포함한 통합 검증:

```sh
cd MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/testbench/1_fpga_bridge/sim
./run.sh
```

이 흐름도 Vivado `run_sim.tcl` 기반이다.

결과:

```text
TB PASS
```

이 테스트는 FPGA 쪽 32-bit request/response bridge가 4-bit ASIC command/response protocol로 정상 변환되는지 확인한다.

## 합성 결과

실행 명령:

```sh
cd MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/backend_physical_qflow
make synthesize
```

핵심 결과:

- top: `serv_exec_unit`
- mapped cells: 732
- `DFFPOSX1`: 118
- `DFFSR`: 최종 netlist에 없음

`DFFSR`가 최종 netlist에 들어가지 않도록 RTL은 동기 리셋 구조로 작성했다.

## Place and Route 결과

실행 명령:

```sh
cd MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/backend_physical_qflow
qflow route -T etri050 serv_exec_unit
```

라우팅 결과:

```text
Final: No failed routes!
```

면적 결과는 `layout/serv_exec_unit.def`의 `DIEAREA` 기준이다.

```text
UNITS DISTANCE MICRONS 100 ;
DIEAREA ( -600 -600 ) ( 80100 80100 ) ;
```

DEF 단위가 100 DBU/um이므로:

- width = `(80100 - -600) / 100 = 807 um`
- height = `(80100 - -600) / 100 = 807 um`
- area = `807um x 807um = 651,249 um^2 = 0.651249 mm^2`

따라서 1mm x 1mm 제약을 충족한다.

## STA

실행 명령:

```sh
cd MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/backend_physical_qflow
make sta
```

결과:

```text
Computed maximum clock frequency (zero margin) = 245.533 MHz
Design meets minimum hold timing.
```

## Magic migration

실행 명령:

```sh
cd MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/backend_physical_qflow
qflow migrate -T etri050 serv_exec_unit
```

결과 산출물:

- `layout/serv_exec_unit.mag`
- `layout/serv_exec_unit.lef`
- `layout/serv_exec_unit.spice`

Magic이 qflow DEF의 `END VIAS` 위치에 대해 경고를 출력하지만, 동일한 형식은 기존 `A_MCU` DEF에서도 보이며 migration은 exit 0으로 완료된다.
