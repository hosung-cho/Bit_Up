# CSR Shadow RF 4 Slots Smoke 확장 정리

작성 시각: 2026-05-16 17:25 KST

## 결론

CSR을 유지하는 방향에서 `mscratch`만 확인하던 top-level smoke를 `mtvec`, `mepc`, `mtval`까지 확장했다.

이번 검증으로 외부 RF shadow CSR slot 전체가 다음처럼 동작함을 확인했다.

- `rf32`: `mscratch`
- `rf33`: `mtvec`
- `rf34`: `mepc`
- `rf35`: `mtval`

즉, 현재 14-bit RF frame protocol의 6-bit register index 확장은 GPR `x0..x31`뿐 아니라 CSR shadow `rf32..rf35`까지 top-level에서 실제 write/readback smoke를 통과했다.

## 테스트벤치 변경

파일: `testbench/4_testbench_my_mcu_top/tb_my_mcu_top.v`

기존 CSR smoke:

- `csrrwi x26, mscratch, 1`
- `csrrs x27, mscratch, x0`

확장 CSR smoke:

- `csrrwi x26, mscratch, 1`
- `csrrs x27, mscratch, x0`
- `csrrwi x28, mtvec, 2`
- `csrrs x28, mtvec, x0`
- `csrrwi x29, mepc, 3`
- `csrrs x29, mepc, x0`
- `csrrwi x30, mtval, 4`
- `csrrs x30, mtval, x0`

검증 기대값도 함께 추가했다.

- `x27 = 0x00000001`
- `x28 = 0x00000002`
- `x29 = 0x00000003`
- `x30 = 0x00000004`
- `rf32 = 0x00000001`
- `rf33 = 0x00000002`
- `rf34 = 0x00000003`
- `rf35 = 0x00000004`

CSR instruction이 늘어나면서 기존 `#10000000` 대기 시간에서는 마지막 `mtval` readback instruction까지 충분히 진행되지 않았다. 그래서 top-level smoke 대기 시간을 `#14000000`으로 늘렸다.

## 검증 결과

통과:

- `testbench/4_testbench_my_mcu_top/sim/./run.sh`
  - `CSR RF slots = rf32:00000001 rf33:00000002 rf34:00000003 rf35:00000004`
  - `rf27 = 00000001`
  - `rf28 = 00000002`
  - `rf29 = 00000003`
  - `rf30 = 00000004`
  - `[TB PASS] my_mcu_top executed off-chip instruction/data memory program`

- `testbench/3_testbench_rf_if_serial/sim/./run.sh`
  - `[TB PASS] rf_if + serial bridge integration passed. frames=64 writes=32 reads=32`

## 현재까지 해결된 범위

- instruction memory off-chip path smoke
- data memory off-chip path smoke
- GPIO MMIO smoke
- branch/JAL/JALR smoke
- RF writeback ordering의 ALU/load/CSR readback phase 문제
- `last_load_data` shadow 제거 후 load writeback 유지
- 14-bit RF frame protocol
- CSR shadow slot `rf32..rf35` write/readback smoke
- Pico-side parser 기준 guard: valid RF index `0..35`

## 남은 과제

아직 CSR 전체 기능을 모두 닫았다는 뜻은 아니다. 이번 범위는 trap 없이 CSR instruction으로 CSR shadow slot을 직접 write/readback하는 smoke다.

남은 권장 작업:

1. trap/mret 흐름 검증
2. interrupt enable 관련 CSR 흐름 검증: `mstatus`, `mie`, `mcause`
3. trap 발생 시 `mtvec`, `mepc`, `mtval`이 실제 control flow와 함께 기대대로 쓰이는지 확인
4. 실제 Pico firmware frame parser에 14-bit RF frame 및 `0..35` bounds check 반영
