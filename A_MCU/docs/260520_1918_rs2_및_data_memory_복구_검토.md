# rs2 및 data memory 복구 검토

작성 시각: 260520_1918

## 목적

`1mm x 1mm` 면적을 맞추기 위해 `rs2` read와 data memory를 모두 포기한 것은 기능 손실이 너무 크다.

따라서 다음 후보를 실제 합성/배치 기준으로 검토했다.

- `rs2` 복구: `SINGLE_RF_READ=0`
- data memory 복구: `DISABLE_DBUS=0`
- data memory는 full byte/halfword가 아니라 `LW/SW` 중심 word-only 후보도 검토

## 260521 추가 진행: rs2 streaming writeback 보정

opcode-gated `STREAM_RS2_READ=1` 후보에서 남아 있던 R-type `ADD/SUB/XOR/OR/AND` 5개 실패는 RF writeback 결과가 1-bit right shift되어 저장되는 문제였다.

수정:

- `read_buf1[31:0]` full prefetch는 되살리지 않는다.
- rs2는 계속 실행 중 streaming으로 공급한다.
- stream 중 `i_wdata0_next` writeback에만 1-bit 보정용 `stream_write_prev`를 추가했다.
- R-type full-prefetch 백업 실험은 기능은 PASS했지만 DFF/면적이 크게 증가해 제거했다.

검증:

```text
RF frames observed = 20017 writes=1088 reads=18928 invalid=0
Memory frames observed = 1181 writes=53 reads=1128
Instruction fetches = 1114 last_pc=000004fc last_insn=0000006f
[TB PASS] rv32i directed tests passed on my_mcu_top off-chip path
```

QFlow 결과:

```text
DFFPOSX1: 272
Number of cells = 1500, total width = 2639100
Initial core layout: (150 150) to (98250 97350) (scale um * 100)
DIEAREA ( -600 0 ) ( 99000 98100 ) ;
Final: No failed routes!
```

해석:

- core: 약 `0.981mm x 0.972mm`
- DEF die: 약 `0.996mm x 0.981mm`
- route: no failed routes

즉 기능 면에서는 `rs2` streaming 후보가 full RV32I directed test를 통과했고, physical profile은 strict DEF `DIEAREA` 기준으로도 `1mm x 1mm` 안에 들어왔다.

추가로 면적을 맞추기 위해 physical profile의 `MEM_ADDR_BITS`를 `11`에서 `10`으로 줄였다.

- off-chip memory bridge가 내보내는 byte address가 10비트로 줄어든다.
- instruction address window는 `1KiB`로 제한된다.
- tape-out용 firmware는 1KiB 주소 창 안에 배치해야 한다.
- full directed testbench는 기본 `MEM_ADDR_BITS=32`, `DISABLE_DBUS=0` 조건에서 기능 회귀용으로 유지한다.

## 적용한 RTL 변경

`WORD_MEM_ONLY` 파라미터를 추가했다.

- 기본값은 `0`이므로 기존 canonical RTL 및 directed simulation은 full load/store 동작을 유지한다.
- physical/experiment profile에서 `WORD_MEM_ONLY=1`을 걸면 `LW/SW` 중심으로 data memory 경로를 줄인다.

추가로 `STORE_ONLY_DBUS` 실험도 넣었다.

- physical/experiment profile에서 `STORE_ONLY_DBUS=1`을 걸면 SERV data bus를 store-only 경로처럼 상수화한다.
- load readback, byte enable 선택, read data return을 더 줄이는 의도였지만 면적 감소는 거의 없었다.

변경 위치:

- `src/rtl/my_mcu_top.v`
- `src/rtl/serv/serv_top.v`
- `src/rtl/serv/serv_decode.v`
- `src/rtl/serv/serv_mem_if.v`

별도 실험 스크립트:

```text
backend_physical_qflow/source/my_mcu_top_rs2_wordmem_experiment.ys
```

## 합성 면적 비교

| 후보 | 주요 설정 | Yosys liberty area | DFF |
|---|---|---:|---:|
| 기존 1mm 성공 후보 | `DISABLE_DBUS=1`, `SINGLE_RF_READ=1` | `499,176` | `264` |
| data memory만 복구 | `DISABLE_DBUS=0`, `SINGLE_RF_READ=1` | `575,307` | `291` |
| rs2만 복구 | `DISABLE_DBUS=1`, `SINGLE_RF_READ=0` | `561,753` | `300` |
| rs2 + full data memory | `DISABLE_DBUS=0`, `SINGLE_RF_READ=0` | `632,646` | `327` |
| rs2 + word-only data memory | `DISABLE_DBUS=0`, `WORD_MEM_ONLY=1`, `SINGLE_RF_READ=0` | `627,273` | `326` |
| rs2 + word-only + store-only data memory | `DISABLE_DBUS=0`, `WORD_MEM_ONLY=1`, `STORE_ONLY_DBUS=1`, `SINGLE_RF_READ=0` | `631,548` | `326` |
| rs2 streaming 복구 | `DISABLE_DBUS=1`, `SINGLE_RF_READ=0`, `STREAM_RS2_READ=1` | 약 `507,609` | `270` |
| rs2 opcode-gated streaming | `DISABLE_DBUS=1`, `SINGLE_RF_READ=0`, `STREAM_RS2_READ=1`, rs2 필요 opcode만 stream | 약 `520k` | `272` |

