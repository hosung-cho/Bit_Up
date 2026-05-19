# ETRI 0.5um QFlow Physical Implementation 초기 결과

작성 시각: 260519_1256

## 목적

현재 CSR-off RV32I off-chip RF/Memory MCU가 기능 시뮬레이션에서는 5/6/7/8번 테스트를 통과한 상태이므로, MPW tape-out의 실제 제약인 `1mm x 1mm` 안에 들어갈 수 있는지 ETRI 0.5um 공정의 physical implementation flow로 확인한다.

참조한 로컬 자료:

- `ETRI-0.5um-CMOS-MPW-Std-Cell-DK/docs/ETRI_연구노트/연구노트10_C-to-GDS_FIR_필터_2부_합성_배치배선.pdf`
- `ETRI-0.5um-CMOS-MPW-Std-Cell-DK/Tutorials/2-7_Lab5_FIR8_rtl_ETRI050/`
- `ETRI-0.5um-CMOS-MPW-Std-Cell-DK/Tutorials/4-1_ALU8_Mult/`

## 새로 만든 physical flow 디렉터리

위치:

- `A_MCU/backend_physical_qflow/`

구성:

- `Makefile`: `qflow synthesize/place/sta/route/migrate/lvs/size` 타겟
- `project_vars.sh`: qflow/graywolf/qrouter 설정
- `source/my_mcu_top.ys`: qflow용 Yosys synthesis script
- `layout/my_mcu_top.par`: GrayWolf parameter
- `layout/my_mcu_top.cel2`: top-level pin placement hint
- `source/*.v`: 실제 RTL 파일로 향하는 symlink

사용 tool:

- `qflow`
- `yosys`
- `graywolf`
- `qrouter`
- `magic`
- `netgen`

## 현재 physical flow 진행 결과

### 1. QFlow synthesis

명령:

```sh
cd MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow
make synthesize
```

결과:

- 합성 통과
- output netlist 생성됨
  - `synthesis/my_mcu_top.rtl.v`
  - `synthesis/my_mcu_top.rtlnopwr.v`
  - `synthesis/my_mcu_top.rtlbb.v`
  - `synthesis/my_mcu_top.spc`

합성 후 주요 cell count:

| 항목 | 개수 |
|---|---:|
| 전체 cells | 2704 |
| `DFFPOSX1` | 344 |
| `DFFSR` | 46 |
| `BUFX2` | 23 |
| `MUX2X1` | 46 |
| `OAI21X1` | 563 |
| `NAND2X1` | 401 |
| `INVX1` | 377 |

추가로 qflow의 fanout 보정 단계에서 다음이 발생했다.

- `clk_sys` fanout 320
- `i_clk_fast` input fanout 76
- `vlogFanout`가 245개 buffer 추가
- 이후 추가 fanout pass에서 6개 buffer 추가

즉, RTL 합성 cell count보다 physical flow에서 실제 배치 대상 cell 수가 더 커진다.

### 2. QFlow placement

명령:

```sh
make place
```

초기 문제:

- GrayWolf가 X server에 접속하려고 하면서 실패
- `layout/my_mcu_top.par`에 `TWSC*no.graphics : on` 설정
- `project_vars.sh`에 `set graywolf_options = "-n"` 추가

현재 결과:

- placement 통과
- `initial_density = 0.90` 적용
- `layout/my_mcu_top.def` 생성

DEF 기준 면적:

| 항목 | 값 |
|---|---:|
| DEF units | 100 units / micron |
| DIE width | 1467.0 um |
| DIE height | 1419.0 um |
| DIE area | 2.082 mm² |

placement log 기준:

- total components: 4822
- fill cells: 1880
- other cells: 2942
- actual final routing tracks: 397

### 3. QFlow route

명령:

```sh
make route
```

결과:

- qrouter 실행 완료
- post-route Verilog 생성됨
  - `synthesis/my_mcu_top_postroute.v`
- 하지만 완전 clean route는 아님

최종 route 실패:

```text
Final: Failed net routes: 1
List of failed nets follows:
 o_gpio[7]
```

실패 원인 로그:

```text
Node o_gpio[7]/o_gpio[7] of net o_gpio[7] has no tap points---unable to route!
```

placement 단계에서도 input GPIO pin 쪽에 bounding box warning이 있었다.

```text
Warning: pin i_uart_rx has no bounding box.
Warning: pin i_gpio[7] has no bounding box.
...
Warning: pin i_gpio[0] has no bounding box.
```

현재 `source/my_mcu_top.ys`는 `iopadmap -outpad BUFX2 A:Y -bits`만 사용한다. 즉 output 쪽은 BUFX2로 매핑되지만 input port의 physical pin/bounding box 처리까지 완성된 pad/IO flow는 아니다. GPIO route 문제는 이 pin 처리 또는 GPIO 제거/축소로 먼저 정리해야 한다.

## 가장 중요한 결론

