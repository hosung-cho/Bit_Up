# UART-Controlled PWM Generator Architecture

## 1. 설계 목표

6502 CPU를 MPW 면적 안에 넣기 어렵기 때문에, CPU 기반 구조 대신 목적 지향형 하드웨어 제어 구조를 사용한다. 본 설계는 UART 명령을 받아 내부 레지스터를 제어하고, 레지스터 값에 따라 PWM 파형을 생성하는 소형 디지털 칩이다.

핵심 목표는 다음과 같다.

- 외부 장치에서 UART로 PWM 설정 가능
- CPU 없이 FSM과 레지스터만으로 동작
- MPW에 넣기 쉬운 작은 면적
- 테스트벤치와 실제 외부 MCU 제어가 쉬운 구조

---

## 2. Top-Level Interface

```verilog
module uart_pwm_top #(
    parameter CLKS_PER_BIT = 87
)(
    input  wire       clk,
    input  wire       reset_n,
    input  wire       uart_rx_i,
    output wire       uart_tx_o,
    output wire [3:0] pwm_out
);
```

| 포트 | 방향 | 설명 |
|---|---|---|
| `clk` | input | 시스템 클럭 |
| `reset_n` | input | active-low reset |
| `uart_rx_i` | input | 외부 UART TX에서 들어오는 수신 신호 |
| `uart_tx_o` | output | readback 응답용 UART TX |
| `pwm_out[3:0]` | output | 4채널 PWM 출력 |

---

## 3. 모듈별 역할

### 3.1 `uart_rx.v`

UART RX 입력을 1바이트 데이터로 변환한다.

- 8 data bits
- no parity
- 1 stop bit
- LSB first
- 수신 완료 시 `rx_valid`를 1클럭 동안 high

### 3.2 `uart_cmd_parser.v`

`uart_rx`에서 나온 바이트를 3개씩 묶어 명령으로 해석한다.

```text
[CMD][ADDR][DATA]
```

지원 명령:

| CMD | 의미 |
|---:|---|
| `0x01` | register write |
| `0x02` | register read |

### 3.3 `reg_bank.v`

PWM 제어 레지스터를 저장한다.

주요 레지스터:

- `CTRL`
- `PRESCALE`
- `PERIOD`
- `DUTY0~DUTY3`
- `CH_ENABLE`

### 3.4 `pwm_core.v`

공유 PWM 카운터와 비교기를 이용해 4채널 PWM을 생성한다.

```text
pwm_out[x] = ch_enable[x] && global_enable && (pwm_cnt < duty[x])
```

### 3.5 `uart_tx.v`

read 명령이 들어왔을 때 레지스터 값을 UART로 전송한다.

---

## 4. 제어 흐름

```text
1. 외부 MCU가 UART로 3바이트 명령 전송
2. uart_rx가 각 바이트를 수신
3. uart_cmd_parser가 CMD, ADDR, DATA를 해석
4. CMD_WRITE이면 reg_bank에 write
5. CMD_READ이면 reg_bank 값을 uart_tx로 반환
6. pwm_core는 reg_bank 값을 계속 읽어 PWM 출력 생성
```

---

## 5. PWM 생성 흐름

```text
system clock
    |
    v
prescaler counter
    |
    v
pwm_tick 생성
    |
    v
pwm counter 증가
    |
    v
pwm_cnt와 duty 비교
    |
    v
pwm_out[3:0] 생성
```

---

## 6. MPW 관점의 장점

CPU 구조를 제거했기 때문에 다음 블록들이 필요 없다.

- instruction fetch
- instruction decoder
- ALU
- register file
- program counter
- memory interface
- instruction memory

대신 필요한 블록은 다음뿐이다.

- UART RX/TX
- command parser FSM
- register bank
- PWM counter/comparator

따라서 면적이 작고, 설계와 검증 난이도가 낮다.
