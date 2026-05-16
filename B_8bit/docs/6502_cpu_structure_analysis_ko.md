# 6502 CPU 구조 분석 정리

## 1. 개요

6502 CPU는 MOS Technology에서 개발된 대표적인 8-bit 마이크로프로세서이다.  
구조가 단순하고 레지스터 수가 적으며, 8-bit 데이터 버스와 16-bit 주소 버스를 사용한다.

MPW에 CPU만 넣고 외부 메모리나 주변장치를 연결하려는 구조에서는 6502가 비교적 이해하기 쉽고 구현 부담이 작은 편이다.

업로드한 Verilog 6502 코어는 다음과 같은 특징을 가진다.

- 16-bit 주소 버스 사용
- 8-bit 데이터 입력/출력 사용
- `WE` 신호를 통한 write 제어
- `RDY` 신호를 통한 wait-state 제어 가능
- 동기식 메모리 연결을 가정
- Xilinx Block RAM과 직접 연결하기 좋은 구조

---

## 2. 6502 CPU 기본 특징

| 항목 | 내용 |
|---|---|
| CPU 종류 | 8-bit 마이크로프로세서 |
| 데이터 버스 | 8-bit |
| 주소 버스 | 16-bit |
| 주소 공간 | 64 KB |
| 명령어 길이 | 1~3 byte 가변 길이 |
| 주요 연산 구조 | Accumulator 중심 |
| 메모리 구조 | Von Neumann 구조 |
| I/O 방식 | Memory-Mapped I/O |
| 스택 위치 | `$0100 ~ $01FF` 고정 |
| Endian | Little-endian |

6502는 레지스터가 많은 CPU가 아니다.  
대부분의 연산은 Accumulator인 `A` 레지스터를 중심으로 수행된다.

---

## 3. 6502 레지스터 구조

### 3.1 프로그래머 관점 레지스터

| 레지스터 | 크기 | 역할 |
|---|---:|---|
| A | 8-bit | Accumulator. 산술/논리 연산 중심 |
| X | 8-bit | Index register. 주소 계산 및 반복문에 사용 |
| Y | 8-bit | Index register. 주소 계산 및 테이블 접근에 사용 |
| S / SP | 8-bit | Stack Pointer |
| PC | 16-bit | Program Counter |
| P | 8-bit | Processor Status Register |

프로그래머 관점에서 전체 레지스터 크기는 다음과 같다.

```text
A   = 8 bit
X   = 8 bit
Y   = 8 bit
S   = 8 bit
PC  = 16 bit
P   = 8 bit
----------------
총합 = 56 bit
```

따라서 일반적인 6502의 프로그래머 관점 레지스터 총 크기는 **56 bit**이다.

---

## 4. 상태 레지스터 P 구조

6502의 상태 레지스터는 다음과 같이 구성된다.

```text
P = N V - B D I Z C
```

| 비트 | 이름 | 의미 |
|---:|---|---|
| 7 | N | Negative flag |
| 6 | V | Overflow flag |
| 5 | - | Unused |
| 4 | B | Break flag |
| 3 | D | Decimal mode flag |
| 2 | I | Interrupt disable flag |
| 1 | Z | Zero flag |
| 0 | C | Carry flag |

업로드한 Verilog 코어에서는 상태 레지스터를 다음과 같이 조합한다.

```verilog
P = { N, V, 2'b11, D, I, Z, C };
```

즉, `N`, `V`, `D`, `I`, `Z`, `C`는 실제 상태 플래그로 사용되고, 중간 2비트는 상수 `1`로 처리된다.

따라서 구현 관점에서는 주요 상태 플래그 저장 비트가 6비트라고 볼 수 있다.

---

## 5. 내부 구조도

6502 CPU의 전체 구조를 단순화하면 다음과 같다.

