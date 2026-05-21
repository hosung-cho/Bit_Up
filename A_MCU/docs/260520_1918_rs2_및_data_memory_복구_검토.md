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
