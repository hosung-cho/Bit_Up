# 260522 15:35 MPW_PAD_28pin 표준 패키지 기준 실 설계면적(Core Area) 분석 보고서

본 보고서는 MPW 공정 조건 중 **"1.9mm x 1.9mm 다이 크기 (Scribe lane 120 μm 포함) 하에서 28pin 패키지칩 (MPW_PAD_28pin) 제공 시, 실 설계면적 제약"**에 대한 물리적 적합성을 상세 분석한 자료입니다.

---

## 1. 개요 및 사용자 확인 사항 검증

사용자가 제시한 신규 가이드라인은 다음과 같습니다.
1. **전체 다이 크기**: $1.9\text{mm} \times 1.9\text{mm}$ (Scribe lane $120\mu\text{m}$ 포함)
2. **실제 할당되는 설계 가능 코어 면적 (Core Area)**:
   * **기본 설계 면적**: ~ $1.5\text{mm} \times 1.5\text{mm}$ ($2.25\text{mm}^2$)
   * **28pin 패키지 GPIO 사용 시 설계 면적**: ~ $1.0\text{mm} \times 1.0\text{mm}$ ($1.0\text{mm}^2$)

### 검증 결과
> [!NOTE]
> 사용자의 해석이 맞습니다. **"패드(Pad Ring) 영역을 제외한 순수 코어(Standard Cell Core)의 실 설계면적이 1.0mm x 1.0mm (또는 1.5mm x 1.5mm)가 되면 된다"**는 이해는 정확합니다.
> 
> 즉, 다이가 전체적으로 1.9mm x 1.9mm로 크기 때문에, $300\mu\text{m}$ 깊이의 28pin 패드 링(`MPW_PAD_28Pin_IO`)을 제외하고도 내부에 남는 가용 코어 영역의 크기가 $1.0\text{mm} \times 1.0\text{mm}$ ($1,000\mu\text{m} \times 1,000\mu\text{m}$)가 됩니다.

---

## 2. 1.0mm x 1.0mm (1.0 mm²) 코어 면적 제약 하에서의 현재 MCU 물리적 한계

실 설계면적이 $1.0\text{mm} \times 1.0\text{mm} = 1.0\text{mm}^2$가 주어지더라도, **현재의 RV32I MCU (`my_mcu_top`) 설계는 여전히 이 공간에 안착하기 어렵습니다.**

### 물리적 면적 데이터 비교 (ETRI 0.5um 공정 기준)

| 구분 | 면적 ($\text{mm}^2$) | 물리 가로$\times$세로 크기 ($\mu\text{m}$) | $1.0\text{mm}^2$ 대비 초과율 | 배치가 물리적으로 가능한가? |
| :--- | :---: | :---: | :---: | :---: |
| **현재 최적화 완료된 코어** | **1.81 mm²** | $1350.6 \times 1341.75$ | **81% 초과 (Fail)** | 불가능 (100% Routing 시 사양 초과) |
| **순수 셀 면적 합산 (0% Routing space)** | **1.32 mm²** | - | **32% 초과 (Fail)** | 불가능 (배선 공간이 없어도 크기 초과) |
| **28pin GPIO 사용 시 가용 Core** | **1.00 mm²** | $1000.0 \times 1000.0$ | **기준선 (Target)** | - |
| **기본 설계 면적 (패키지 미사용 등)** | **2.25 mm²** | $1500.0 \times 1500.0$ | **20% 여유 (Pass)** | **가능 (추가 수정 없이 수용 가능)** |

### 분석 결론:
1. **28pin GPIO 패키지를 사용하는 경우 ($1.0\text{mm} \times 1.0\text{mm}$ 제약)**:
   * 배선이나 파워 스트라이프용 채널을 전혀 고려하지 않은 순수 Standard Cell 셀 면적 합산(1.32 mm²) 자체가 1.0 mm²를 넘어섭니다.
   * 따라서 현재의 2,291개 셀 구조 그대로는 $1.0\text{mm} \times 1.0\text{mm}$ 코어 내부로 구겨 넣는 물리 배치가 불가능합니다.
2. **~1.5mm x 1.5mm 설계를 지원하는 경우 ($2.25\text{mm}^2$ 제약)**:
   * 현재 최종 물리 합성 및 배선이 100% 성공한 우리의 코어 크기는 $1.81\text{mm}^2$입니다.
   * 이 영역은 $1.5\text{mm} \times 1.5\text{mm}$ ($2.25\text{mm}^2$) 이내에 안정적으로 들어갑니다. 따라서 이 조건 하에서는 추가적인 게이트 감축이나 기능 희생 없이 현재 회로를 그대로 사용할 수 있습니다.

---

## 3. 향후 구현 방향 결정 제안

현재 상황에서 취할 수 있는 최적의 대응 시나리오는 다음 두 가지 중 하나입니다.

### 시나리오 A: 1.5mm x 1.5mm 코어 공간 사용 (적극 추천)
* 패키지 칩 대신 Bare Die 형태로 제공을 받거나, 다른 옵션(예: 84pin 등)을 적용하여 설계 면적 한계를 **1.5mm x 1.5mm**로 확보합니다.
* **장점**: 현재 Dhrystone PASS 및 RISC-V Compliance PASS가 완료된 완성도 높은 CPU 아키텍처 및 오프칩 인터페이스(RF, Mem Bridge) 사양을 100% 수정 없이 그대로 유지하여 테이프아웃(Tape-out)을 진행할 수 있습니다.

### 시나리오 B: 1.0mm x 1.0mm 코어 공간으로 강제 축소
* 반드시 28pin GPIO 패키지칩(`MPW_PAD_28pin`) 사양에 맞춰 실 설계면적을 **1.0mm x 1.0mm**로 고수해야 하는 경우입니다.
* **필요 조치**: 
  1. 현재 약 2,291개인 Yosys 합성 셀 개수를 **1,000~1,100개 수준**으로 강제 감축해야 합니다. (순수 셀 면적 합산을 0.6 mm² 수준으로 줄여야 라우팅 공간을 포함해 1.0 mm²에 들어감)
  2. 이를 위해 RV32I의 제어 컨트롤러 및 특수 기능 레지스터(CSR)를 전면 삭제하고, `offchip_mem_bridge`와 `serv_rf_ram_if` 등의 직렬 버퍼 로직을 극단적으로 단순화하는 대대적인 RTL 다이어트(RTL 재설계)를 수행해야 합니다.

---

**작성자**: Antigravity  
**관련 문서**: 
* [260522_1530_Multi_Chip_Partitioning_Feasibility_Analysis.md](file:///home/hosung/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/docs/260522_1530_Multi_Chip_Partitioning_Feasibility_Analysis.md)
* [260519_2357_area_optimization.md](file:///home/hosung/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/docs/260519_2357_area_optimization.md)