```text
                    ┌─────────────────────┐
                    │      Control FSM     │
                    │ Instruction Decode   │
                    │ Addressing Sequencer │
                    └──────────┬──────────┘
                               │ control
                               ▼
┌─────────────┐      ┌─────────────────────┐
│ Program     │      │ Register File       │
│ Counter PC  │─────▶│ A, X, Y, S          │
│ 16-bit      │      │ 8-bit each          │
└──────┬──────┘      └──────────┬──────────┘
       │                        │
       │                        ▼
       │              ┌─────────────────────┐
       │              │        ALU          │
       │              │ 8-bit add/sub/logic │
       │              └──────────┬──────────┘
       │                         │
       ▼                         ▼
┌───────────────────────────────────────────┐
│          Address Generation Logic          │
│ Zero Page / Absolute / Indexed / Stack     │
└───────────────────┬───────────────────────┘
                    │
                    ▼
              ┌───────────┐
              │ Address   │
              │ Bus AB    │
              │ 16-bit    │
              └─────┬─────┘
                    │
                    ▼
        ┌─────────────────────────┐
        │ Memory / I/O Space       │
        │ 64 KB unified map        │
        └─────────┬───────────────┘
                  │
        ┌─────────▼─────────┐
        │ DI / DO 8-bit data │
        └───────────────────┘
```

6502는 레지스터-레지스터 연산 중심 CPU가 아니라,  
메모리에서 값을 가져와 A 레지스터에서 연산하고 다시 메모리에 저장하는 방식이 많다.

예시:

```asm
LDA $2000   ; memory[0x2000] 값을 A로 로드
ADC #$05    ; A = A + 5 + Carry
STA $2001   ; A 값을 memory[0x2001]에 저장
```

---

## 6. 업로드한 Verilog 코어의 포트 구조

업로드한 `cpu.v` 기준 포트는 다음과 같다.

```verilog
module cpu(
    clk,
    reset,
    AB,
    DI,
    DO,
    WE,
    IRQ,
    NMI,
    RDY
);
```

| 포트 | 방향 | 크기 | 의미 |
|---|---|---:|---|
| `clk` | input | 1-bit | CPU clock |
| `reset` | input | 1-bit | reset |
| `AB` | output | 16-bit | address bus |
| `DI` | input | 8-bit | memory read data |
| `DO` | output | 8-bit | memory write data |
| `WE` | output | 1-bit | write enable |
| `IRQ` | input | 1-bit | maskable interrupt |
| `NMI` | input | 1-bit | non-maskable interrupt |
| `RDY` | input | 1-bit | CPU wait / pause control |

이 코어는 양방향 데이터 버스를 직접 사용하지 않고, 읽기 데이터 `DI`와 쓰기 데이터 `DO`를 분리해서 사용한다.

외부 핀에서 실제 6502처럼 양방향 데이터 버스를 사용하려면 다음과 같은 변환이 필요하다.

```text
WE = 0 : external_data_bus → DI
WE = 1 : DO → external_data_bus
```

---

## 7. 메모리 연결 방식

### 7.1 기본 연결

6502는 16-bit 주소 버스를 가지므로 전체 주소 공간은 다음과 같다.

```text
0x0000 ~ 0xFFFF
= 64 KB
```

기본 메모리 연결은 다음과 같다.

```text
CPU.AB[15:0]  ─────▶ Memory Address
CPU.DO[7:0]   ─────▶ Memory Write Data
Memory.RDATA  ─────▶ CPU.DI[7:0]
CPU.WE        ─────▶ Memory Write Enable
```

쓰기 동작:

```text
AB = write address
DO = write data
WE = 1
```

읽기 동작:

```text
AB = read address
WE = 0
다음 사이클에 DI로 read data 입력
```

업로드한 코어는 동기식 메모리를 가정하므로, 주소가 출력된 다음 클럭에 데이터가 들어오는 구조이다.

---

## 8. Memory Map 예시

MPW에서 CPU만 넣고 외부 메모리 또는 주변장치를 연결한다면 다음과 같은 memory map을 사용할 수 있다.

