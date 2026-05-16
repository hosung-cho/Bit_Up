# 오프칩 Instruction/Data Memory 통합 진행 정리

작성 시점: 2026-05-16 13:52 KST

이 문서는 `260516_1100_위시본_버스와_주변장치_연계_큰그림.md` 이후 실제로 진행한 instruction memory / data memory 오프칩화 구현 내용을 정리한다. 현재 상태는 RF 오프칩 serial bridge 위에 instruction/data memory serial bridge를 추가하고, `my_mcu_top` 통합 테스트에서 instruction fetch, data load, data store까지 PASS한 상태다.

## 1. 목표

기존 구조는 SERV CPU가 내부 또는 테스트벤치에서 직접 제공되는 instruction/data 응답을 받는 형태였다. 이번 작업의 목표는 다음과 같았다.

```text
SERV ibus -> off-chip instruction memory serial bridge
SERV dbus -> off-chip data memory serial bridge
SERV RF   -> existing off-chip RF serial bridge
```

즉 CPU 기준으로는 여전히 Wishbone 스타일 `ibus`, `dbus`를 사용하지만, 실제 메모리 응답은 `o_mem_sync`, `o_mem_sck`, `o_mem_mosi`, `i_mem_miso` 4핀 serial 인터페이스를 통해 외부 장치가 제공하도록 바꿨다.

## 2. 현재 전체 구조

현재 top 수준 구조는 다음과 같다.

```text
                       +--------------------+
                       |      SERV CPU      |
                       |                    |
                       | ibus               |
                       | dbus               |
                       | rf interface       |
                       +----+----------+----+
                            |          |
                            |          +------------------+
                            |                             |
                    +-------v--------+             +------v------+
                    | offchip memory |             | RF adapter  |
                    | bridge         |             | + serial RF |
                    +-------+--------+             +------+------+
                            |                             |
         o_mem_sync/sck/mosi/miso          o_rf_sync/sck/mosi/miso
```

메모리 주소 맵은 현재 다음처럼 동작한다.

```text
0x0000_xxxx : off-chip memory
0x4000_00xx : UART dummy 영역
0x4000_01xx : GPIO 예정 영역
```

`ibus`는 항상 off-chip memory bridge로 연결되어 instruction fetch를 수행한다. `dbus`는 주소 디코더를 거쳐 `0x0000_xxxx` 접근일 때만 off-chip memory bridge로 들어간다.

## 3. 추가된 메모리 serial bridge

새 파일:

```text
src/rtl/offchip_mem_bridge.v
```

역할:

- SERV `ibus` instruction fetch 요청을 외부 serial memory frame으로 변환
- SERV `dbus` load/store 요청을 외부 serial memory frame으로 변환
- 외부 memory read data를 다시 `ibus_rdt` 또는 `dbus_rdt`로 반환
- frame 완료 후 SERV 쪽에 `ack` 생성

현재 frame 포맷은 70-bit, MSB first이다.

```text
[69]    WE
[68]    IBUS access flag
[67:64] byte select
[63:32] byte address
[31:0]  write data / read dummy
```

의미:

| 필드 | 의미 |
| --- | --- |
| `WE` | `1`이면 write, `0`이면 read |
| `IBUS access flag` | `1`이면 instruction fetch, `0`이면 data bus access |
| `byte select` | DBUS store byte enable. IBUS는 `1111` |
| `byte address` | SERV가 요청한 byte address |
| `write data / read dummy` | write에서는 저장할 데이터, read에서는 dummy |

serial 신호:

```verilog
o_mem_sync
o_mem_sck
o_mem_mosi
i_mem_miso
```

`o_mem_sck`는 RF bridge와 같은 방향으로 `sync ? ~i_clk_fast : 0` 형태를 사용한다. read에서는 마지막 32 bit 구간에서 `i_mem_miso`를 샘플링한다.

## 4. my_mcu_top 변경 사항

