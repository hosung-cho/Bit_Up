# 260516 14:43 RF Writeback Ordering 후속 진행 및 미해결 이슈

## 배경

이전 단계에서 `last_load_data` shadow를 제거하고, `serv_rf_ram_if` 내부에 RF read-after-write 보강용 bypass table을 추가했다.

그 뒤 top-level 프로그램 테스트를 확장해서 load 결과뿐 아니라 ALU writeback 결과(`addi`)도 직접 검증하도록 만들었다.

## 현재 결론

아직 모든 문제가 해결된 상태는 아니다.

현재 상태에서 다음 경로는 통과한다.

- off-chip instruction fetch
- off-chip data load/store
- byte/halfword load sign/zero extension
- store byte select
- GPIO MMIO read/write
- RF interface + serial bridge 단독 테스트

하지만 top-level 통합 테스트에서 ALU writeback 결과가 아직 실패한다.

```text
x10 expected 00000003, observed 00000007
x11 expected 00000007, observed 00000016
```

## 확인한 사실

### 1. Instruction fetch 자체는 정상

임시 계측으로 첫 instruction fetch 값을 확인했다.

```text
pc=00000000 insn=00300513  // addi x10, x0, 3
pc=00000004 insn=00450593  // addi x11, x10, 4
pc=00000008 insn=10002603  // lw x12, 0x100(x0)
```

따라서 `x10=7`, `x11=0x16` 문제는 instruction memory serial read corruption이 아니다.

### 2. 최종 RF mock 값 자체가 틀어진다

테스트벤치의 `expect_reg()`는 외부 RF mock인 `pico_ram[]`을 직접 읽는다.

즉, 실패는 bypass table에서만 잘못 보이는 문제가 아니라 외부 RF로 쓰인 write frame 결과가 이미 틀어진 것이다.

### 3. RF write frame 주소는 맞다

임시 계측 결과, `x10`, `x11` write frame은 각각 올바른 register index로 나갔다.

문제는 register address가 아니라 write data bitstream/chunk packing 또는 SERV ALU writeback timing 쪽이다.

### 4. Load writeback은 정상

`lw x12, 0x100(x0)`는 `x12=3`으로 정상 통과한다.

따라서 RF write path 전체가 망가진 것은 아니고, 현재 관측되는 문제는 ALU-produced writeback에서만 드러난다.

### 5. 단순 stream ready 타이밍 변경은 실패

`serv_rf_ram_if`에서 `ready_pulse`와 `stream_active`를 같은 클럭에 켜는 실험을 했다.

결과는 load/store/GPIO까지 깨져서 실패했다. 따라서 해당 변경은 되돌렸다.

### 6. serial RF bridge write latch 실험은 효과 없음

`serv_rf_ram`에서 write request를 `i_clk` 기준으로 한 번 래치하는 실험도 했다.

RF 단독 테스트는 계속 통과했지만 top-level ALU writeback 실패는 그대로였으므로 변경은 되돌렸다.

## 검증 결과

### 통과

```text
testbench/3_testbench_rf_if_serial/sim/run.sh
[TB PASS] rf_if + serial bridge integration passed. frames=64 writes=32 reads=32
```

### 실패

```text
testbench/4_testbench_my_mcu_top/sim/run.sh
[FAIL] x10 observed=00000007 expected=00000003
[FAIL] x11 observed=00000016 expected=00000007
```

나머지 memory/GPIO 검증은 통과했다.

## 현재 남은 핵심 과제

1. `serv_rf_if`가 내는 `o_wdata0` bitstream과 `serv_rf_ram_if`의 `wdata0_r` chunk packing 사이의 정확한 phase를 다시 맞춰야 한다.
2. ALU writeback과 memory writeback이 같은 RF adapter write path를 타는데도 ALU만 실패하는 이유를 분리해야 한다.
3. 해결 후 top-level 테스트에서 `x10=3`, `x11=7`까지 포함해 전체 PASS를 확인해야 한다.

## 다음 디버깅 제안

다음 단계에서는 임시 계측을 테스트벤치가 아니라 `serv_rf_ram_if` 내부의 write packing 지점에 집중하는 것이 좋다.

필요한 신호는 다음이다.

- `i_wreq`
- `rcnt`, `wcnt`, `wtrig0`, `wtrig1`
- `i_wdata0`
- `wdata0_r`
- `o_wen`
- `o_waddr`
- `o_wdata`
- `rd_alu_en`, `rd_mem_en`, `alu_rd`, `mem_rd`

목표는 ALU writeback에서 `i_wdata0` 원시 bitstream이 이미 `000...00111`로 생성되는지, 아니면 `wdata0_r` packing 단계에서 `000...00011`이 `000...00111`로 변하는지를 확정하는 것이다.