```text
0x0000 ~ 0x00FF : Zero Page
0x0100 ~ 0x01FF : Stack Page
0x0200 ~ 0x7FFF : RAM
0x8000 ~ 0xEFFF : Program ROM or external memory window
0xF000 ~ 0xF0FF : Memory-Mapped I/O
0xFFFA ~ 0xFFFF : Interrupt / Reset vectors
```

6502에서 중요한 고정 영역은 다음과 같다.

| 주소 | 역할 |
|---|---|
| `$0000 ~ $00FF` | Zero Page |
| `$0100 ~ $01FF` | Stack |
| `$FFFA/B` | NMI vector |
| `$FFFC/D` | Reset vector |
| `$FFFE/F` | IRQ / BRK vector |

Reset 후 CPU는 `$FFFC`, `$FFFD`에 저장된 주소를 읽어 PC에 넣는다.

예시:

```text
memory[0xFFFC] = 0x00
memory[0xFFFD] = 0x80
```

이 경우 reset 후 시작 주소는 다음과 같다.

```text
PC = 0x8000
```

---

## 9. MPW에서 외부 Pico 메모리와 연결하는 구조

CPU만 MPW에 넣고 Raspberry Pi Pico를 외부 메모리처럼 사용하려면 중간에 bus bridge가 필요하다.

6502는 기본적으로 다음 병렬 버스를 사용한다.

```text
AB[15:0]
DI[7:0]
DO[7:0]
WE
RDY
```

하지만 Pico와 UART 또는 SPI로 연결하면 메모리 접근에 여러 클럭이 필요하다.  
따라서 CPU를 기다리게 만들기 위해 `RDY` 신호를 사용하는 것이 좋다.

### 9.1 추천 구조

```text
┌─────────────┐
│ 6502 CPU    │
│ inside MPW  │
└─────┬───────┘
      │ AB, DO, DI, WE, RDY
      ▼
┌────────────────────┐
│ Memory Bus Bridge  │
│ inside MPW         │
│ - address latch    │
│ - data latch       │
│ - wait-state FSM   │
│ - serial protocol  │
└─────┬──────────────┘
      │ SPI / UART / custom serial
      ▼
┌────────────────────┐
│ Raspberry Pi Pico  │
│ external memory    │
│ RAM / ROM emulator │
└────────────────────┘
```

---

### 9.2 읽기 동작

```text
1. CPU가 AB에 주소 출력
2. WE = 0
3. Bridge가 주소를 latch
4. Bridge가 RDY = 0으로 CPU 정지
5. Bridge가 Pico에 read 요청 전송
6. Pico가 해당 주소의 data 반환
7. Bridge가 DI에 data 세팅
8. Bridge가 RDY = 1
9. CPU가 data를 읽고 다음 상태로 진행
```

---

### 9.3 쓰기 동작

```text
1. CPU가 AB에 주소 출력
2. CPU가 DO에 write data 출력
3. WE = 1
4. Bridge가 주소와 data latch
5. Bridge가 RDY = 0으로 CPU 정지
6. Bridge가 Pico에 write 요청 전송
7. Pico가 write 완료 응답
8. Bridge가 RDY = 1
9. CPU 진행
```

---

## 10. 명령어 구조

6502 명령어는 고정 길이가 아니라 가변 길이 구조이다.

```text
[ opcode 1 byte ] [ operand 0~2 byte ]
```

명령어 길이는 addressing mode에 따라 달라진다.

| 명령어 형식 | 크기 | 예시 |
|---|---:|---|
| Implied | 1 byte | `CLC`, `RTS`, `INX` |
| Immediate | 2 byte | `LDA #$10` |
| Zero Page | 2 byte | `LDA $20` |
| Zero Page,X | 2 byte | `LDA $20,X` |
| Absolute | 3 byte | `LDA $1234` |
| Absolute,X | 3 byte | `LDA $1234,X` |
| Relative | 2 byte | `BEQ label` |
| Indirect | 3 byte | `JMP ($1234)` |
| Indexed Indirect | 2 byte | `LDA ($20,X)` |
| Indirect Indexed | 2 byte | `LDA ($20),Y` |

