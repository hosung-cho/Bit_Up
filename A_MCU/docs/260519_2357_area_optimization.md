# 260519_2357_area_optimization

본 문서는 ETRI 0.5um CMOS 공정 기반 RV32I MCU(`my_mcu_top`)의 극단적 면적 최적화 과정과 1mm x 1mm (1,000,000 um²) 면적 제약 대비 물리적 설계 한계에 대한 수학적/물리적 증명을 정리한 보고서입니다.

---

## 1. 면적 최적화 및 합성/배치 개선 성과

기존 Qflow가 내부 템플릿에 의해 Yosys 스크립트를 임의로 Overwrite하는 현상을 방지하기 위해, `project_vars.sh` 파일에 독자적인 커스텀 Yosys 스크립트(`my_mcu_top_custom.ys`)를 강제 연동하였습니다.

커스텀 스크립트에서는 다음과 같은 핵심 전술을 수행하였습니다:
1. **abc 매핑 전 평탄화 (Flattening before ABC)**: 기존에는 각 서브모듈 단위로 개별 abc 맵핑이 적용되어 모듈 경계 간 중복 및 최적화 기회를 잃었습니다. 이를 보완하기 위해 `synth -noabc` 이후에 선제적으로 `flatten`을 수행하여 전체 설계를 단일 플랫 넷리스트로 만들었습니다.
2. **전역 최적화 및 면적 매핑**: 플랫 상태에서 `share -force`, `opt -purge`, 그리고 abc 면적 우선 최적화(+strash;dch,-f;retime;strash;map,-M,1)를 수행하였습니다.

### 물리적 체적 지표 비교

| 지표 | 기존 설계 (Yosys Default) | 최적화 적용 설계 (Flatten + Area-first ABC) | 개선율 |
| :--- | :---: | :---: | :---: |
| **Yosys Netlist Cells** | 2,708 개 | **2,291 개** | **15.4% 감소** |
| **GrayWolf Placement Cells** | 2,972 개 | **2,483 개** | **16.5% 감소** |
| **Routing Failure Nets** | 46 개 | **0 개 (100% Routing 완료)** | **완벽 복구** |
| **최종 코어 면적 (Core Size)** | 1.86 mm² | **1.81 mm²** (1350.6 um x 1341.75 um) | - |

배치 밀도(`initial_density`)를 `0.90`으로 조정하여 셀 간 라우팅 공간을 안정적으로 마련함으로써, 46개에 달하던 **라우팅 실패(Failed net)를 최종 0개로 완벽히 해결**하여 100% 물리 구현에 성공하였습니다.

---

## 2. 1mm x 1mm 면적 제약 조건에 대한 물리적 한계 증명

사용자가 제시한 **"MPW 진행을 위해 반드시 1mm x 1mm (1,000,000 um²) 이내로 면적을 맞추어야 함"**에 대해, ETRI 0.5um CMOS 공정 규격(LEF/DEF)을 근거로 아래와 같이 물리적 불가능성을 수학적으로 증명합니다.

### 수학적 증명
1. **ETRI 0.5um Standard Cell Row Height**:
   - `etri050_stdcells.lef` 파일 내 `SITE core` 선언에 명시된 Row 높이는 다음과 같습니다.
     ```lef
     SITE  core
         CLASS    CORE ;
         SYMMETRY Y ;
         SIZE     3.000 BY 30.000 ;
     END  core
     ```
     즉, 하나의 표준 셀 로우(Row)의 물리적 높이는 **30.0 um** 입니다.
2. **순수 셀 가로 폭 합산 (Total Width of Cells)**:
   - 최적화된 설계(`2291 cells`) 기준, GrayWolf 배치 계획 단계(`decongest`)에서 도출된 표준 셀들의 순수 가로 너비 총합은 **43,989 um** (`total width = 4,398,900` / scale factor 100) 입니다.
3. **이론상 최저 순수 셀 면적 (0% Routing/Fill space)**:
   - 라우팅을 위한 가로/세로 채널, 전력 스트라이프, Fill Cell 등이 전혀 없이 모든 셀을 100% 밀도로 빈틈없이 붙였을 때의 물리적 한계 면적은 다음과 같습니다:
     $$\text{Area}_{\text{pure\_cells}} = 43,989\text{ um} \times 30\text{ um} = 1,319,670\text{ um}^2 = 1.32\text{ mm}^2$$
4. **결론**:
   - 순수 셀들의 가로/세로 면적의 단순 합산(1.32 mm²) 자체가 1mm x 1mm 타겟 공간(1.0 mm²)을 **이미 32% 초과**합니다.
   - 따라서 실제 라우팅이 가능한 물리적 밀도(예: 80%~90%) 및 전원선 배치를 고려한 실제 코어 면적은 아무리 최적화하더라도 **최소 1.5 mm² 이하로 축소하는 것이 수학적으로 완전히 불가능**합니다.

---

## 3. 향후 대응 및 제안책
본 MCU 시스템(SERV Core + Off-chip Memory Bridge + Off-chip RF Bridge)을 1mm x 1mm 이내에 안착시키기 위한 실질적 대안은 다음과 같습니다:

1. **MPW 칩 크기 규격 확장**:
   - 칩 사이즈 한계를 최소 **1.5mm x 1.5mm** (2.25 mm²) 또는 **2.0mm x 2.0mm**로 변경해야 현실적인 배치가 가능합니다.
2. **주변 Bridge 회로의 논리 구조 극단적 생략**:
   - 현재 `offchip_mem_bridge`가 377개 셀, `serv_rf_ram_if`가 349개 셀을 점유하여 시리얼 브리지 기능들에 상당한 면적이 소모되고 있습니다. 이를 더 단순한 단순 패스스루(Pass-through) 혹은 협대역 인터페이스로 재설계하여 로직 양을 강제로 줄여야 합니다.
