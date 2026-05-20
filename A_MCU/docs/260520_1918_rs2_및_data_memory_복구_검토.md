# rs2 및 data memory 복구 검토

작성 시각: 260520_1918

## 목적

`1mm x 1mm` 면적을 맞추기 위해 `rs2` read와 data memory를 모두 포기한 것은 기능 손실이 너무 크다.

따라서 다음 후보를 실제 합성/배치 기준으로 검토했다.

- `rs2` 복구: `SINGLE_RF_READ=0`
- data memory 복구: `DISABLE_DBUS=0`
- data memory는 full byte/halfword가 아니라 `LW/SW` 중심 word-only 후보도 검토

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

### rs2 opcode-gated streaming

처음 `STREAM_RS2_READ=1` 후보는 모든 instruction에서 rs2 stream read를 걸어 full RV32I directed test에서 광범위하게 실패했다. 이후 R-type/branch/store처럼 rs2가 필요한 opcode에서만 stream read를 켜도록 수정했다.

검증 결과:

```text
RF frames observed = 18234 writes=1088 reads=17145 invalid=0
Memory frames observed = 1019 writes=53 reads=966
Instruction fetches = 952
```

full RV32I directed test 결과:

- store, load, I-type ALU, branch, jump 계열은 PASS
- R-type 중 `SLL/SLT/SLTU/SRL/SRA`는 PASS
- R-type 중 `ADD/SUB/XOR/OR/AND` 5개가 FAIL

남은 실패는 writeback 결과가 1-bit 밀린 형태로 나타난다. 따라서 rs2 stream 자체는 상당 부분 맞았지만, ADD/SUB/boolean ALU의 RF writeback phase와 아직 완전히 정렬되지 않았다.

physical 결과:

```text
DFFPOSX1: 272
Number of cells = 1523
Initial core layout: (150 150) to (99450 97350) (scale um * 100)
DIEAREA ( -600 0 ) ( 100200 98100 ) ;
Final: No failed routes!
```

해석:

- core: 약 `0.993mm x 0.972mm`
- DEF die: 약 `1.008mm x 0.981mm`
- route: no failed routes

즉 opcode-gated streaming은 기능 검증 면에서는 크게 전진했지만, 현재 DEF 기준으로 x축이 약 `8um` 초과한다. aspect ratio와 density 미세 조정은 이 row 배치에서 초과분을 없애지 못했다.

## 검증

기본 canonical profile은 `WORD_MEM_ONLY=0`이므로 기존 RV32I directed test를 유지한다.

```text
[TB PASS] rv32i directed tests passed on my_mcu_top off-chip path
```

QFlow 성공 profile은 다시 `my_mcu_top_custom.ys`에 유지했다.

현재 regenerated 성공 profile 결과:

```text
Chip area for module '\my_mcu_top': 499176.000000
DFFPOSX1: 264
Initial core layout: (150 150) to (98550 93750) (scale um * 100)
DIEAREA ( -600 0 ) ( 99300 94500 ) ;
Final: No failed routes!
```

해석:

- core: 약 `0.984mm x 0.936mm`
- DEF die: 약 `0.999mm x 0.945mm`
- route: no failed routes

추가 RF 단독 테스트:

- `STREAM_RS2_READ=1` RF 단독 테스트에서 SERV counter 기준 rs1/rs2 expected word를 확인했다.
- Vivado/XSim directed run은 sandbox 밖에서 정상 실행했다.
- opcode-gated streaming full-core directed는 5개 R-type 산술/논리 케이스만 남기고 대부분 PASS했다.

## 결론

`rs2`와 data memory는 기능적으로 반드시 살리고 싶은 항목이지만, 현재 SERV off-chip RF/data-bus 구조에서는 둘을 동시에 복구하면 1mm를 넘는다.

단순 `SINGLE_RF_READ=0` 복구는 DEF 기준 약 `1.050mm x 1.017mm`가 되어 1mm를 넘었다. `STREAM_RS2_READ=1`로 RF read 구조를 바꾸면 한때 DEF 기준 약 `0.990mm x 0.981mm`까지 내려왔지만, full-core 기능을 위해 opcode gating을 추가하면 현재 DEF 기준 약 `1.008mm x 0.981mm`로 다시 x축이 약간 초과한다.

현실적인 다음 선택지는 둘 중 하나다.

1. `STREAM_RS2_READ=1` 후보에서 ADD/SUB/XOR/OR/AND writeback phase를 맞추고, 동시에 약 `8um`의 x축 초과를 줄인다.
2. 이 둘을 동시에 만족하지 못하면 기존 `SINGLE_RF_READ=1` 제한형 proof-of-silicon profile로 되돌린다.

data memory는 SERV의 정식 data bus를 되살리는 방식이 아니라, 더 작은 custom mailbox/result-register 방식으로 별도 설계해야 한다. 그러나 이번 `STORE_ONLY_DBUS` 실험상 SERV data bus 자체를 켜는 비용이 커서, 단순 store-only/word-only 상수화만으로는 충분하지 않다.
