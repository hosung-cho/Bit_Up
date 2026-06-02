# 260522 15:40 1.0mm x 1.0mm 가용 코어 영역 기반 칩 분할(Multi-Chip) 설계 타당성 분석 보고서

본 보고서는 패드를 제외한 순수 설계 가능 코어 영역(Core Area)이 각각 **$1.0\text{mm} \times 1.0\text{mm} = 1.0\text{mm}^2$**인 독립된 칩 2개 이상으로 시스템을 분할하여 구현하는 방안에 대해 물리적, 시스템적 관점에서 타당성을 심층 분석한 자료입니다.

---

## 1. 핵심 요약

> [!IMPORTANT]
> **코어 면적 $1.0\text{mm}^2$인 칩 2개로 분할하는 설계는 개별 코어 면적 제약을 극복할 수는 있으나, "핀 수(28pin) 제한"과 "오프칩(Off-chip) 병목 현상"으로 인해 성능 및 개발 비용 관점에서 매우 비효율적입니다.**
> 
> * **면적 관점**: CPU 코어(Chip A)와 주변장치/브릿지(Chip B)로 나누면 각 코어 면적은 $1.0\text{mm}^2$ 이내로 수용 가능합니다.
> * **핀 수(Pin Count) 관점**: 28pin 패키지(`MPW_PAD_28pin`)의 가용 신호 핀은 **최대 21개**로 극히 제한되어, 두 칩 간 인터페이스는 극단적으로 직렬화(Serial Link)해야 합니다.
> * **성능 관점**: 칩 외부(Pad)를 거쳐 가는 신호 지연 및 낮은 I/O 클럭 주파수(10~20MHz)로 인해 메모리/RF 접근 레이턴시가 심각하게 증가하여 CPU 성능이 정상 범위를 크게 벗어날 수 있습니다.
> * **비용 및 검증 관점**: 2개의 독립된 GDS를 각각 제작해야 하므로 MPW 면적 할당 비용 및 패키징 비용이 2배로 증가하고, 보드 레벨의 통합 타이밍 검증 난이도가 급상승합니다.

---

## 2. 시스템 분할 시나리오 분석 (Chip A & Chip B)

현재 $1.81\text{mm}^2$의 단일 MCU 코어를 다음과 같이 2개의 $1.0\text{mm}^2$ 코어 칩으로 분할하는 구조를 가정해 볼 수 있습니다.

```mermaid
graph LR
    subgraph Chip A [Chip A: CPU Core]
        SERV[SERV Core]
        Ctrl[FSM / Control]
        L_Link[Serial Link Interface]
    end

    subgraph Chip B [Chip B: Memory & RF Bridge]
        MEM_Br[Memory Bridge]
        RF_Br[RF Interface]
        WB[Wishbone Interconnect]
        Periph[GPIO, UART, etc.]
        R_Link[Serial Link Interface]
    end

    L_Link <===>|External PCB Wiring\nSerial Link (CLK, DAT, CTRL)| R_Link
```

### ① 면적 분할의 타당성 (합격)
* **Chip A (CPU Core + 인터페이스)**: 예상 셀 수 약 1,200개 $\rightarrow$ $1.0\text{mm} \times 1.0\text{mm}$ 코어 내 배치 가능.
* **Chip B (Bridge + Interconnect + UART + 인터페이스)**: 예상 셀 수 약 1,000개 $\rightarrow$ $1.0\text{mm} \times 1.0\text{mm}$ 코어 내 배치 가능.
* 면적 관점에서는 각각 $1.0\text{mm}^2$ 이하로 확실히 줄어들므로 배치가 성공할 수 있습니다.

---

## 3. 물리적 구현 한계 및 리스크 분석

### ① 28pin 패키지의 핀 제약 (Pin-Limited Interconnect)
`MPW_PAD_28pin` 표준 배치를 사용하는 패키지 칩의 핀 배치는 다음과 같습니다.
* **전체 핀**: 28개
* **전원 및 접지 (VDD/GND)**: 7개 (SOP28 배치 기준 VDD 3개, GND 4개)
* **실질적 가용 신호 핀**: **최대 21개**

