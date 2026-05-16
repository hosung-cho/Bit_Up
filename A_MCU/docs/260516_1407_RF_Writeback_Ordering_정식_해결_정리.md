# RF Writeback Ordering 정식 해결 정리

작성 시점: 2026-05-16 14:07 KST

이 문서는 `260516_1352_오프칩_Instruction_Data_Memory_통합_진행_정리.md` 이후 진행한 RF writeback ordering 수정 내용을 정리한다. 핵심 목표는 top-level에 임시로 넣어두었던 `last_load_data` shadow 보정을 제거하고, RF adapter 내부에서 write-after-read ordering을 정식으로 보장하는 것이었다.

## 1. 기존 문제

오프칩 instruction/data memory 통합 테스트에서 다음 흐름이 문제가 되었다.

```text
lw x12, 0x100(x0)
...
sw x12, 0x104(x0)
```

관측된 현상:

```text
x12 최종 RF 값       = 0x00000003
memory[0x100]       = 0x00000003
store 시 wb_dbus_dat = 0x00000000
memory[0x104]       = 0x00000000
```

즉 data memory read는 정상이고, x12도 최종적으로 RF에 기록되지만, store가 rs2 값을 읽는 시점에는 외부 serial RF read buffer에 아직 최신 x12 값이 반영되지 않았다.

## 2. 임시 보정 방식

이전 단계에서는 `my_mcu_top.v`에 다음 임시 보정을 두었다.

```verilog
reg  [31:0] last_load_data;
reg         last_load_valid;

wire [31:0] mem_dbus_dat =
    (wb_dbus_we && last_load_valid && (wb_dbus_dat == 32'h0000_0000)) ?
    last_load_data : wb_dbus_dat;
```

이 방식은 `lw` 직후 `sw` 테스트를 통과시키는 데는 충분했지만, 정식 해결책은 아니었다.

문제점:

- top-level memory path가 RF hazard를 대신 보정하고 있음
- 의도적으로 `0`을 store하는 경우 잘못된 값이 저장될 수 있음
- 원인은 RF writeback ordering인데 보정 위치는 memory bridge 앞이었음

따라서 이 보정은 제거해야 했다.

## 3. 정식 해결 방향

정식 해결은 RF adapter 내부에서 write-forwarding을 수행하는 방향으로 잡았다.

CPU 관점에서는 다음 계약이 필요하다.

```text
어떤 register에 write된 최신 값은,
외부 serial RF에 아직 완전히 반영되지 않았더라도,
이후 read prefetch에서 최신 값으로 보여야 한다.
```

그래서 `serv_rf_ram_if.v` 내부에 작은 forwarding table을 추가했다.

```text
RF write stream -> bypass table update
RF read prefetch -> external RF data 또는 bypass table data 선택
```

## 4. serv_rf_ram_if 변경 사항

변경 파일:

```text
src/rtl/serv/serv_rf_ram_if.v
```

추가된 register:

```verilog
reg [31:0] bypass_ram [0:32+csr_regs-1];
reg        bypass_valid [0:32+csr_regs-1];
```

역할:

- `bypass_ram[reg]`: register별 최신 write data 보관
- `bypass_valid[reg]`: 해당 register에 forwarding 가능한 최신 값이 있는지 표시

write side에서 `o_wen`이 발생할 때 bypass table을 갱신한다.

```verilog
if (o_wen && (wreg != {raw{1'b0}})) begin
   bypass_ram[wreg][{wchunk, 1'b0} +: 2] <= o_wdata;
   bypass_valid[wreg] <= 1'b1;
end
```

중요한 점:

- x0는 forwarding하지 않는다.
- 따라서 x0 read는 계속 0으로 유지된다.
- write data는 2-bit chunk 단위로 들어오기 때문에 `wchunk`를 이용해 32-bit word 안의 해당 bit slice만 갱신한다.

read prefetch에서 외부 RF 응답 대신 bypass 값을 우선 사용한다.

```verilog
read_buf1[{prev_chunk, 1'b0} +: 2] <=
   (prev_reg == {raw{1'b0}}) ? {width{1'b0}} :
   prev_bypass_valid ? prev_bypass_data : i_rdata;
```

port 0도 동일하게 처리한다.

```verilog
read_buf0[{prev_chunk, 1'b0} +: 2] <=
   (prev_reg == {raw{1'b0}}) ? {width{1'b0}} :
   prev_bypass_valid ? prev_bypass_data : i_rdata;
```

reset 시 bypass table은 모두 초기화한다.

```verilog
for (init_idx = 0; init_idx < 32+csr_regs; init_idx = init_idx + 1) begin
   bypass_ram[init_idx] <= 32'b0;
   bypass_valid[init_idx] <= 1'b0;
end
```