## 배치 결과

### rs2 + word-only data memory

`rs2 + word-only data memory` 후보를 QFlow density `1.00`에서 배치했다.

```text
Initial core layout: (150 150) to (109650 108150) (scale um * 100)
DIEAREA ( -600 0 ) ( 110400 108900 ) ;
```

해석:

- core: 약 `1.095mm x 1.080mm`
- DEF die: 약 `1.110mm x 1.089mm`

따라서 `rs2`와 SERV data bus를 동시에 살리는 구조는 word-only로 줄여도 현재 1mm 조건을 충족하지 못한다.

### rs2만 복구

data memory를 계속 끄고 `rs2`만 복구한 후보도 QFlow density `1.00`에서 배치/route까지 확인했다.

```text
Initial core layout: (150 150) to (103650 100950) (scale um * 100)
DIEAREA ( -600 0 ) ( 104400 101700 ) ;
Final: No failed routes!
```

해석:

- core: 약 `1.035mm x 1.008mm`
- DEF die: 약 `1.050mm x 1.017mm`
- route: no failed routes

즉 `rs2`만 살려도 현재 구조에서는 1mm를 넘는다. route는 성공했지만 MPW `1mm x 1mm` 면적 조건에는 실패한다.

### rs2 streaming 복구

`read_buf1[31:0]`를 통째로 보관하지 않고, rs2를 실행 중 2-bit chunk 단위로 앞서 읽어 공급하는 `STREAM_RS2_READ` 후보를 추가했다.

```text
Chip area for module '\my_mcu_top': 약 507609
DFFPOSX1: 270
Initial core layout: (150 150) to (97650 97350) (scale um * 100)
DIEAREA ( -600 0 ) ( 98400 98100 ) ;
Final: No failed routes!
```

해석:

- core: 약 `0.975mm x 0.972mm`
- DEF die: 약 `0.990mm x 0.981mm`
- route: no failed routes

따라서 data memory를 계속 포기한다는 조건에서는 `rs2`를 다시 살린 1mm 후보가 생겼다.

### rs2 opcode-gated streaming 및 writeback shift-fix

처음 `STREAM_RS2_READ=1` 후보는 모든 instruction에서 rs2 stream read를 걸어 full RV32I directed test에서 광범위하게 실패했다. 이후 R-type/branch/store처럼 rs2가 필요한 opcode에서만 stream read를 켜도록 수정했다.

검증 결과:

```text
RF frames observed = 20017 writes=1088 reads=18928 invalid=0
Memory frames observed = 1181 writes=53 reads=1128
Instruction fetches = 1114
[TB PASS] rv32i directed tests passed on my_mcu_top off-chip path
```

full RV32I directed test 결과:

- store, load, I-type ALU, branch, jump 계열 PASS
- R-type `ADD/SUB/SLL/SLT/SLTU/XOR/OR/AND/SRL/SRA` PASS
- 기존에 남았던 `ADD/SUB/XOR/OR/AND` 1-bit writeback shift는 `stream_write_prev` 보정으로 해결

physical 결과:

```text
DFFPOSX1: 272
Number of cells = 1500
Initial core layout: (150 150) to (98250 97350) (scale um * 100)
DIEAREA ( -600 0 ) ( 99000 98100 ) ;
Final: No failed routes!
```

해석:

- core: 약 `0.981mm x 0.972mm`
- DEF die: 약 `0.996mm x 0.981mm`
- route: no failed routes

즉 opcode-gated streaming + writeback shift-fix + `MEM_ADDR_BITS=10` 조합은 기능 검증과 strict DEF 1mm 조건을 동시에 만족한다.

### 최신 stream 구조에서 store-only data memory 재시도

사용자가 data memory 복구 가능성을 다시 물어봐서, 기존 full/word-only DBUS 실험보다 더 유리한 최신 물리 프로파일에서 재확인했다.

실험 조건:

- `RV32E_MODE=1`
- `MEM_ADDR_BITS=10`
- `SINGLE_RF_READ=0`
- `STREAM_RS2_READ=1`
- `DISABLE_DBUS=0`
- `WORD_MEM_ONLY=1`
- `STORE_ONLY_DBUS=1`

QFlow 결과:

```text
DFFPOSX1: 298
Number of cells = 1752
Initial core layout: (150 150) to (105450 104550) (scale um * 100)
DIEAREA ( -600 0 ) ( 106200 105300 ) ;
Final: No failed routes!
```

해석:

- core: 약 `1.053mm x 1.044mm`
- DEF die: 약 `1.068mm x 1.053mm`
- route: no failed routes

즉 최신 `rs2` streaming 구조와 1KiB address 축소를 적용해도, SERV 정식 data bus를 켜는 순간 store-only/word-only 최소 구성조차 1mm를 넘는다.

### 표준 LW/SW data memory 극한 최적화 재시도

표준 data memory 복구 요청에 따라 `STORE_ONLY_DBUS=0`, `WORD_MEM_ONLY=1` 조건으로 `LW/SW`를 모두 지원하는 후보를 다시 측정했다. full byte/halfword load/store는 여전히 제외하고, word access만 표준 명령 `LW/SW`로 쓰는 조건이다.

공통 조건:

