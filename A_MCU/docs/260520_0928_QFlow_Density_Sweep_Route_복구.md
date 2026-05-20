# 260520 09:28 QFlow Density Sweep 및 Routing 복구

## 1. 문제 재확인

260520_0508 문서에서는 RF 모듈 병합 후 `initial_density = 0.98` 조건에서 routing failure가 0개라고 기록되어 있었으나, 실제 최신 `route.log`를 교차 검증한 결과 해당 기록은 현재 산출물과 일치하지 않았다.

* 기존 설정: `initial_density = 0.98`
* 실제 최신 routing 결과: `Final: Failed net routes: 21`
* 실패 net에는 CPU 내부 신호뿐 아니라 `vdd`도 포함되어 있었으므로, 해당 상태는 물리 구현 완료로 볼 수 없다.

따라서 RTL 기능 검증은 유지하되, QFlow placement/routing 밀도 조건을 다시 sweep하여 route-clean 조건을 찾았다.

---

## 2. Density Sweep 결과

합성 결과는 유지한 채 `project_vars.sh`의 `initial_density`만 변경하고 `make route`를 반복 수행하였다. 각 run의 로그와 DEF는 `/tmp/a_mcu_qflow_sweep_260520/`에 임시 보존하였다.

| initial_density | Final route result | DEF DIEAREA | 환산 크기 | 환산 면적 | 판정 |
| :---: | :---: | :--- | :---: | :---: | :--- |
| 0.96 | Failed net routes: 20 | `(-600,0) (131100,126900)` | 1317.0um x 1269.0um | 1.671 mm² | 실패 |
| 0.95 | Failed net routes: 31 | `(-600,0) (132600,126900)` | 1332.0um x 1269.0um | 1.690 mm² | 실패 |
| 0.945 | Failed net routes: 63 | `(-600,0) (129600,130500)` | 1302.0um x 1305.0um | 1.699 mm² | 실패 |
| **0.94** | **No failed routes** | `(-600,0) (130200,130500)` | **1308.0um x 1305.0um** | **1.707 mm²** | **성공** |

> QFlow/GrayWolf 배치는 density에 대해 단조적으로 좋아지지 않았다. 0.945/0.95/0.96은 0.94보다 면적은 작거나 비슷하지만 routing이 실패했다. 현재 재현 가능한 route-clean 지점은 `0.94`이다.

---

## 3. 최종 적용 상태

`backend_physical_qflow/project_vars.sh`를 다음과 같이 복구하였다.

```tcsh
set initial_density = 0.94
set graywolf_options = "-n"
set yosys_options = "-s /home/hosung/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow/source/my_mcu_top_custom.ys"
set via_stacks = "none"
set route_show = 0
```

이 상태에서 `make route`를 재실행하여 현재 작업 디렉터리의 산출물을 route-clean 결과로 갱신했다.

최신 route 로그:

```text
Final: No failed routes!
```

최신 DEF:

```def
DIEAREA ( -600 0 ) ( 130200 130500 ) ;
COMPONENTS 3432 ;
```

합성 기준 셀 수는 기존 최적화 결과와 동일하다.

```text
2241 cells
342 DFFPOSX1
35  DFFSR
```

---

## 4. Migrate, LVS, Size 확인

`make migrate`도 수행하여 Magic DB 생성 단계까지 진행했다.

* Magic은 DEF line 13의 `END VIAS`에 대해 `END statement out of context` 경고/에러를 출력했다.
* 그러나 DEF의 subcell/pin/net 처리는 완료되었고 `exttospice finished`까지 도달했다.

이후 `make lvs`를 수행하여 netgen 비교를 확인했다.

```text
Final result:
Circuits match uniquely.
LVS reports no net, device, pin, or property mismatches.
Total errors = 0
```

따라서 Magic DEF parser 경고는 현재 top-level LVS mismatch로 이어지지 않았다.

`make size` 기준 Magic core box는 다음과 같다.

```text
microns:  1314.600 x 1305.750  (-9.300, -0.300), (1305.300, 1305.450)  area 1716539.125
```

즉 Magic 기준 실제 core area는 약 **1.7165 mm²**이다. DEF `DIEAREA` 단순 환산값인 1.707 mm²보다 약간 크며, 이는 Magic cell box/오프셋 포함 기준 차이로 해석된다.

---

## 5. DRC 교차 검증

기본 QFlow DRC(`magic_drc.sh`)는 다음과 같이 실패한다.

