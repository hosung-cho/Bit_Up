# CSR Shadow RF Writeback 해결 정리

작성 시각: 2026-05-16 17:14 KST

## 결론

CSR을 유지하는 방향으로 진행했고, 외부 RF shadow slot `rf32`에 `mscratch` 값이 실제로 기록되고 다시 읽혀 RD로 writeback되는 경로까지 확인했다.

최종 top-level smoke에서 확인된 CSR 결과:

- `csrrwi x26, mscratch, 1`
  - 기존 `mscratch` 값 `0`이 `x26`에 기록됨
  - `rf32(mscratch shadow)`가 `1`로 갱신됨
- `csrrs x27, mscratch, x0`
  - `mscratch` 값 `1`이 `x27`로 readback됨
  - `rf32`는 계속 `1` 유지

즉, 이전 문서에서 남은 이슈였던 `rf32..rf35` shadow write/readback 중 `mscratch(rf32)` 기본 read/write path는 해결됐다.

## 수정 요약

### 1. CSR read register predecode masking 수정

파일: `src/rtl/my_mcu_top.v`

기존 top-level은 instruction fetch 직후 RF read register를 빠르게 predecode하면서 `rreg1`을 `instr[24:20]`로 덮었다. 일반 `rs2` read에는 유효하지만, CSR access에서 `rreg1`은 `x0..x31`이 아니라 CSR shadow slot `32..35`가 되어야 한다.

수정:

- CSR opcode/funct3를 감지하는 `ibus_csr_op` 추가
- CSR instruction에서는 `rf_read_reg1_to_if`가 `instr[24:20]` predecode에 의해 가려지지 않도록 함
- 결과적으로 `csrrs x27, mscratch, x0`가 `rf32`를 정상 read할 수 있게 됨

### 2. CSR RD writeback phase 수정

파일:

- `src/rtl/serv/serv_top.v`
- `src/rtl/my_mcu_top.v`
- `src/rtl/serv/serv_synth_wrapper.v`
- `src/rtl/serv/serv_rf_top.v`

기존에는 RF adapter의 port0 next-data 선택이 `rd_alu_en`에만 걸려 있었다. CSR readback도 RD port0로 돌아오며 ALU와 같은 phase 보정이 필요했다.

수정:

- `serv_top`에 `o_rd_csr_en`을 노출
- `serv_rf_ram_if.i_wdata0_next`에 `rd_alu_en | rd_csr_en` 연결
- CSR readback RD write가 한 비트 밀려 `x27=2`가 되던 문제를 해결

### 3. CSR shadow port1 data phase 수정

파일: `src/rtl/serv/serv_rf_ram_if.v`

CSR shadow write는 RF port1을 사용한다. 하지만 일반 GPR port1 write와 CSR shadow port1 write의 유효 data phase가 달랐다.

수정:

- GPR port1(`reg < 32`)은 기존 `wdata1_r[width-1:0]` 유지
- CSR shadow port1(`reg >= 32`)은 `wdata1_r[width:W]` 사용
- `csrrwi`로 `rf32=1`이 정확히 기록됨

### 4. Pico-side parser guard 추가

파일: `testbench/4_testbench_my_mcu_top/tb_my_mcu_top.v`

Pico-side RF parser에 register index 유효 범위 guard를 추가했다.

- write/read 대상이 `0..35` 범위일 때만 `pico_ram` 접근
- invalid frame은 count만 하고 무시

실제 Pico firmware parser도 같은 방어를 두는 것이 좋다.

## 검증 결과

통과:

- `testbench/4_testbench_my_mcu_top/sim/./run.sh`
  - `rf27 = 00000001`
  - `rf32 = 00000001`
  - `[TB PASS] my_mcu_top executed off-chip instruction/data memory program`

- `testbench/3_testbench_rf_if_serial/sim/./run.sh`
  - `[TB PASS] rf_if + serial bridge integration passed. frames=64 writes=32 reads=32`

## 현재 CSR 범위

이번에 닫은 범위:

- CSR frame width 및 parser protocol: 14-bit 유지
- `mscratch` external shadow slot `rf32` write
- `mscratch` external shadow slot `rf32` readback
- CSR read result RD writeback

아직 별도 검증이 더 필요한 범위:

- `mtvec(rf33)`, `mepc(rf34)`, `mtval(rf35)` 개별 smoke
- trap/mret 흐름
- interrupt enable 관련 `mstatus`, `mie`, `mcause`

## 다음 권장 작업

1. `mtvec/mepc/mtval` smoke를 추가해 `rf33..rf35`까지 확인한다.
2. trap 없이 CSR instruction만 도는 현재 smoke와 별도로, misalign/trap 또는 timer interrupt smoke를 분리한다.
3. 실제 Pico firmware parser에 14-bit RF frame과 `0..35` bounds check를 반영한다.