- `RV32E_MODE=1`
- `DISABLE_DBUS=0`
- `WORD_MEM_ONLY=1`
- `STORE_ONLY_DBUS=0`
- `SINGLE_RF_READ=0`
- `STREAM_RS2_READ=1`
- `USE_RF_INTERLOCK=0`
- `RESET_STRATEGY="NONE"`

QFlow 결과:

| 후보 | 추가 축소 | DFF | cells | core | DEF die | route |
|---|---|---:|---:|---|---|---|
| `LW/SW`, 1KiB, x0-x15 | `MEM_ADDR_BITS=10` | 298 | 1768 | 약 `1.062mm x 1.044mm` | 약 `1.077mm x 1.053mm` | pass |
| `LW/SW`, 512B, x0-x15 | `MEM_ADDR_BITS=9` | 298 | 1752 | 약 `1.053mm x 1.044mm` | 약 `1.068mm x 1.053mm` | pass |
| `LW/SW`, 512B, x0-x15, no pre-register | `SERV_PRE_REGISTER=0` | 320 | 1800 | 약 `1.095mm x 1.044mm` | 약 `1.110mm x 1.053mm` | pass, 면적 악화 |
| `LW/SW`, 512B, x0-x7 | `GPR_REGS_OVERRIDE=8` | 294 | 1737 | 약 `1.044mm x 1.044mm` | 약 `1.059mm x 1.053mm` | pass |
| `LW/SW`, 512B, x0-x3 | `GPR_REGS_OVERRIDE=4` | 290 | 1732 | 약 `1.035mm x 1.044mm` | 약 `1.044mm x 1.053mm` | 25 failed routes |
| `LW/SW`, 256B, x0-x3 | `MEM_ADDR_BITS=8`, `GPR_REGS_OVERRIDE=4` | 290 | 1733 | 약 `1.038mm x 1.044mm` | 약 `1.053mm x 1.053mm` | pass |

확인한 최적화:

- word-only일 때 DBUS byte select를 top에서 `4'b1111`로 상수화했다.
- `GPR_REGS_OVERRIDE` 파라미터를 추가해 physical 실험에서 x0-x7, x0-x3까지 RF 주소폭을 줄여 보았다.
- 그러나 레지스터 수를 x0-x3까지 줄이고 주소창을 256B로 줄여도 DEF 높이가 약 `1.053mm`로 남는다.

결론:

- 표준 `LW/SW` data memory는 “아주 조금 초과”가 아니라 현재 SERV DBUS 구조상 최소 약 `5%` 이상 초과한다.
- RV32E 16개 레지스터를 유지한 실용 후보는 DEF 약 `1.068mm x 1.053mm`가 하한에 가깝다.
- x0-x3까지 줄이는 것은 더 이상 RV32E라고 보기 어렵고, 그마저도 1mm를 만족하지 못한다.
- 따라서 MPW 1mm 조건에서는 표준 SERV `LW/SW` data memory 복구가 현실적인 tape-out 후보가 아니다.

## 검증

기본 canonical profile은 `WORD_MEM_ONLY=0`이므로 기존 RV32I directed test를 유지한다.

```text
[TB PASS] rv32i directed tests passed on my_mcu_top off-chip path
```

QFlow 성공 profile은 다시 `my_mcu_top_custom.ys`에 유지했다.

현재 regenerated 성공 profile 결과:

```text
DFFPOSX1: 272
Number of cells = 1500
Initial core layout: (150 150) to (98250 97350) (scale um * 100)
DIEAREA ( -600 0 ) ( 99000 98100 ) ;
Final: No failed routes!
```

해석:

- core: 약 `0.981mm x 0.972mm`
- DEF die: 약 `0.996mm x 0.981mm`
- route: no failed routes

추가 RF 단독 테스트:

- `STREAM_RS2_READ=1` RF 단독 테스트에서 SERV counter 기준 rs1/rs2 expected word를 확인했다.
- Vivado/XSim directed run은 sandbox 밖에서 정상 실행했다.
- opcode-gated streaming + shift-fix full-core directed는 PASS했다.

## 결론

`rs2`와 data memory는 기능적으로 반드시 살리고 싶은 항목이지만, 현재 SERV off-chip RF/data-bus 구조에서는 둘을 동시에 복구하면 1mm를 넘는다.

단순 `SINGLE_RF_READ=0` 복구는 DEF 기준 약 `1.050mm x 1.017mm`가 되어 1mm를 넘었다. `STREAM_RS2_READ=1`로 RF read 구조를 바꾸고, writeback shift를 보정하고, physical profile의 memory address width를 10비트로 줄이면 DEF 기준 약 `0.996mm x 0.981mm`까지 내려온다.

현실적인 다음 선택지는 둘 중 하나다.

1. 현재 `STREAM_RS2_READ=1`, `MEM_ADDR_BITS=10` 후보를 tape-out 후보로 두고 DRC/LVS를 진행한다.
2. 1KiB instruction window가 너무 작으면 `MEM_ADDR_BITS=11`로 되돌리고, 다른 부분에서 약 `11um`을 추가로 줄인다.

data memory는 SERV의 정식 data bus를 되살리는 방식이 아니라, 더 작은 custom mailbox/result-register 방식으로 별도 설계해야 한다. 그러나 이번 `STORE_ONLY_DBUS` 실험상 SERV data bus 자체를 켜는 비용이 커서, 단순 store-only/word-only 상수화만으로는 충분하지 않다.