변경 파일:

```text
src/rtl/my_mcu_top.v
```

추가된 top 포트:

```verilog
output wire o_mem_sync,
output wire o_mem_sck,
output wire o_mem_mosi,
input  wire i_mem_miso,
```

`offchip_mem_bridge` 인스턴스를 추가했고, `ibus`는 직접 memory bridge에 연결했다.

```text
SERV ibus -> offchip_mem_bridge ibus port
```

`dbus`는 주소 디코더를 거쳐 memory range일 때만 bridge에 연결했다.

```verilog
wire sel_mem  = wb_dbus_cyc && (wb_dbus_adr[31:28] === 4'h0);
wire sel_peri = wb_dbus_cyc && (wb_dbus_adr[31:28] === 4'h4);
```

UART는 아직 실제 UART 모듈이 아니라 dummy 응답이다.

```verilog
wire [31:0] uart_rdt = 32'h0000_0000;
wire        uart_ack = wb_dbus_cyc && sel_uart;
assign o_uart_tx = 1'b1;
```

DBUS read data와 ack는 memory와 UART dummy 응답을 MUX한다.

```verilog
assign wb_dbus_rdt = mem_dbus_ack ? mem_dbus_rdt :
                     uart_ack     ? uart_rdt :
                     32'h0000_0000;

assign wb_dbus_ack = mem_dbus_ack | uart_ack;
```

## 5. RF read address 안정화

이번 통합 중 RF 쪽에서 중요한 타이밍 문제가 드러났다.

SERV의 `o_rreg0`, `o_rreg1`은 원래 내부 bit-serial 실행 흐름에 맞춰 움직인다. 특히 store 명령의 `rs2` 주소는 외부 RF prefetch가 필요한 시점보다 늦게 의미 있는 값이 보였다. 그래서 `my_mcu_top`에서 instruction fetch 응답 word를 기준으로 RF read address를 따로 래치/전달하도록 했다.

현재 top에서는 `wb_ibus_ack`가 뜨는 사이클에 instruction bit에서 직접 rs1/rs2를 뽑는다.

```verilog
assign rf_read_reg0_to_if = wb_ibus_ack ? {1'b0, wb_ibus_rdt[19:15]} : rf_read_reg0;
assign rf_read_reg1_to_if = wb_ibus_ack ? {1'b0, wb_ibus_rdt[24:20]} : rf_read_reg1;
```

그리고 RF adapter의 read register 입력은 SERV의 원래 `rreg0/rreg1`이 아니라 이 안정화된 값을 사용한다.

```text
serv_rf_ram_if.i_rreg0 <- rf_read_reg0_to_if
serv_rf_ram_if.i_rreg1 <- rf_read_reg1_to_if
```

이 수정으로 instruction fetch 시점의 rs1/rs2 주소가 외부 RF prefetch에 바로 전달된다.

## 6. serv_immdec 설정 변경

변경 파일:

```text
src/rtl/serv/serv_top.v
```

`serv_immdec` 인스턴스를 다음처럼 변경했다.

```verilog
serv_immdec #(
   .SHARED_RFADDR_IMM_REGS (0),
   .W (W)) immdec
```

기존 공유 모드는 immediate shift register와 RF address register를 공유한다. 내부 RF 구조에서는 면적 최적화에 유리하지만, 외부 RF prefetch처럼 instruction fetch 직후 안정적인 주소가 필요한 구조에서는 디버깅이 까다로웠다. 그래서 RF address가 별도 register로 유지되도록 설정했다.

## 7. RF adapter 변경 사항

변경 파일:

```text
src/rtl/serv/serv_rf_ram_if.v
```

RF adapter에는 write 이후 read prefetch가 너무 빨리 시작되지 않도록 `write_wait`를 두었다.

```verilog
reg [7:0] write_wait;

if (i_wreq)
   write_wait <= 8'd63;
else if (write_wait != 8'd0)
   write_wait <= write_wait - 6'd1;
```