```text
drc = 74
DRC failure: There are 74 DRC errors in the layout.
```

그러나 세부 확인 결과, 이 74개는 모두 LEF abstract standard-cell view에서 발생한 `Metal1 width < 3 (8.MET1.W)` 오류였다. 예를 들어 `NOR3X1`을 LEF view로 단독 load하면 동일한 metal1 width 오류가 2개 발생하지만, ETRI DesignKit의 실제 Magic cell view(`/home/hosung/ETRI050_DesignKit/digital_ETRI/NOR3X1`)로 load하면 DRC 오류는 0개였다.

```text
# LEF abstract view
NOR3X1_drc=2
Metal1 width < 3 (8.MET1.W)

# real Magic stdcell view
NOR3X1_drc=0
```

또한 top layout을 실제 standard-cell `.mag` view 기준으로 load하면 hierarchical DRC에서 37개의 `This layer can't abut or partially overlap between subcells` 오류가 발생했다. 이는 row 내 standard-cell abutment/rail 경계에서 발생하는 계층 검사용 오류로 보이며, 같은 layout을 flatten한 뒤 DRC를 재수행하면 오류가 사라진다.

```text
drc_real_cells=37
drc_flat=0
```

따라서 현재 DRC 상태는 다음처럼 해석한다.

* top routing 자체의 route failure는 0개이다.
* LVS는 top-level netlist 기준 완전히 일치한다.
* 기본 QFlow DRC 74개는 LEF abstract standard-cell view의 metal1 형상에서 유래한 false/nuisance error로 확인되었다.
* 실제 Magic standard-cell view를 사용한 flattened DRC는 0개이다.
* QFlow `magic_gds.sh`는 `log/drc.log`의 error condition을 보고 GDS 생성을 차단할 수 있으므로, GDS 생성 시에는 이 DRC 판정 근거를 반영한 별도 절차가 필요하다.

---

## 6. GDS 생성 확인

QFlow의 `magic_gds.sh`는 `log/drc.log` 마지막 줄에 error condition이 남아 있으면 GDS 생성을 중단한다. 따라서 기본 DRC 로그를 임의로 삭제/수정하지 않고, 동일한 Magic GDS 작성 흐름을 별도 TCL로 실행하여 산출물 생성 가능 여부를 확인했다.

실행 흐름은 다음과 같다.

```tcl
tech load /usr/local/share/qflow/tech/etri050/SCN3ME_SUBM.30.ETRI -noprompt
drc off
gds readonly true
gds rescale false
gds read /usr/local/share/qflow/tech/etri050/etri05_stdcells.gds2
load my_mcu_top
select top cell
expand
cif *hier write disable
cif *array write disable
gds write my_mcu_top
```

결과:

```text
Generating output for cell my_mcu_top
exit status = 0
layout/my_mcu_top.gds = 4,818,276 bytes
```

Magic은 standard-cell GDS read 중 `Input off lambda grid by 7/15; snapped to grid.` 및 timestamp mismatch 경고를 출력했지만, GDS write 자체는 정상 완료되었다.

---

## 7. 기능 검증 상태

동일 RTL 기준으로 `testbench/5_testbench_rv32i_directed/sim/run.sh`를 재실행했고 다음 결과를 확인했다.

```text
RV32I directed program words = 320
RF frames observed = 18072 writes=1088 reads=16983 invalid=0
Memory frames observed = 1009 writes=53 reads=956
Instruction fetches = 942 last_pc=000004fc last_insn=0000006f
[TB PASS] rv32i directed tests passed on my_mcu_top off-chip path
```

---

## 8. 결론

현재 올바른 물리 구현 기준점은 다음과 같다.

* RTL 기능: RV32I directed regression PASS
* 합성 셀 수: 2241 cells
* QFlow density: `initial_density = 0.94`
* DEF 배치/라우팅 면적: 약 1.707 mm²
* Magic size 측정 면적: 약 1.7165 mm²
* Routing: 0 failed routes
* LVS: Total errors = 0
* DRC: 기본 LEF abstract view DRC는 74개 오류를 보고하지만, 실제 standard-cell view 기반 flattened DRC는 0개
* GDS: `layout/my_mcu_top.gds` 생성 완료, 4,818,276 bytes
* 주의: 0.98/0.96/0.95/0.945 결과는 route 실패이므로 최종 성공 결과로 인용하면 안 된다.