최신 `STREAM_RS2_READ + MEM_ADDR_BITS=10` 프로파일에서 재시도한 store-only DBUS도 DEF 약 `1.068mm x 1.053mm`로 초과했다. 따라서 1mm 안에서 표준 `LW/SW` data memory를 살리는 것은 현재 RTL 구조로는 어렵고, data memory 비슷한 사용성이 필요하면 표준 SERV DBUS가 아닌 custom serial mailbox 또는 결과 레지스터 형태가 현실적이다.

## 2026-05-21 추가: RF/Memory 직렬 인터페이스 통합 상한 실험

목적:

- 표준 `LW/SW` data memory를 복구하기 위해, off-chip RF 직렬 엔진과 off-chip memory 직렬 엔진을 하나로 합쳤을 때 얻을 수 있는 면적 절감 가능성을 확인했다.
- 완전한 공유 프로토콜을 바로 구현하기 전에, `RF_SERIAL_STUB=1` 상한 실험을 추가했다.
- 이 실험은 RF read 데이터 경로를 상수로 죽이지 않기 위해 `i_rf_miso` 기반 비상수 read data를 유지하고, RF 직렬 FSM만 제거한 낙관적 면적 상한이다.
- 따라서 기능적으로 tape-out 가능한 구현은 아니며, "공유 엔진 구현이 물리적으로 시도할 가치가 있는가"를 판단하기 위한 bound이다.

추가한 RTL 파라미터:

- `serv_rf_ram_if.rf_serial_stub`
- `my_mcu_top.RF_SERIAL_STUB`

실험 조건:

- `RV32E_MODE=1`
- `DISABLE_DBUS=0`
- `WORD_MEM_ONLY=1`
- `STORE_ONLY_DBUS=0`
- `SINGLE_RF_READ=0`
- `STREAM_RS2_READ=1`
- `USE_RF_INTERLOCK=0`
- `RESET_STRATEGY="NONE"`
- `RF_SERIAL_STUB=1`

결과:

| 후보 | DFF | synth cells | place cells | core | DEF die | route |
|---|---:|---:|---:|---|---|---|
| `LW/SW`, 512B, RF serial FSM 제거 상한 | 265 | 1427 | 1520 | 약 `0.987mm x 0.972mm` | 약 `1.002mm x 0.981mm` | pass |
| `LW/SW`, 256B, RF serial FSM 제거 상한 | 265 | 1434 | 1523 | 약 `0.984mm x 0.972mm` | 약 `0.999mm x 0.981mm` | pass |

해석:

- `MEM_ADDR_BITS=9`에서는 RF 직렬 FSM을 제거한 상한에서도 DEF 폭이 약 `1.002mm`로 아주 조금 초과한다.
- `MEM_ADDR_BITS=8`에서는 DEF 약 `0.999mm x 0.981mm`로 1mm 안에 들어온다.
- 그러나 실제 공유 엔진은 arbitration, frame type, RF response capture, memory/RF 요청 충돌 처리 로직이 추가되므로 이 상한보다 커질 가능성이 높다.
- 즉 표준 `LW/SW`를 살리려면 `MEM_ADDR_BITS=8` 수준의 작은 data/program window와 실제 공유 엔진의 극단적 최적화가 동시에 필요하다.

판단:

- RF/Memory 직렬 인터페이스 통합은 완전히 불가능한 방향은 아니다. 상한 실험상 `256B` 주소창에서는 1mm 근처까지 내려온다.
- 다만 여유가 약 `1um` 수준이라, 기능 구현을 포함한 실제 tape-out 후보로 만들려면 추가 절감이 더 필요하다.
- 다음 구현 방향은 RF read/write 전용 FSM을 유지하지 않고 memory serial bridge의 shift/counter를 공유하는 방식이어야 한다. 단순히 RF/MEM 핀만 합치는 것은 면적 절감 효과가 거의 없으므로 표준 `LW/SW` 복구 목적에는 부족하다.

## 2026-05-21 추가: 실제 RF/Memory 공유 직렬 엔진 구현 결과

목적:

- `RF_SERIAL_STUB=1` 상한 실험이 아니라, 실제로 `offchip_mem_bridge`가 RF frame과 memory frame을 같은 shift/counter 엔진으로 처리하도록 구현했다.
- 이 시도는 표준 `LW/SW` data memory 복구를 위한 것이다.

주요 RTL 변경:

- `my_mcu_top.SHARED_SERIAL` 추가
- `serv_rf_ram_if`에서 RF read/write frame을 `o_shared_valid/o_shared_frame`으로 export
- `offchip_mem_bridge.ENABLE_RF_PORT` 추가
- RF 요청도 memory bridge의 `shift_reg`, `bit_count`, `ST_SHIFT` 경로를 공유
- RF 요청 중복 방지 비교기를 제거하고, `clk_sys` tick에서만 RF 요청을 launch하도록 축소
- `STREAM_RS2_READ=1`에서 rs2 full buffer를 제거하도록 read path 정리
- 물리용 `WORD_MEM_ONLY=1`일 때 memory serial frame에서 byte select 4비트 제거

기능 검증:

```text
RF frames observed = 20007 writes=1088 reads=18918 invalid=0
Memory frames observed = 1181 writes=53 reads=1128
[TB PASS] rv32i directed tests passed on my_mcu_top off-chip path
```

물리 실험 조건:

