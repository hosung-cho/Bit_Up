# 260519 17:30 외부 Slow Clock 및 Serial Bridge 면적 검토

## 목적

1. `my_mcu_top` 내부의 `clk_sys` 분주기를 제거하고, 외부에서 별도 slow SERV clock을 직접 입력받는 구조를 검토한다.
2. Serial bridge 내부 상태/버퍼를 줄일 수 있는지 확인한다.
3. qflow 물리 구현에서 실제 면적 및 route 결과가 개선되는지 확인한다.

## RTL 변경 요약

### 1. `my_mcu_top` 외부 slow clock 옵션 추가

원본 동작 보존을 위해 기본값은 내부 divider 모드로 유지했다.

```verilog
parameter integer CLK_SYS_DIV = 32,
parameter integer USE_EXT_SYS_CLK = 0
```

추가 포트:

```verilog
input wire i_clk_sys_ext
```

동작:

- `USE_EXT_SYS_CLK=0`: 기존처럼 `i_clk_fast`를 내부 divider로 나누어 `clk_sys` 생성
- `USE_EXT_SYS_CLK=1`: `clk_sys = i_clk_sys_ext`

주의점:

- `i_clk_fast`와 `i_clk_sys_ext`는 서로 다른 목적의 클록이다.
- 단일 클록으로 fast serial clock과 SERV slow clock을 동시에 쓰는 방식은 기능적으로 실패했다.
- 이유는 RF serial frame 전송이 여러 fast cycle을 요구하는데, SERV가 같은 속도로 다음 RF 접근을 밀어 넣으면 bridge가 따라가지 못하기 때문이다.

### 2. qflow physical 전용 source 설정

qflow는 `source/*.v` 기준으로 Yosys script를 재생성하므로, `source/my_mcu_top.v`의 physical 구현 복사본만 `USE_EXT_SYS_CLK=1`로 설정했다.

canonical RTL인 `src/rtl/my_mcu_top.v`는 기존 simulation compatibility를 위해 기본값 `USE_EXT_SYS_CLK=0`을 유지한다.

### 3. `offchip_mem_bridge` 상태 축소 검토

현재 memory serial bridge는 이미 큰 address/data latch를 따로 들고 있지 않고, frame 생성 시 live bus signal을 사용한다.

남아 있는 주요 상태는 다음 정도다.

- `shift_rx[31:0]`: read data를 ack 시점까지 보존하기 위해 필요
- `bit_count[6:0]`: 70-bit frame shift 위치
- `active_ibus`, `active_we`: ack 대상 및 frame type
- `req_pending`, `clk_sys_prev`: slow/fast clock crossing 안정화를 위한 최소 상태

`req_pending` 제거도 검토했으나, slow clock edge 직후 bus signal 안정 시간을 확보하는 역할이 있어서 기본 correct 모드에서는 유지했다.

### 4. RF serial bridge 상태 축소 검토

`serv_rf_ram` 쪽 RF serial bridge는 현재 read 결과가 `width=2`라 `shift_rx[1:0]`만 가진다.

남은 주요 상태:

- `tx_state[4:0]`: RF frame bit counter
- `shift_rx[1:0]`: 2-bit RF read result
- `last_req_key`, `req_seen`, `launch_pending`: 동일 RF chunk 중복 전송 방지 및 SERV pulse 포착용

여기서 32-bit operand buffer는 `serv_rf_ram_if`의 `read_buf0/read_buf1`에 존재한다. 이것은 SERV가 `rf_ready` 이후 32 cycle 동안 operand bit를 소비하기 때문에 현재 protocol에서는 제거하면 정확성이 깨질 가능성이 높다.

즉, serial bridge 자체의 상태는 이미 작은 편이고, 큰 면적은 RF operand holding / CPU state / bus bridge / clock buffering 쪽에 남아 있다.

## 기능 검증

기본 RTL 모드(`USE_EXT_SYS_CLK=0`)에서 5번 directed testbench 재확인:

```text
[TB PASS] rv32i directed tests passed on my_mcu_top off-chip path
RF frames observed = 15697 writes=1088 reads=14608 invalid=0
Memory frames observed = 861 writes=53 reads=808
Instruction fetches = 794 last_pc=000004fc last_insn=0000006f
```

외부 slow clock physical 모드는 별도 board/Pico clocking 전제가 필요하다. 단일 clock direct mode는 실패했으므로 사용 금지다.

## qflow 결과

### 합성

외부 slow clock physical mode가 실제로 적용된 후의 Yosys/qflow synth 결과:

```text
2660 cells
339 DFFPOSX1
46  DFFSR
Top internal fanout is 127 from node rst
Top input node fanout is 318 from node i_clk_sys_ext
241 buffers were added
6 buffers were added
```

비교 기준인 내부 divider 모드:

```text
2680 cells
344 DFFPOSX1
46  DFFSR
Top internal fanout is 320 from node gen_int_sys_clk.clk_sys_r
```

효과:

- divider 관련 DFF 약 5개 제거
- 전체 cell 약 20개 감소
- 내부 고 fanout clock source가 divider flop에서 외부 `i_clk_sys_ext` input으로 이동
- 클록 fanout 자체는 CPU 전체 플롭을 먹이므로 크게 줄지 않음

### 배치

DEF die area:

```text
1449.0um x 1419.0um = 2.056mm^2
```

이전 초기 결과 약 `2.082mm^2` 대비 약 1.3% 감소했다.

### 라우팅

이번 외부 slow clock physical mode에서는 qrouter가 최종 성공했다.

```text
Final: No failed routes!
```

이전 초기 결과에서는 `o_gpio[7]` 계열 route 실패가 있었으므로, route closure 측면에서는 개선이 있었다.

### STA

Vesta STA 결과:

```text
Computed maximum clock frequency (zero margin) = 102.526 MHz
ERROR: Design fails minimum hold timing.
```

해석:

- max delay 기준으로는 매우 느린 MPW 동작 클록에는 충분한 여지가 있다.
- 하지만 hold timing 실패가 남아 있다.
- 현재 qflow/Vesta 흐름은 `i_clk_fast`와 `i_clk_sys_ext`의 실제 보드/Pico clock relation, CDC, false/multicycle path 제약을 제대로 반영하지 않았다.
- 따라서 route 성공은 의미 있지만, STA signoff는 아직 완료가 아니다.

## 결론

Clock divider 제거는 구현 가능하고 route closure에는 도움이 됐다. 하지만 면적 효과는 작다.

현재 physical 면적은 약 `2.056mm^2`로, 목표 `1mm x 1mm`에 아직 크게 못 미친다. divider 제거와 serial bridge 미세 축소만으로는 목표 달성이 어렵다.

1mm² 진입을 위해서는 다음 단계에서 더 큰 구조적 선택이 필요하다.

- tapeout minimal top 구성: GPIO/UART 등 비핵심 주변장치 제거 또는 축소
- instruction/data memory bridge frame 폭 축소 또는 protocol 재설계
- RF operand buffer 구조 재검토
- reset fanout 및 clock buffering 제약 재정리
- 가능하다면 SERV core + off-chip RF/mem만 남긴 최소 proof-of-silicon top 별도 생성