---

## 11. 명령어 그룹

### 11.1 Load / Store

| 명령어 | 의미 |
|---|---|
| `LDA` | Load Accumulator |
| `LDX` | Load X |
| `LDY` | Load Y |
| `STA` | Store Accumulator |
| `STX` | Store X |
| `STY` | Store Y |

예시:

```asm
LDA #$12
STA $2000
```

---

### 11.2 산술 / 논리

| 명령어 | 의미 |
|---|---|
| `ADC` | Add with Carry |
| `SBC` | Subtract with Carry |
| `AND` | Bitwise AND |
| `ORA` | Bitwise OR |
| `EOR` | Bitwise XOR |
| `CMP` | Compare A |
| `CPX` | Compare X |
| `CPY` | Compare Y |

예시:

```asm
LDA #$10
ADC #$05
```

---

### 11.3 Shift / Rotate

| 명령어 | 의미 |
|---|---|
| `ASL` | Arithmetic Shift Left |
| `LSR` | Logical Shift Right |
| `ROL` | Rotate Left |
| `ROR` | Rotate Right |

---

### 11.4 Branch / Jump

| 명령어 | 의미 |
|---|---|
| `JMP` | Jump |
| `JSR` | Jump to Subroutine |
| `RTS` | Return from Subroutine |
| `BEQ` | Branch if Equal |
| `BNE` | Branch if Not Equal |
| `BCC` | Branch if Carry Clear |
| `BCS` | Branch if Carry Set |
| `BMI` | Branch if Minus |
| `BPL` | Branch if Positive |

분기 명령어는 PC 기준 상대 주소를 사용한다.

```asm
BEQ label
```

이 경우 Z flag가 1이면 현재 PC 근처의 label로 이동한다.

---

### 11.5 Stack / Status

| 명령어 | 의미 |
|---|---|
| `PHA` | Push A |
| `PLA` | Pull A |
| `PHP` | Push Processor Status |
| `PLP` | Pull Processor Status |
| `CLC` | Clear Carry |
| `SEC` | Set Carry |
| `CLI` | Clear Interrupt Disable |
| `SEI` | Set Interrupt Disable |
| `CLD` | Clear Decimal Mode |
| `SED` | Set Decimal Mode |
| `CLV` | Clear Overflow |

---

## 12. Addressing Mode 구조

6502의 핵심은 다양한 addressing mode이다.  
같은 `LDA` 명령어라도 operand를 해석하는 방식이 다르다.

### 12.1 Immediate

```asm
LDA #$10
```

```text
A = 0x10
```

명령어 내부에 값이 직접 들어있다.

---

### 12.2 Zero Page

```asm
LDA $20
```

```text
A = memory[0x0020]
```

주소가 8비트만 들어가므로 빠르고 코드 크기도 작다.

---

### 12.3 Absolute

```asm
LDA $1234
```

```text
A = memory[0x1234]
```

16비트 주소를 직접 사용한다.

---

### 12.4 Absolute,X

```asm
LDA $1000,X
```

```text
A = memory[0x1000 + X]
```

배열 접근에 자주 사용된다.

---

### 12.5 Indirect Indexed

```asm
LDA ($20),Y
```

동작은 다음과 같다.

```text
base_low  = memory[0x20]
base_high = memory[0x21]
base      = {base_high, base_low}
A         = memory[base + Y]
```

포인터와 인덱스를 함께 사용하는 방식이다.

---

## 13. ALU 구조

업로드한 `ALU.v` 기준 ALU는 8-bit 입력 `AI`, `BI`를 받아 결과 `OUT`을 만든다.

주요 연산은 다음과 같다.