- `RV32E_MODE=1`
- `DISABLE_DBUS=0`
- `WORD_MEM_ONLY=1`
- `MEM_ADDR_BITS=8`
- `USE_RF_INTERLOCK=0`
- `SINGLE_RF_READ=0`
- `STREAM_RS2_READ=1`
- `SHARED_SERIAL=1`
- `RESET_STRATEGY="NONE"`

결과:

| 단계 | DFF | synth cells | place cells | core | DEF die | route |
|---|---:|---:|---:|---|---|---|
| 최초 실제 shared serial | 293 | 1672 | 1765 | 약 `1.056mm x 1.044mm` | 약 `1.071mm x 1.053mm` | pass |
| RF 요청 dedup 제거 | 282 | 1615 | 1708 | 약 `1.050mm x 1.008mm` | 약 `1.065mm x 1.017mm` | pass |
| rs2 full buffer 정리 | 282 | 1596 | 1684 | 약 `1.044mm x 1.008mm` | 약 `1.059mm x 1.017mm` | route 실패 |
| word-only memory frame 축소 | 282 | 1577 | 1663 | 약 `1.035mm x 1.008mm` | 약 `1.050mm x 1.017mm` | pass |

추가로 확인한 닫힌 경로:

- `SERV_PRE_REGISTER=0`은 면적이 줄지 않고 오히려 증가했다.
- 결과: DFF `282 -> 304`, synth cells `1577 -> 1625`.
- 따라서 physical profile은 `SERV_PRE_REGISTER=1`로 유지한다.

판단:

- 실제 공유 직렬 엔진은 기능적으로 동작한다.
- 표준 `LW/SW` 복구도 directed test 기준 정상 동작한다.
- 그러나 1mm x 1mm MPW 제한에는 아직 들어오지 못했다.
- 최종 최적 결과도 DEF 기준 약 `1.050mm x 1.017mm`로, 폭 약 `50um`, 높이 약 `17um`를 추가로 줄여야 한다.
- 상한 실험의 `0.999mm x 0.981mm`와 실제 구현 사이 차이는 arbitration/응답 capture/공유 launch 로직 비용이다.

현재 결론:

- “공유 직렬 RF/MEM으로 표준 `LW/SW`를 살리는 것”은 기능적으로는 가능하다.
- 하지만 현재 SERV 기반 구조를 유지하면 1mm 조건을 만족시키기엔 아직 부족하다.
- 다음에 더 줄이려면 단순 RTL 미세 조정보다는 다음 중 하나가 필요하다.
  - RF/MEM을 완전 단일 핀 프로토콜로 바꿔 RF 출력 핀 경로 제거
  - 표준 `LW/SW` 대신 custom mailbox/result register로 전환
  - SERV DBUS를 더 깊게 수정해 memory bus 상태/ack 경로 자체를 축소

## 2026-05-21 추가: 표준 DBUS 유지 기준 추가 최적화

목표:

- `DISABLE_DBUS=0`을 유지한다.
- 표준 `LW/SW` data memory 경로는 살린다.
- RF와 memory는 `UNIFIED_SERIAL=1`로 memory serial pin을 공유한다.
- 현재 물리 프로파일은 byte/halfword lane까지 살리는 full DBUS가 아니라, 1mm를 위해 `WORD_MEM_ONLY=1`인 `LW/SW` 중심 프로파일이다.

추가 RTL 최적화:

- `offchip_mem_bridge`에서 RF 전송 여부를 나타내던 별도 `active_rf` 플롭을 제거했다.
- 기존 `ST_SHIFT + active_rf` 조합을 `ST_SHIFT`와 `ST_RF_SHIFT` 상태로 분리했다.
- 결과적으로 RF/MEM 공유 shift engine은 유지하면서 제어 플롭과 mux 조건을 줄였다.
- 기능 검증은 동일 directed test에서 통과했다.

기능 검증 결과:

```text
RF frames observed = 20007 writes=1088 reads=18918 invalid=0
Memory frames observed = 1181 writes=53 reads=1128
[TB PASS] rv32i directed tests passed on my_mcu_top off-chip path
```

물리 결과:

| 단계 | DFF | synth cells | place cells | DEF die | route |
|---|---:|---:|---:|---|---|
| word-only memory frame 축소 | 282 | 1577 | 1663 | 약 `1.050mm x 1.017mm` | pass |
| `active_rf` 상태 흡수 후 | 279 | 1519 | 1609 | 약 `1.023mm x 1.017mm` | fail, 17 failed nets |

확인한 닫힌 경로:

- `UNIFIED_SERIAL=1`에서 RF 전용 top 출력 3개만 `iopadmap`에서 제외하면 synth cells는 `1516`까지 줄지만 route fail이 `58`개로 악화됐다.
- RF 핀을 물리 top에서 아예 제거하는 wrapper도 시도했지만 합성 셀이 `1545`로 증가했고 GrayWolf placement가 실패했다.
- 따라서 현재 안정적인 최적점은 RF 출력 포트는 유지하고, 내부적으로 memory serial pin을 공유하는 기존 top 구조다.

판단:

- 표준 `LW/SW` DBUS 복구 자체는 가능하다.
- 면적도 `1.050mm x 1.017mm`에서 `1.023mm x 1.017mm`까지 줄었다.
- 다만 아직 MPW hard limit `1.000mm x 1.000mm`에는 못 들어왔다.
- 남은 초과분은 대략 폭 `23um`, 높이 `17um` 수준이다.
- 높이가 그대로 남는 것으로 보아 단순 셀 수 감소만으로는 부족하고, placement row 수를 줄일 만큼의 추가 셀 폭 절감 또는 floorplan/배치 조건 조정이 필요하다.

