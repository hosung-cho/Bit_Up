# UART-Controlled 4-Channel PWM Generator

## 1. 프로젝트 개요

이 프로젝트는 MPW에 넣기 위한 소형 디지털 IP 예제이다. 외부 MCU, PC, Raspberry Pi Pico 등이 UART로 내부 제어 레지스터를 설정하면, 칩 내부의 PWM 생성기가 해당 레지스터 값을 기반으로 4채널 PWM 출력을 생성한다.

CPU나 6502 같은 범용 프로세서를 넣지 않고, 필요한 기능만 하드웨어 FSM과 레지스터 기반으로 구현했기 때문에 면적이 작고 검증이 단순하다.

---

## 2. 전체 구조도

```text
외부 MCU / PC / Raspberry Pi Pico
        |
        | UART TX/RX
        v
+-----------------------------------------------------+
|                 UART PWM Controller                 |
|                                                     |
|  +-----------+      +----------------+              |
|  | UART RX   | ---> | Command Parser |              |
|  +-----------+      +----------------+              |
|                           |                         |
|                           | reg_wr_en, addr, data   |
|                           v                         |
|                    +---------------+                |
|                    | Register Bank |                |
|                    +---------------+                |
|                       |     |     |                 |
|                       |     |     |                 |
|                       v     v     v                 |
|                    +----------------+               |
|                    |    PWM Core    |               |
|                    +----------------+               |
|                       |    |    |                   |
|                       v    v    v                   |
|                    PWM0 PWM1 PWM2 PWM3              |
|                                                     |
|  +-----------+                                      |
|  | UART TX   | <----- register read data            |
|  +-----------+                                      |
+-----------------------------------------------------+
```

---

## 3. 파일 트리

```text
uart_pwm_chip/
├── README.md
├── docs/
│   └── architecture.md
├── rtl/
│   ├── uart_rx.v
│   ├── uart_tx.v
│   ├── uart_cmd_parser.v
│   ├── reg_bank.v
│   ├── pwm_core.v
│   └── uart_pwm_top.v
├── tb/
│   └── tb_uart_pwm_top.v
└── sim/
    ├── filelist.f
    ├── run_iverilog.sh
    └── run_iverilog.bat
```

---

## 4. UART 명령 프로토콜

명령은 3바이트 고정 길이이다.

```text
[CMD][ADDR][DATA]
```

### Write 명령

```text
CMD  = 0x01
ADDR = 레지스터 주소
DATA = 쓸 데이터
```

예:

```text
01 04 F4
```

의미:

```text
DUTY0_L <= 0xF4
```

### Read 명령

```text
CMD  = 0x02
ADDR = 읽을 레지스터 주소
DATA = dummy byte
```

예:

```text
02 04 00
```

의미:

```text
DUTY0_L 값을 UART TX로 반환
```

---

## 5. 레지스터 맵

| 주소 | 이름 | 설명 |
|---:|---|---|
| `0x00` | `CTRL` | bit[0] = global enable |
| `0x01` | `PRESCALE` | PWM 클럭 분주값 |
| `0x02` | `PERIOD_L` | PWM period 하위 8비트 |
| `0x03` | `PERIOD_H` | PWM period 상위 8비트 |
| `0x04` | `DUTY0_L` | PWM0 duty 하위 8비트 |
| `0x05` | `DUTY0_H` | PWM0 duty 상위 8비트 |
| `0x06` | `DUTY1_L` | PWM1 duty 하위 8비트 |
| `0x07` | `DUTY1_H` | PWM1 duty 상위 8비트 |
| `0x08` | `DUTY2_L` | PWM2 duty 하위 8비트 |
| `0x09` | `DUTY2_H` | PWM2 duty 상위 8비트 |
| `0x0A` | `DUTY3_L` | PWM3 duty 하위 8비트 |
| `0x0B` | `DUTY3_H` | PWM3 duty 상위 8비트 |
| `0x0C` | `CH_ENABLE` | bit[3:0] = PWM 채널 enable |

---

## 6. PWM 동작 방식

PWM core는 하나의 공유 카운터 `pwm_cnt`를 사용한다. 각 채널의 출력은 다음 비교식으로 결정된다.

```text
PWMx = 1, if pwm_cnt < DUTYx
PWMx = 0, otherwise
```

주기는 다음과 같이 계산된다.

```text
PWM_CLK  = SYS_CLK / (PRESCALE + 1)
PWM_FREQ = PWM_CLK / (PERIOD + 1)
```

예를 들어 시스템 클럭이 10 MHz이고 다음과 같이 설정하면:

```text
PRESCALE = 9
PERIOD   = 999
DUTY0    = 500
```

계산은 다음과 같다.

```text
PWM_CLK  = 10 MHz / 10 = 1 MHz
PWM_FREQ = 1 MHz / 1000 = 1 kHz
DUTY0    = 500 / 1000 = 50%
```

---

## 7. 테스트벤치 동작

`tb/tb_uart_pwm_top.v`는 다음 순서로 동작한다.

1. reset 해제
2. UART write 명령으로 내부 레지스터 설정
3. `PRESCALE = 0`, `PERIOD = 9`, `DUTY0 = 5`, `DUTY1 = 2` 설정
4. PWM0, PWM1 활성화
5. global enable 활성화
6. 내부 레지스터 값 확인
7. PWM0 duty가 약 50%인지 확인
8. read 명령을 보내 UART TX 응답 파형 생성

테스트벤치에서는 시뮬레이션 시간을 줄이기 위해 `CLKS_PER_BIT = 16`으로 설정했다. 실제 합성에서는 시스템 클럭에 맞게 `CLKS_PER_BIT`를 변경해야 한다.

---

## 8. Icarus Verilog 실행 방법

Linux 또는 WSL:

```bash
cd sim
./run_iverilog.sh
```

Windows CMD:

```bat
cd sim
run_iverilog.bat
```

정상 동작 시 다음과 비슷한 메시지가 출력된다.

```text
PWM0 high_count over 10 clk cycles = 5
[PASS] UART-controlled PWM basic test passed
```

---

## 9. MPW용으로 확장할 수 있는 기능

현재 구조는 최소 동작 버전이다. 이후 다음 기능을 추가할 수 있다.

| 기능 | 설명 |
|---|---|
| ACK 응답 | write 성공 시 `0xA5` 응답 |
| checksum | UART 명령 오류 검출 |
| 독립 period | 채널별 period 분리 |
| dead-time | 모터 제어용 complementary PWM 지원 |
| polarity control | PWM active-high/active-low 선택 |
| fault input | 외부 fault 발생 시 PWM 강제 off |
| GPIO register | 여분 핀을 GPIO처럼 제어 |

---

## 10. 현재 RTL의 특징

- 4채널 PWM 출력
- 16비트 period
- 채널별 16비트 duty
- 8비트 prescaler
- UART 8N1 RX 지원
- UART TX readback 지원
- 3바이트 고정 길이 바이너리 프로토콜
- CPU 없이 레지스터와 FSM만으로 동작
- MPW 면적을 줄이기 위한 단순 구조