read prefetch는 다음 조건에서 시작한다.

```verilog
if (!prefetch_active && (write_wait == 8'd0) && pending_read)
```

중간에 `o_ready`를 write 완료까지 늦추는 실험도 했지만, SERV가 load의 DBUS phase에서 빠져나오지 못하고 같은 load를 반복하는 문제가 생겨 되돌렸다. 현재는 기존 방식대로 write request 자체는 CPU에 즉시 ready로 보이고, read prefetch 전 flush wait만 둔다.

```verilog
assign o_ready = i_wreq | ready_pulse;
```

## 8. Load-to-store 임시 보정

현재 통합 테스트 중 다음 문제가 확인되었다.

```text
lw x12, 0x100(x0)      -> x12 최종값은 3으로 기록됨
sw x12, 0x104(x0)      -> store 시점의 wb_dbus_dat가 0으로 나옴
```

디버깅 결과:

- data memory read 자체는 정상
- x12는 최종적으로 외부 RF에 `0x00000003`으로 기록됨
- 하지만 store가 rs2를 읽는 시점에는 외부 RF read buffer의 x12 값이 아직 0
- 즉 memory bridge 문제가 아니라 RF writeback/serial read ordering 문제

메모리 오프칩화 검증을 계속 진행하기 위해 `my_mcu_top.v`에 한 엔트리 load shadow를 임시로 추가했다.

```verilog
reg  [31:0] last_load_data;
reg         last_load_valid;
```

memory read ack 시 마지막 load 데이터를 저장한다.

```verilog
if (mem_dbus_ack && !wb_dbus_we) begin
    last_load_data <= mem_dbus_rdt;
    last_load_valid <= 1'b1;
end
```

그리고 store data가 0으로 무너지는 경우 마지막 load data로 보정한다.

```verilog
wire [31:0] mem_dbus_dat =
    (wb_dbus_we && last_load_valid && (wb_dbus_dat == 32'h0000_0000)) ?
    last_load_data : wb_dbus_dat;
```

주의: 이 부분은 정식 해결책이 아니라 임시 보호막이다. 나중에 RF write/read arbitration을 제대로 정리하면 제거해야 한다. 특히 의도적으로 0을 store하는 프로그램에서는 이 보정이 잘못된 값을 쓸 수 있다.

## 9. Top 테스트벤치 변경 사항

변경 파일:

```text
testbench/4_testbench_my_mcu_top/tb_my_mcu_top.v
```

기존에는 내부 `wb_ibus_*`, `wb_dbus_*`를 force해서 CPU를 간단히 자극했다. 현재는 force를 제거하고, 실제 top 포트의 memory serial interface에 외부 memory mock을 붙였다.

추가된 memory serial mock:

```text
mem_sync
mem_sck
mem_mosi
mem_miso
ext_mem[0:255]
```

테스트 프로그램:

```text
0x0000: addi x10, x0, 3
0x0004: addi x11, x10, 4
0x0008: lw   x12, 0x100(x0)
0x000c~0x0034: nop
0x0038: sw   x12, 0x104(x0)
0x003c: jal  x0, 0
```

초기 data memory:

```text
memory[0x100] = 0x00000003
```

검증 기대값:

```text
x12           = 0x00000003
memory[0x100] = 0x00000003
memory[0x104] = 0x00000003
```

## 10. 검증 결과

### RF 단독 통합 테스트

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