| op | 연산 |
|---|---|
| `0011` | `AI + BI` |
| `0111` | `AI - BI` |
| `1011` | `AI + AI` |
| `1100` | `AI OR BI` |
| `1101` | `AI AND BI` |
| `1110` | `AI XOR BI` |
| `1111` | `AI` |

즉, 이 ALU는 8-bit add/sub/logic/shift 중심의 단순한 구조이다.

곱셈기나 큰 barrel shifter가 없기 때문에 MPW 면적 관점에서는 장점이 있다.

---

## 14. 전체 실행 흐름

6502 명령어 실행은 일반적으로 다음 순서로 진행된다.

```text
1. PC 주소를 AB에 출력
2. memory에서 opcode fetch
3. opcode decode
4. addressing mode에 따라 operand fetch
5. effective address 계산
6. memory read 또는 write
7. ALU 연산 또는 register update
8. flag update
9. 다음 opcode fetch
```

흐름도는 다음과 같다.

```text
┌────────────┐
│ Fetch      │
│ opcode     │
└─────┬──────┘
      ▼
┌────────────┐
│ Decode     │
│ opcode     │
└─────┬──────┘
      ▼
┌────────────────────┐
│ Addressing Mode    │
│ operand fetch      │
│ address calculate  │
└─────┬──────────────┘
      ▼
┌────────────────────┐
│ Execute            │
│ ALU / Load / Store │
└─────┬──────────────┘
      ▼
┌────────────────────┐
│ Writeback / Flags  │
└─────┬──────────────┘
      ▼
┌────────────┐
│ Next Fetch │
└────────────┘
```

---

## 15. MPW 적용 관점 장단점

### 15.1 장점

| 장점 | 설명 |
|---|---|
| 작은 레지스터 파일 | A, X, Y, S, PC, P 정도만 필요 |
| 8-bit 데이터패스 | ALU, mux, bus 폭이 작음 |
| 단순한 메모리 인터페이스 | AB, DI, DO, WE 구조 |
| Memory-Mapped I/O 친화적 | UART, GPIO 등을 주소에 매핑하기 쉬움 |
| 기존 생태계 존재 | 어셈블러, C 컴파일러, 예제 코드 존재 |

---

### 15.2 단점

| 단점 | 설명 |
|---|---|
| 명령어 디코더가 불규칙 | RISC처럼 명령어 필드가 깔끔하지 않음 |
| C 컴파일 효율 낮음 | 레지스터가 적어 메모리 접근이 많음 |
| 16-bit 연산이 느림 | 8-bit CPU라 여러 명령어 필요 |
| 외부 Pico 메모리 사용 시 wait-state 필요 | 직렬 통신 속도 때문에 CPU를 자주 멈춰야 함 |
| 명령어/데이터 메모리 분리 없음 | Von Neumann 구조 |

---

## 16. 결론

6502 CPU는 MPW에 넣기 좋은 작은 CPU 후보이다.  
프로그래머 관점의 전체 레지스터 크기는 **56 bit**이며, ALU도 8-bit 중심으로 구성되어 있어 면적 부담이 작다.

특히 CPU만 MPW에 넣고 외부 메모리나 외부 MCU를 사용하는 구조에서는 다음 구성이 적합하다.

```text
6502 CPU
  ↓
Memory Bus Bridge + RDY wait-state FSM
  ↓
SPI / UART / custom serial
  ↓
Raspberry Pi Pico memory emulator
```

6502는 구조가 단순하고 memory-mapped I/O와 잘 맞기 때문에 실험용 MPW CPU로 충분히 사용할 수 있다.

다만 C 컴파일러 효율과 현대적인 구조를 고려하면 작은 RISC-V나 8051도 함께 비교할 필요가 있다.  
하지만 최소 구조, 낮은 면적, 단순한 외부 메모리 연결 실험이라는 관점에서는 6502가 매우 좋은 후보이다.