## 2026-05-21 추가: 표준 DBUS 유지 후속 최적화

목표:

- `DISABLE_DBUS=0`과 `WORD_MEM_ONLY=1`을 유지한다.
- 표준 `LW/SW` data memory 경로를 유지한다.
- RF/MEM 통합 serial path는 유지하되, 1mm x 1mm에 더 접근한다.

유효했던 변경:

- 물리 합성 script에서 `UNIFIED_SERIAL=1` 프로파일의 RF 전용 top port를 logic optimization 이후 삭제했다.
  - 삭제 대상: `o_rf_mosi`, `o_rf_sck`, `o_rf_sync`, `i_rf_miso`
  - 내부 RF/MEM 공유 serial 동작은 유지하고, 물리 top pin/buffer 부담만 제거한다.
- ABC mapping script에 `dch`를 추가했다.
  - 기존: `strash; ifraig; scorr; dc2; strash; map -a`
  - 변경: `strash; ifraig; scorr; dc2; dch; strash; map -a`

최신 물리 결과:

| 단계 | DFF | synth cells | place cells | total width | DEF die | route |
|---|---:|---:|---:|---:|---|---|
| `active_rf` 상태 흡수 후 | 279 | 1519 | 1609 | 2,808,000 | 약 `1.023mm x 1.017mm` | fail, 17 failed nets |
| RF top port post-ABC 삭제 | 279 | 1516 | 1606 | 2,804,400 | 약 `1.014mm x 1.017mm` | fail, 16 failed nets |
| RF port 삭제 + ABC `dch` | 279 | 1503 | 1595 | 2,786,400 | 약 `1.008mm x 1.017mm` | fail, 36 failed nets |

추가로 확인한 닫힌 경로:

- `initial_density=1.05`는 DEF die 크기를 줄이지 못했다.
- `req_pending` 제거는 기능은 통과했지만 synth cells가 증가해 폐기했다.
- `has_fetched_first_insn` guard 제거도 기능은 통과했지만 synth cells가 증가해 폐기했다.
- `active_we` 제거는 면적은 소폭 줄었지만 `SW/LW` directed test가 실패해 폐기했다.
- `o_rf_rdata` 2비트를 `shift_reg` 하위 비트로 공유하는 실험은 기능은 통과했지만 synth cells가 증가해 폐기했다.
- `MEM_ADDR_BITS=7`은 주소 폭은 줄지만 mapping 결과가 악화되어 폐기했다.
- ABC `dch` choice를 그대로 `map -a`에 넘기거나, 추가 `dc2`/`resyn2`류 script를 쓰는 실험은 악화 또는 실패했다.

판단:

- 현재 구조에서 표준 `LW/SW` DBUS를 유지한 최선 결과는 DEF 기준 약 `1.008mm x 1.017mm`이다.
- 1mm x 1mm까지 남은 초과분은 폭 약 `8um`, 높이 약 `17um`이다.
- 즉 불가능하다고 단정할 수준은 아니지만, 이제 단순 RTL 미세 조정보다는 placement row 수를 줄일 정도의 구조 절감이 필요하다.
- 다음 후보는 RF read prefetch/stream 제어를 더 줄이거나, off-chip serial protocol에서 IBUS/DBUS 구분 bit 같은 외부 frame metadata를 제거하는 쪽이다.

## 2026-05-21 추가: 1mm 진입 실험 결과

목표:

- 표준 DBUS를 끄지 않는다.
- `LW/SW` data memory 경로는 유지한다.
- `WORD_MEM_ONLY=1` 범위에서 word 단위 `LW/SW` 사용성을 우선한다.
- RF/MEM 통합 serial path를 유지한다.

추가한 유효 최적화:

- `WORD_MEM_ONLY=1` 물리 프로파일에서 memory serial frame의 `IBUS access flag`를 제거했다.
  - 외부 메모리는 instruction/data read를 같은 read로 처리할 수 있으므로 외부 frame에는 구분 비트가 필요 없다.
  - memory header는 `ADDR_BITS + 6`에서 `ADDR_BITS + 1`로 축소된다.
- `offchip_mem_bridge`의 `active_ibus` 플롭을 제거하고, ack 시점의 현재 `cyc` 상태로 IBUS/DBUS ack를 선택하는 실험을 적용했다.
  - Wishbone master가 ack까지 `cyc`를 유지한다는 전제에 의존한다.
  - shared/unified serial 기본 directed test에서는 기능 PASS를 확인했다.
- 물리 top에서 `UNIFIED_SERIAL=1`일 때 RF 전용 top port를 tech mapping 전에 삭제한다.
- `vlogFanout`가 추가하는 내부 fanout buffer 85개를 제거한 mapped netlist로 place/route를 수행했다.
- QFlow의 `nofanout` 옵션은 `_sized.v` 생성 문제로 바로 쓸 수 없었다.
- `bufcell/clkbufcell`을 비우는 방법은 `vlogFanout` segmentation fault로 실패했다.
- 따라서 현재 1mm 진입 결과는 `my_mcu_top_mapped.v`를 직접 `rtlnopwr`로 변환한 극한 면적 프로파일이다.
- 재현용 Make target으로 `backend_physical_qflow/Makefile`에 `place_mapped_no_fanout`을 추가했다.
  - 사용 순서: `qflow synthesize -T etri050 my_mcu_top` 후 `make place_mapped_no_fanout`, 그 다음 `qflow route -T etri050 my_mcu_top`
  - 이 target은 QFlow synth가 만든 fanout-buffer 삽입 전 `synthesis/my_mcu_top_mapped.v`를 placement backup netlist로 변환한다.