현재 설계는 기능적으로는 많이 완성되었지만, physical implementation 기준으로는 아직 `1mm x 1mm` tape-out-ready가 아니다.

핵심 수치:

- 공격적인 `initial_density = 0.90`에서도 배치 DEF 면적이 약 `2.082 mm²`
- 목표 `1.0 mm²` 대비 약 2배 이상
- 실제 tape-out에서는 routing margin, power routing, IO/pad 처리, DRC 여유가 필요하므로 목표는 단순히 1.0mm² 이하가 아니라 그보다 더 작아야 한다

따라서 현재 RTL 그대로는 1mm² 제약 통과가 어렵다.

## 왜 Yosys logical area와 physical area가 다르게 보이는가

이전 `backend_synth`의 Yosys area는 cell library의 logical area metric이다. 반면 qflow placement는 LEF에 정의된 실제 standard cell 크기와 row 배치를 사용한다.

ETRI qflow LEF 기준 예:

- `DFFPOSX1`: `36um x 36um`
- `DFFSR`: `72um x 36um`
- `BUFX2`: `12um x 36um`
- `FILL`: `3um x 36um`

현재 placement log의 핵심 값:

```text
Number of cells = 2942, total width = 5076900
Average cell height = 3.60e+03
```

qflow 단위가 centimicron 계열로 표시되므로, raw standard-cell row 면적만 대략 계산해도:

- total row width 약 `50,769 um`
- row height `36 um`
- raw placed cell area 약 `1.83 mm²`

즉 routing/fill/margin 이전의 raw standard-cell 물리 면적 자체가 이미 1mm²를 넘는다. 그러므로 현재 구조는 밀도를 100%로 올려도 1mm² 안에 들어갈 수 없다.

## 현재 병목

1. Sequential cell 수가 여전히 많다.
   - `DFFPOSX1` 344개
   - `DFFSR` 46개
   - off-chip RF를 적용했지만, SERV 내부 상태/버퍼, RF bridge, memory bridge, interlock 상태가 남아 있다.

2. fanout buffer가 많이 추가된다.
   - `clk_sys` fanout 320
   - qflow가 245개 이상의 buffer를 추가
   - clock/reset/enable 계열의 physical load가 면적을 늘린다.

3. GPIO/UART 등 최종 tape-out에 필수인지 애매한 top-level IO가 남아 있다.
   - GPIO route 실패 발생
   - input pin bounding box warning 존재
   - 제거하거나 별도 pad strategy를 정해야 한다.

4. qflow용 IO/pad mapping이 아직 완성형이 아니다.
   - 현재는 stdcell BUFX2 output pad mapping 수준
   - 실제 MPW pad ring/IO cell 계획은 별도 정리가 필요하다.

## 다음 액션 제안

면적이 최우선이면 다음 순서가 현실적이다.

1. `my_mcu_top`과 별도로 tape-out 최소 top을 만든다.
   - GPIO 제거
   - UART 제거 또는 optional화
   - 외부 RF serial 4핀, memory serial 4핀, clock/reset만 남김
   - 테스트용 top과 tape-out top을 분리

2. clock 구조를 다시 본다.
   - 내부 `clk_sys` divider가 고 fanout DFF/clock tree 비용을 만든다.
   - 가능하면 외부 slow clock 직접 입력 방식으로 줄인다.
   - 성능은 포기해도 되므로 clock divider/enable fanout을 줄이는 방향이 맞다.

3. reset 사용을 줄인다.
   - `DFFSR`는 `DFFPOSX1`보다 물리 폭이 2배다.
   - 반드시 reset이 필요한 상태만 reset하고, datapath shift/buffer류는 초기화 의존도를 제거할 수 있는지 검토한다.

4. RF/memory serial bridge의 저장 상태를 줄인다.
   - 현재 off-chip화로 RF RAM은 빠졌지만, bridge 쪽 shift buffer와 read buffer가 상당한 sequential area를 만든다.
   - 정확성을 유지하면서 read buffer 폭/상태 수를 줄일 수 있는지 검토한다.

5. 다시 qflow synth/place/route를 반복한다.
   - 목표는 placement DEF 기준으로 최소 1mm² 이하가 아니라, routing까지 고려해 더 작게 잡아야 한다.
   - 현재 2.08mm²에서 1mm² 이하로 가려면 단순 pin cleanup이 아니라 구조적 절감이 필요하다.

## 현재 판정

- 기능 검증: 상당히 긍정적
- qflow synthesis: 통과
- qflow placement: 통과
- qflow route: 1개 net 실패로 clean 아님
- 1mm² physical area 제약: 현재 실패

따라서 “기능 개발 완료”라고는 말할 수 있지만, “MPW 1mm x 1mm tape-out 준비 완료”라고 보기는 아직 어렵다. 다음 단계는 기능 추가가 아니라, tape-out 최소 top과 물리 면적 중심의 구조 축소다.
