# 외부 Hex 기반 RV32I Directed Regression 완전 구축 및 PASS 검증

작성 시점: 2026-05-17 14:35 KST

## 1. 개요
6번 테스트벤치(`6_testbench_rv32i_hex`) 환경에서 하드코딩 프로그램에 의존하지 않고, **순수 외부 어셈블리어(`external_smoke.S`) 빌드 및 동적 기대값 자동 파싱 주입 구조**를 설계/반영하여 전체 RV32I directed 연산에 대한 시뮬레이션 PASS를 성공적으로 달성했습니다.

## 2. 해결된 주요 설계 과제
1. **RISC-V 12비트 Signed 덧셈 오차 정정 (%hi, %lo 지시어 적용)**:
   * **현상**: 기존 어셈블리 내 `0xdeadbeef` 생성을 위해 수동으로 `lui x21, 0xdeadb`와 `addi x21, x21, -273`을 썼을 때, addi의 최상위 부호 비트 1이 부호 확장(sign-extension)되면서 상위 20비트와 연산되어 `0xdeadaeef`가 저장되는 수학적 오차가 감지되었습니다.
   * **해결**: 어셈블러에 직접 처리를 양도하는 RISC-V 표준 지시어인 `%hi` 및 `%lo`를 도입하여, 컴파일러가 자동 보정하여 `lui x21, 0xdeadc`와 `addi x21, x21, -273` 조합으로 빌드하도록 안전하게 수정하였습니다.
   * **결과**: `memory[0x600] = 0xdeadbeef` 및 LW/LH/LB 서브워드 연산들이 모두 정상 동작(PASS)하게 되었습니다.

2. **PC 의존적 연산(AUIPC, JAL, JALR)의 동적 기대값 파싱 결합**:
   * **기존 한계**: 테스트 코드가 늘어나거나 명령어 배열이 바뀔 때, PC 관련 주소가 유동적으로 변동되어 기대값 매치 검증이 계속 실패하게 되는 한계가 있었습니다.
   * **해결**: `build_external_smoke.sh` 빌드 시점에 `riscv32-unknown-elf-nm`을 결합하여, 빌드 완료된 `external_smoke.elf` 파일로부터 `pc_label`, `jal_label`, `jalr_label` 심볼 주소를 런타임에 파싱하여 동적으로 기대값 `expected_mem.hex`를 계산 및 주입하는 무결점 아키텍처를 도입했습니다.
   * **결과**: 코드가 늘어나 주소가 밀려도 기대값 파일이 자동으로 맞추어져, 추가 유지보수 없이 100% 자동 검증이 가능합니다.

## 3. 최종 시뮬레이션 결과
* **테스트 구동**: 단독 `./run.sh` 실행 (개선된 디폴트 환경변수 적용)
* **결과**: 50개 검증 대상 워드 전원 PASS 및 최종 테스트벤치 성공 검증 완료.

```text
Loading external hex from generated directory
RV32I directed program source = external hex
RF frames observed = 14369 writes=1104 reads=13264 invalid=0
Memory frames observed = 781 writes=58 reads=723
Instruction fetches = 709 last_pc=00000234 last_insn=0000006f
[PASS] memory[0x640] = 12345678
[PASS] memory[0x644] = 00005678
[PASS] memory[0x648] = 56780000
[PASS] memory[0x650] = 78787878
[PASS] memory[0x700] = 00000064
... (중략) ...
[PASS] memory[0x7a0] = 00000200   <-- 동적 파싱 주입된 JAL link 기대값 (PASS)
[PASS] memory[0x7a4] = 00000000
[PASS] memory[0x7a8] = 00000009
[PASS] memory[0x7ac] = 00000220   <-- 동적 파싱 주입된 JALR link 기대값 (PASS)
[PASS] memory[0x7b0] = 00000000
[PASS] memory[0x7b4] = 0000000a
[TB PASS] rv32i directed tests passed on my_mcu_top off-chip path
INFO: [USF-XSim-96] XSim completed. Design snapshot 'tb_rv32i_hex_behav' loaded.
```

## 4. 결론 및 향후 전망
* 외부 Hex를 활용한 RV32I 전 범위 Directed Regression 환경의 초석이 마련되었습니다.
* 이 인프라를 그대로 확장하여, 앞으로 공식 `riscv-tests` 적합성 테스트 스위트(`rv32ui-p-*`)의 모든 ELF/Hex도 링커 스크립트 결합만으로 동일하게 100% 자동 검증이 가능한 발판을 다졌습니다.