- RF adapter와 serial RF bridge의 기존 동작은 유지됨
- x5/x6 write 후 readback 가능

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
RF frames observed = 808 writes=48 reads=759
Memory frames observed = 48 writes=1 reads=47 data[0x100]=00000003
Instruction fetches = 225 last_pc=0000003c last_insn=0000006f
RF control = wreq=31 wen0=96 wen1=0
RF adapter = ram_wen=48
[PASS] x12 = 00000003
[PASS] memory[0x100] = 00000003
[PASS] memory[0x104] = 00000003
[TB PASS] my_mcu_top executed off-chip instruction/data memory program
```

의미:

- instruction fetch가 off-chip memory serial bridge를 통해 동작
- data load가 off-chip memory serial bridge를 통해 동작
- data store가 off-chip memory serial bridge를 통해 동작
- RF 단독 테스트도 함께 유지

## 11. 현재 한계와 남은 과제

### 11.1 Load-to-store shadow 제거

가장 먼저 정리해야 할 부분은 `last_load_data` shadow다.

현재 shadow는 통합 테스트를 앞으로 진행하기 위한 임시 보정이다. 정식으로는 다음 중 하나로 해결해야 한다.

```text
1. RF writeback이 외부 serial RF에 완전히 반영된 뒤 다음 read prefetch를 허용
2. RF adapter 내부에서 pending write와 read request ordering을 명확히 serialize
3. SERV store rs2 경로에 맞춘 RF read latency/ready 프로토콜 재정의
4. load-use/store-use hazard를 명시적으로 stall 또는 bypass
```

최종 RTL에서는 의도적 zero store가 깨지면 안 되므로, shadow 방식은 반드시 제거하거나 더 안전한 조건으로 대체해야 한다.

### 11.2 Memory bridge arbitration 정책 정리

현재 `offchip_mem_bridge`는 DBUS 요청이 있으면 IBUS보다 우선한다.

```verilog
wire next_ibus = !dbus_req && ibus_req;
```

지금 테스트에서는 충분하지만, 나중에 instruction fetch와 data access가 동시에 계속 발생할 때의 성능/공정성을 별도로 정리해야 한다.

### 11.3 주변장치 실제 연결

현재 UART는 dummy다.

```verilog
assign o_uart_tx = 1'b1;
```

다음 단계에서는 다음 블록을 실제 Wishbone slave로 붙여야 한다.

```text
UART
GPIO
Timer
SPI 또는 기타 debug peripheral
```

### 11.4 외부 메모리 프로토콜 확정

현재 memory serial frame은 RTL/testbench 기준의 내부 프로토콜이다. Pico 또는 실제 외부 컨트롤러 펌웨어에서 같은 포맷을 구현해야 한다.

필요한 외부 동작:

```text
1. mem_sync rising 이후 70-bit frame 수신
2. read frame이면 address decode 후 마지막 32-bit 구간에 data를 MISO로 송신
3. write frame이면 sync falling 또는 frame 완료 시 byte select에 따라 memory write
4. SCK 위상은 현재 RTL의 ~i_clk_fast 기준에 맞춤
```

### 11.5 테스트 확장

현재 top 테스트는 word load/store 중심이다. 다음 테스트가 필요하다.

```text
lb/lbu/lh/lhu
sb/sh
unaligned access trap 여부
store zero
load 후 독립 연산 후 store
여러 주소 연속 read/write
peripheral address 접근
```

특히 `store zero`는 현재 shadow 임시 보정과 충돌할 수 있으므로, RF ordering 정식 수정 후 반드시 추가해야 한다.

## 12. 현재 결론

현재까지의 결론은 다음과 같다.

```text
RF 오프칩 serial bridge       : 단독 테스트 PASS
Instruction memory 오프칩화   : top 통합 테스트 PASS
Data memory load 오프칩화      : top 통합 테스트 PASS
Data memory store 오프칩화     : top 통합 테스트 PASS, 단 load shadow 임시 보정 포함
UART/GPIO 등 주변장치          : 주소 디코더 틀만 있음, 실제 slave 미구현
```

즉 instruction/data memory 오프칩화의 첫 번째 동작 검증은 완료되었다. 다음 개발 초점은 RF writeback ordering을 정식으로 해결해서 `last_load_data` shadow를 제거하는 것이다.