Chip A와 Chip B를 연결하기 위해서는 병렬 버스 구조(32비트 데이터/주소 등)가 불가능하므로, 핀 수 세이브를 위해 직렬 통신 회로(SPI, UART 또는 독자 Serial Link)를 각 칩의 코어 내에 구현해야 합니다. 
* 직렬 링크 구성 시 클럭, 데이터, 핸드셰이크 신호 등을 위해 최소 4~6개의 핀이 두 칩 상호 연결에만 소비됩니다.
* 이로 인해 외부 GPIO로 나갈 수 있는 핀 수가 더욱 줄어듭니다.

### ② 오프칩(Off-chip) 병목 현상에 의한 성능 저하
* **I/O 패드 지연**: ETRI 0.5um 공정의 Pad 셀은 구동 한계와 패키지 핀의 기생 인덕턴스/커패시턴스 때문에 칩 내부처럼 수백 MHz로 동작할 수 없습니다. 안전한 오프칩 통신을 위해서는 인터페이스 클럭을 **10MHz ~ 20MHz 이하**로 낮추어야 합니다.
* **통신 레이턴시**: CPU가 메모리에서 명령어를 읽어오거나(Instruction Fetch), 레지스터 파일(RF)에서 데이터를 읽고 쓸 때마다 매번 오프칩 시리얼 인터페이스를 거쳐야 하므로 통신 클럭 기준으로 수십 사이클이 소요됩니다.
* **결론**: 온칩 구조 대비 명령어 1개 처리 시 요구되는 사이클(CPI)이 기하급수적으로 늘어나, RISC-V MCU로서의 실용적인 연산 능력이 상실될 위험이 큽니다.

### ③ 개발 비용 및 검증 복잡도 증가
1. **GDS 개별 제작**: 단일 칩 설계와 달리, 완전히 독립된 2개의 레이아웃 GDS 파일을 생성하여 검증(DRC/LVS)을 마쳐야 합니다. 이는 설계 검증 공수를 2배로 증가시킵니다.
2. **테이프아웃 비용**: MPW에 1개가 아닌 2개의 디자인을 제출해야 하므로 면적 대비 비용 지출이 늘어납니다.
3. **보드 레벨 검증 난이도**: 두 칩이 PCB 상에서 와이어링되어 동작하기 때문에, 보드 설계(PCB Artwork), 전원 노이즈 관리, 오프칩 타이밍 매칭(CDC 및 Setup/Hold 시간 마진 확보) 등의 시스템 엔지니어링 난이도가 급격하게 올라갑니다.

---

## 4. 최종 제안 및 추천안

사용자가 언급한 가이드라인 중 **"팀당 설계 면적 ~1.5mm x 1.5mm"** 옵션을 다시 검토하는 것을 강력히 권장합니다.

1. **최선책 (1.5mm x 1.5mm 단일 칩 적용)**
   * 패키지 칩 대신 Bare Die 조립을 이용하거나, 혹은 84pin 등 상위 패키지를 활용해 실 설계면적을 **1.5mm x 1.5mm ($2.25\text{mm}^2$)**로 늘릴 수 있다면 시스템 분할 없이 단일 칩으로 완벽하게 구현 가능합니다. (현재 구현된 $1.81\text{mm}^2$ MCU가 그대로 수용됩니다.)
2. **차선책 (1.0mm x 1.0mm 단일 칩 + 논리 다이어트)**
   * 28pin GPIO 패키지를 꼭 써야 해서 단일 칩 $1.0\text{mm} \times 1.0\text{mm}$ 코어에 맞춰야 한다면, 시스템을 쪼개기보다 CPU 코어와 브릿지 로직을 극단적으로 경량화(셀 수 1,000개 수준으로 다이어트)하는 편이 개발 난이도와 성능 측면에서 칩 분할 설계보다 훨씬 유리합니다.

---

**작성자**: Antigravity  
**관련 문서**: 
* [260522_1535_MPW_PAD_28pin_Feasibility_Analysis.md](file:///home/hosung/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/docs/260522_1535_MPW_PAD_28pin_Feasibility_Analysis.md)
* [260519_2357_area_optimization.md](file:///home/hosung/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/docs/260519_2357_area_optimization.md)