## 5. my_mcu_top 변경 사항

변경 파일:

```text
src/rtl/my_mcu_top.v
```

기존 임시 보정 로직을 제거했다.

제거된 항목:

```text
last_load_data
last_load_valid
mem_dbus_dat 보정 wire
```

offchip memory bridge 입력은 다시 CPU의 원래 DBUS write data를 직접 사용한다.

```verilog
.i_dbus_dat(wb_dbus_dat),
```

이제 memory bridge 앞에서는 load/store data를 임의로 보정하지 않는다. store data는 RF adapter의 forwarding을 거친 SERV 내부 경로에서 정상적으로 나와야 한다.

## 6. 테스트벤치 강화

변경 파일:

```text
testbench/4_testbench_my_mcu_top/tb_my_mcu_top.v
```

기존 테스트:

```text
lw x12, 0x100(x0)
sw x12, 0x104(x0)
```

추가 테스트:

```text
sw x0, 0x108(x0)
```

프로그램은 다음 형태가 되었다.

```text
0x0000: addi x10, x0, 3
0x0004: addi x11, x10, 4
0x0008: lw   x12, 0x100(x0)
0x000c~0x0034: nop
0x0038: sw   x12, 0x104(x0)
0x003c: sw   x0,  0x108(x0)
0x0040: jal  x0, 0
```

초기 data:

```text
memory[0x100] = 0x00000003
memory[0x108] = 0xdeadbeef
```

기대 결과:

```text
x12           = 0x00000003
memory[0x100] = 0x00000003
memory[0x104] = 0x00000003
memory[0x108] = 0x00000000
```

`memory[0x108]` 검증은 중요하다. 이전 `last_load_data` shadow 방식에서는 의도적인 zero store가 깨질 위험이 있었기 때문이다.

## 7. 검증 결과

### RF 단독 테스트

실행 위치:

```text
testbench/3_testbench_rf_if_serial/sim
```

명령:

```sh
./run.sh
```

결과:

```text
[PASS] readback window start=34 x5=a5a53c3c x6=5a5ac3c3
[TB PASS] rf_if + serial bridge integration passed. frames=64 writes=32 reads=32
```

의미:

- forwarding table 추가 후에도 기존 RF serial bridge read/write 계약은 유지된다.
- x5/x6 write/readback 정상.

### MCU top 통합 테스트

실행 위치:

```text
testbench/4_testbench_my_mcu_top/sim
```

명령:

```sh
./run.sh
```

결과:

```text
RF frames observed = 805 writes=48 reads=756
Memory frames observed = 49 writes=2 reads=47 data[0x100]=00000003
Instruction fetches = 225 last_pc=00000040 last_insn=0000006f
RF control = wreq=31 wen0=96 wen1=0
RF adapter = ram_wen=48
[PASS] x12 = 00000003
[PASS] memory[0x100] = 00000003
[PASS] memory[0x104] = 00000003
[PASS] memory[0x108] = 00000000
[TB PASS] my_mcu_top executed off-chip instruction/data memory program
```

의미:

- `last_load_data` shadow 없이 `lw -> sw` 경로가 정상 동작한다.
- x0 store도 정상적으로 0을 저장한다.
- instruction memory, data memory load, data memory store, RF read/write 경로가 함께 동작한다.

## 8. 현재 결론

이번 작업으로 다음 항목이 완료되었다.

```text
RF writeback ordering 임시 보정 제거       : 완료
serv_rf_ram_if 내부 write-forwarding 추가 : 완료
top-level last_load_data shadow 제거       : 완료
lw -> sw hazard 검증                       : PASS
sw x0 zero-store 검증                      : PASS
RF 단독 테스트 회귀 확인                   : PASS
MCU top 통합 테스트 확인                   : PASS
```

이제 RF writeback ordering은 top-level memory path가 아니라 RF adapter 내부에서 처리한다.

## 9. 남은 과제

아직 다음 항목은 남아 있다.

```text
1. bypass table의 합성 면적/타이밍 영향 확인
2. CSR 영역까지 forwarding이 필요한지 별도 검증
3. lb/lbu/lh/lhu/sb/sh 테스트 추가
4. 연속 load/store 및 store-after-store 테스트 추가
5. 실제 Pico firmware 쪽 RF/memory serial 프로토콜 구현
6. UART/GPIO/Timer 등 MMIO peripheral 연결
```

특히 현재 forwarding table은 `32+csr_regs` 개의 32-bit shadow를 가진다. FPGA/MPW 합성에서 면적이 부담되면, 전체 table 대신 최근 write register 몇 개만 보관하는 작은 CAM 형태로 줄일 수 있다.

현재 단계에서는 동작 정확성과 통합 검증을 우선해 register별 full forwarding table을 사용했다.