최신 물리 결과:

| 단계 | DFF | synth cells | place cells | total width | DEF die | route |
|---|---:|---:|---:|---:|---|---|
| active_ibus 유지, RF port 삭제 + `dch` | 279 | 1500 | 1587 | 2,778,900 | 약 `1.005mm x 1.017mm` | 미확인 |
| `active_ibus` 제거, 일반 fanout buffer 유지 | 278 | 1493 | 1578 | 2,767,200 | 약 `1.002mm x 1.017mm` | 미확인 |
| 출력 buffering deferred | 278 | 1490 | 1575 | 2,763,600 | 약 `1.041mm x 0.981mm` | 폭 초과 |
| fanout drive 완화 | 278 | 1493 | 1578 | 2,763,600 | 약 `1.038mm x 0.981mm` | 폭 초과 |
| fanout buffer 제거 mapped netlist | 278 | 1493 | 1493 | 2,622,000 | 약 `0.984mm x 0.981mm` | pass |

route 결과:

```text
DEF DIEAREA ( 0 0 ) ( 98400 98100 )
Final: No failed routes!
```

기능 검증:

```text
RF frames observed = 20007 writes=1088 reads=18918 invalid=0
Memory frames observed = 1181 writes=53 reads=1128
Instruction fetches = 1114 last_pc=000004fc last_insn=0000006f
[TB PASS] rv32i directed tests passed on my_mcu_top off-chip path
```

해석:

- 표준 DBUS를 유지한 상태에서 처음으로 1mm x 1mm 안쪽 배치/라우팅 결과를 얻었다.
- 다만 이 결과는 fanout buffer를 제거한 극한 면적 프로파일이라, `i_clk_sys_ext`, `mem_ibus_ack` 같은 고fanout net의 구동/타이밍 여유가 악화될 수 있다.
- 따라서 "면적상 가능"은 확인했지만, 최종 tape-out 후보로 보려면 STA 또는 post-layout timing 검토가 필요하다.
- `active_ibus` 제거는 shared/unified serial directed test에서 PASS했다.
- 단, 현재 directed test는 물리 합성 파라미터 전체(`RV32E_MODE=1`, `WORD_MEM_ONLY=1`, `MEM_ADDR_BITS=8`, `RESET_STRATEGY="NONE"`)를 그대로 걸고 도는 테스트는 아니므로, tape-out 직전에는 physical profile 전용 testbench를 별도로 한 번 더 돌려야 한다.

## 2026-05-22 추가: physical profile DBUS smoke 및 안정화 옵션 교차검증

추가한 전용 testbench:

- `testbench/9_testbench_physical_profile/tb_physical_profile.v`
- 목적:
  - `RV32E_MODE=1`
  - `MEM_ADDR_BITS=8`
  - `WORD_MEM_ONLY=1`
  - `SHARED_SERIAL=1`
  - `UNIFIED_SERIAL=1`
  - 외부 slow clock 사용
  - unified memory serial line에서 RF frame과 memory frame이 함께 흐를 때 word `LW/SW`가 최소 동작하는지 확인

검증 결과:

```text
Physical profile smoke: RV32E + 8-bit WORD_MEM_ONLY DBUS
Program words = 20
TB_MEM_WRITE: addr=80 data=0000000c
TB_MEM_WRITE: addr=84 data=0000000d
TB_MEM_WRITE: addr=88 data=00000015
[PASS] memory[0x80]=0000000c
[PASS] memory[0x84]=0000000d
[PASS] memory[0x88]=00000015
RF frames observed = 475 writes=96 reads=379 invalid=0
Memory frames observed = 24 writes=3 reads=21
[TB PASS] physical profile LW/SW smoke passed
```

주의:

- 위 smoke PASS는 `RESET_STRATEGY="MINI"` 및 `USE_RF_INTERLOCK=1`을 켠 기능 안정화 조합에서 확인했다.
- 정확한 1mm 면적 프로파일인 `RESET_STRATEGY="NONE"`, `USE_RF_INTERLOCK=0` 조합은 physical smoke에서 다음 문제가 드러났다.
  - `RESET_STRATEGY="NONE"`: 시뮬레이션에서 RF frame이 나오지 않고 instruction fetch가 address `0x00`에 머무는 현상 관찰.
  - `USE_RF_INTERLOCK=0`: reset을 `MINI`로 바꿔도 RF operand timing이 깨져 `ADD` 결과가 `0`으로 저장되는 현상 관찰.
- 따라서 현재 1mm 진입 netlist는 "면적/route 가능" 상태이고, 기능 안정화까지 동시에 만족하는 최종 tape-out 후보는 아니다.

안정화 옵션의 면적 비용:

