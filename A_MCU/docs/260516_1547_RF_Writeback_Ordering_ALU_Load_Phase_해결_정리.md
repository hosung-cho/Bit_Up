# 260516 15:47 RF Writeback Ordering ALU/Load Phase 해결 정리

## 결론

RF writeback ordering의 남은 문제였던 ALU writeback 오염을 해결했다.

최종적으로 `last_load_data` shadow 없이 다음 항목이 모두 통과한다.

- ALU writeback: `addi x10, x0, 3`, `addi x11, x10, 4`
- load writeback: `lw`, `lb`, `lbu`, `lh`, `lhu`
- store data forwarding: `sw`, `sb`, `sh`
- GPIO MMIO write/read
- RF serial bridge 단독 read/write

## 문제 증상

이전 상태에서는 top-level 통합 테스트에서 load/store/GPIO는 통과했지만 ALU 결과만 틀어졌다.

```text
x10 expected 00000003, observed 00000007
x11 expected 00000007, observed 00000016
```

Instruction fetch는 정상임을 확인했다.

```text
pc=00000000 insn=00300513
pc=00000004 insn=00450593
pc=00000008 insn=10002603
```

따라서 instruction memory corruption이 아니라 RF writeback phase 문제였다.

## 원인

`serv_rf_ram_if`의 기존 write packing은 모든 writeback source를 같은 phase로 처리했다.

하지만 현재 통합 구조에서는 ALU-produced writeback과 memory-produced writeback의 valid phase가 다르게 관측된다.

- memory/load writeback은 기존 `wdata0_r` packing이 맞다.
- ALU writeback은 현재 cycle의 `i_wdata0`를 포함한 next-shift packing이 맞다.

전체 write path를 무조건 next-shift로 바꾸면 `x10/x11`은 맞아지지만 load/store가 깨졌다.

따라서 source 종류를 구분해 ALU writeback일 때만 next-shift packing을 쓰도록 했다.

## RTL 변경

### `serv_top.v`

`rd_alu_en`을 RF adapter까지 전달할 수 있도록 output을 추가했다.

```verilog
output wire o_rd_alu_en;
assign o_rd_alu_en = rd_alu_en;
```

### `serv_rf_ram_if.v`

ALU writeback phase 선택 입력을 추가했다.

```verilog
input wire i_wdata0_next;
```

write data packing은 다음처럼 source phase에 따라 선택한다.

```verilog
wire [width-1:0] wdata0_next = {i_wdata0, wdata0_r[width-1:W]};

assign o_wdata = wtrig1 ? wdata1_r[width-1:0] :
                 i_wdata0_next ? wdata0_next : wdata0_r;
```

### `my_mcu_top.v`

CPU의 `o_rd_alu_en`을 RF adapter의 `i_wdata0_next`로 연결했다.

```verilog
.o_rd_alu_en(rd_alu_en)
...
.i_wdata0_next(rd_alu_en)
```

### Wrapper/Testbench 연결

`serv_synth_wrapper.v`, `serv_rf_top.v`도 새 포트를 연결했다.

RF 단독 테스트는 직접 값을 안정적으로 주입하는 테스트이므로 `i_wdata0_next(1'b0)`로 둔다.

## 검증 결과

### Top-level 통합 테스트

```text
testbench/4_testbench_my_mcu_top/sim/run.sh

[PASS] x10 = 00000003
[PASS] x11 = 00000007
[PASS] x12 = 00000003
[PASS] x13 = ffffffff
[PASS] x14 = 000000ff
[PASS] x15 = ffff80ff
[PASS] x16 = 000080ff
[PASS] x19 = 0000005a
[PASS] x20 = 000000a5
[PASS] memory[0x100] = 00000003
[PASS] memory[0x104] = 00000003
[PASS] memory[0x108] = 00000000
[PASS] memory[0x110] = aaaa55ff
[PASS] memory[0x114] = 123480ff
[PASS] gpio_out = 5a
[PASS] gpio_oe = ff
[TB PASS] my_mcu_top executed off-chip instruction/data memory program
```

### RF IF + serial bridge 단독 테스트

```text
testbench/3_testbench_rf_if_serial/sim/run.sh

[TB PASS] rf_if + serial bridge integration passed. frames=64 writes=32 reads=32
```

## 현재 상태

RF writeback ordering의 핵심 목표는 달성했다.

- `last_load_data` shadow 제거 유지
- ALU writeback 정상화
- load/store writeback 정상화
- GPIO MMIO 통합 테스트 통과

## 다음 과제

1. UART를 dummy tie-off에서 실제 Wishbone UART peripheral로 확장
2. `serv_rf_ram_if`의 ALU/load phase 차이에 대한 주석 보강
3. top-level testbench에 branch/jal/jalr/CSR smoke test 추가
4. off-chip memory protocol 문서와 Pico firmware 쪽 frame parser 사양 동기화