| 조합 | synth cells | place cells | total width | DEF die | 판단 |
|---|---:|---:|---:|---|---|
| `RESET_STRATEGY=NONE`, `USE_RF_INTERLOCK=0` | 1493 | 1493 | 2,622,000 | `0.984mm x 0.981mm` | 1mm/route pass, 기능 리스크 |
| `RESET_STRATEGY=MINI`, `USE_RF_INTERLOCK=1` | 1840 | 1840 | 3,272,700 | `1.104mm x 1.089mm` | smoke pass, 면적 fail |

최신 route/STA:

```text
DEF DIEAREA ( 0 0 ) ( 98400 98100 )
Final: No failed routes!
Computed maximum clock frequency (zero margin) = 113.457 MHz
Design meets minimum hold timing.
```

현재 결론:

- 표준 DBUS 자체는 `WORD_MEM_ONLY=1` 범위에서 살릴 수 있다.
- 그러나 1mm에 들어가는 극한 프로파일은 reset/interlock을 너무 많이 제거한 상태라, 실제 칩 동작 관점에서는 위험하다.
- 다음 최적화 방향은 `RESET_STRATEGY=MINI` 또는 최소 reset subset, 그리고 RF interlock에 준하는 operand 안정화 기능을 더 작게 재구현하는 것이다.
- 즉 "DBUS를 없애야만 한다"가 아니라, "DBUS + 기능 안정화 로직을 넣으면 현재 구조로는 1mm를 초과한다"가 더 정확한 상태다.

## 2026-05-22 추가: 표준 DBUS 유지 1mm 재진입 후보

목표:

- 표준 `LW/SW` DBUS 경로를 되살린 상태를 유지한다.
- RF는 RV32E 16개 GPR 기준 off-chip serial RF를 사용한다.
- `read_buf1[31:0]` full prefetch는 되살리지 않고, rs2는 streaming read로 공급한다.
- 1mm x 1mm 물리 제약을 우선한다.

이번에 유효했던 변경:

- `RESET_STRATEGY="STATE_ONLY"` 후보를 유지했다.
  - SERV state/counter와 RF adapter 제어 상태는 reset한다.
  - PC register와 memory bridge 전체 reset은 제거한다.
- `USE_RF_INTERLOCK=0`에서도 instruction fetch 시점의 decoded `rs1/rs2`를 작게 latch해서 RF operand stale 문제를 보정했다.
- RF adapter의 `STATE_ONLY` reset 범위를 줄였다.
  - `read_buf0[31:0]`, `read_buf1[31:0]`, `rs2_stream_buf`, write shift data 등 datapath reset은 제거했다.
  - `prefetch_active`, `pending_read`, `issue_idx`, `stream_active`, `stream_cnt`, `wen*_r`, `write_chunk` 등 제어 상태 reset은 유지했다.
  - 이 변경만으로 synth cell이 크게 감소했다.
- `MEM_ADDR_BITS`는 `7`에서 `6`으로 축소했다.
  - 표준 word `LW/SW` 명령은 유지한다.
  - 단, 외부 memory address window는 128B에서 64B로 줄어든다.

최신 물리 결과:

| 항목 | 결과 |
|---|---:|
| `MEM_ADDR_BITS` | 6 |
| `RESET_STRATEGY` | `STATE_ONLY` |
| `USE_RF_INTERLOCK` | 0 |
| `DISABLE_DBUS` | 0 |
| `WORD_MEM_ONLY` | 1 |
| synth cells | 1525 |
| DFF | `277 DFFPOSX1`, `1 DFFSR` |
| place cells | 1525 |
| total width | 2,656,800 |
| DEF die | `0.996mm x 0.981mm` |
| route | `Final: No failed routes!` |
| STA zero-margin max clock | `117.285 MHz` |
| hold | pass |

재현 명령:

```sh
cd MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow
qflow synthesize -T etri050 my_mcu_top
make place_mapped_no_fanout
qflow route -T etri050 my_mcu_top
qflow sta -T etri050 my_mcu_top
```

확인된 로그 요약:

```text
DIEAREA ( 0 0 ) ( 99600 98100 ) ;
Number of cells = 1525, total width = 2656800
Final: No failed routes!
Computed maximum clock frequency (zero margin) = 117.285 MHz
Design meets minimum hold timing.
```

아직 남은 검증:

- 이번 최종 후보의 RTL smoke test는 아직 재확인 필요하다.
- Vivado/XSim 실행은 현재 권한/사용량 제한으로 실행하지 못했다.
- `iverilog` 대체 시뮬레이션은 SERV 원본 RTL의 declaration-order 문제로 elaboration이 실패했다.
- 따라서 현재 상태는 "표준 DBUS 유지 + 1mm 배치/라우팅/STA 후보"이며, tape-out 후보로 확정하려면 physical profile smoke를 다시 PASS시켜야 한다.

판단:

- 데이터 메모리를 완전히 포기하지 않아도 1mm 안에 들어가는 후보를 확보했다.
- 포기한 것은 표준 `LW/SW` 자체가 아니라, memory address window 크기와 RF adapter datapath reset이다.
- 가장 큰 리스크는 `STATE_ONLY`에서 reset하지 않는 datapath register의 power-up X 상태다.
  - 시뮬레이션에서는 첫 prefetch/write sequence가 해당 데이터를 덮어쓰는지 확인해야 한다.
  - 실제 silicon 관점에서는 외부 reset 후 dummy instruction 또는 boot ROM 초기 sequence로 상태를 안정화하는 방안도 같이 검토할 필요가 있다.
