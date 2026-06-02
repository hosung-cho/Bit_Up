# Branch/JAL/JALR/CSR Smoke 및 Off-chip/Pico Parser 동기화 정리

작성 시각: 2026-05-16 16:03 KST

## 진행 요약

이번 작업에서는 top-level 시뮬레이션에 control-flow smoke를 추가하고, 외부 RF/Pico frame parser 사양을 CSR shadow register까지 다룰 수 있도록 6-bit register index 기준으로 맞췄다.

검증된 항목은 다음과 같다.

- 기존 off-chip instruction/data memory 실행 경로 유지
- 기존 load/store byte/half/word 및 GPIO read/write 유지
- `beq` not-taken 경로 확인
- `bne` taken 경로 확인
- `jal` link register 확인
- `jalr` target/link 확인
- CSR instruction이 trap 없이 실행되는 최소 smoke 확인
- RF serial frame을 기존 13-bit에서 CSR 포함 14-bit frame으로 확장
- testbench의 Pico-side RF parser를 RTL frame과 동일한 bit layout으로 동기화

## 변경 파일

- `src/rtl/serv/serv_rf_ram.v`
  - RF serial frame width를 고정 13-bit에서 parameter 기반으로 변경했다.
  - `raw = $clog2(32+csr_regs)`, `frame_bits = raw + 8` 구조로 확장했다.
  - `csr_regs=4`일 때 register index가 6-bit가 되고, frame은 14-bit가 된다.
  - shift 경로를 `shift_tx[frame_bits-2:0]` 기반으로 고쳐 14-bit frame 전송 시 상위 1bit 이후가 0으로 밀리는 문제를 수정했다.

- `testbench/2_testbench_serial_external_rf/tb_serial_external_rf.v`
  - Pico-side RF parser를 14-bit frame으로 확장했다.
  - register index를 `[RAW-1:0]`로 넓히고, `pico_ram`을 `32+CSR_REGS` 깊이로 변경했다.

- `testbench/3_testbench_rf_if_serial/tb_rf_if_serial.v`
  - RF IF + serial bridge 통합 테스트의 Pico parser를 14-bit frame으로 확장했다.
  - `serv_rf_ram_if`의 `i_wdata0_next` 포트를 명시적으로 연결했다.

- `testbench/4_testbench_my_mcu_top/tb_my_mcu_top.v`
  - top-level Pico RF parser를 14-bit frame으로 확장했다.
  - branch/JAL/JALR/CSR smoke program을 기존 프로그램 뒤에 추가했다.
  - branch 결과는 `memory[0x128]` marker store로 확인한다.
  - `jal`은 `x23=0x98`, `jalr`은 `x24=0xb8`, `x25=0xac`로 확인한다.
  - CSR instruction은 `csrrwi`/`csrrs`가 trap 없이 실행되는 최소 smoke로 포함했다.

## Off-chip Memory Protocol

Instruction/data memory frame은 이번 작업에서 변경하지 않았다. Pico firmware/parser 쪽 사양은 아래와 동일하게 유지해야 한다.

Frame width: 70-bit, MSB-first

```
[69]    write enable
[68]    ibus flag
[67:64] byte select
[63:32] byte address
[31:0]  write data 또는 read dummy
```

Timing:

- `mem_sync=1` 동안 frame이 전송된다.
- `mem_sck=~clk_fast` 위상으로 동작한다.
- Pico/parser는 `mem_sck` 상승 에지에서 MOSI를 sample한다.
- read frame에서는 주소 field 수신 후 read data를 준비한다.
- 테스트벤치 기준으로는 `mem_bit_cnt == 38`에서 address가 확보되고, `mem_bit_cnt >= 38 && mem_bit_cnt < 70` 구간에 32-bit read data를 MISO로 반환한다.
- address는 byte address이며, testbench memory index는 `addr[9:2]`를 사용한다.

## Pico RF Parser Protocol

CSR shadow register를 포함하기 위해 RF frame은 14-bit로 동기화했다.

Frame width: `RAW + 8`, 현재 `RAW=$clog2(32+4)=6`이므로 14-bit

```
[13]    write enable
[12]    read enable
[11:6]  register index
[5:2]   2-bit chunk index
[1:0]   write data
```

Register map:

- `0..31`: GPR `x0..x31`
- `32..35`: external CSR shadow slot
- SERV 주석 기준 `mscratch`는 register index `32`

Read response:

- Pico/parser는 read frame에서 register/chunk를 decode한 뒤 해당 2-bit data를 MISO로 반환한다.
- testbench 기준 반환 타이밍은 마지막 두 data bit slot에 맞춘다.
- 현재 RTL/testbench는 `bit_cnt >= RF_FRAME_BITS-3 && bit_cnt <= RF_FRAME_BITS-1` 구간에 MSB 쪽 data bit, `bit_cnt >= RF_FRAME_BITS` 이후에 LSB 쪽 data bit를 내보내는 방식으로 맞춰져 있다.

## Top-level Smoke Program

새 smoke 구간은 기존 GPIO 확인 뒤에 붙였다.

- `lw x21, 0x12c(x0)`로 branch condition을 준비한다.
- `beq x21, x0, +8`은 not-taken이어야 하며, 이어지는 `sw x12, 0x128(x0)`가 실행되어 `memory[0x128]=3`이 된다.
- `bne x21, x0, +8`은 taken이어야 하며, 다음 `sw x11, 0x128(x0)`는 skip되어 marker가 `7`로 덮이지 않는다.
- `jal x23, +8` 후 `x23=0x98`을 기대한다.
- `jalr x25, 0(x24)`는 data memory에서 읽은 target `0xb8`로 이동하고, `x25=0xac`를 기대한다.
- CSR smoke는 `csrrwi x26, mscratch, 1` 및 `csrrs x27, mscratch, x0`를 실행한다.

## 검증 결과

통과한 시뮬레이션:

- `testbench/3_testbench_rf_if_serial/sim/./run.sh`
  - `[TB PASS] rf_if + serial bridge integration passed. frames=64 writes=32 reads=32`
- `testbench/4_testbench_my_mcu_top/sim/./run.sh`
  - `[TB PASS] my_mcu_top executed off-chip instruction/data memory program`

별도 확인된 이전 검증:

- `testbench/2_testbench_serial_external_rf/sim/./run.sh`
  - 14-bit RF frame 확장 이후 `[TB PASS] serial external RF bridge test passed. frames=43`

## 남은 이슈

CSR shadow slot update는 아직 완전히 닫히지 않았다.

현재 top-level smoke에서 CSR 명령은 trap 없이 실행되지만, 최종 dump 기준 `rf32..rf35`는 모두 `0`으로 남는다. 그래서 이번 top-level pass 조건에는 `rf32 == 1` 또는 `x27 == 1` readback을 넣지 않았다.

다음 개발 초점:

- `serv_rf_if` port1 CSR write path와 `serv_rf_ram_if` port1 packing/sample phase 확인
- top-level instruction predecode 기반 RF read register override가 CSR access에서 `rreg1=32..35`를 가리는지 확인
- CSR shadow slot `32..35`에 대한 독립 testbench 추가

## Pico Firmware 파일 상태

현재 workspace에서 실제 Pico firmware source 또는 frame parser 구현 파일은 찾지 못했다. 따라서 이번 동기화는 RTL/testbench와 문서 사양 기준으로 정리했다. 실제 Pico firmware 파일이 추가되면 위 RF 14-bit frame 및 memory 70-bit frame 사양에 맞춰 parser 구현을 갱신해야 한다.
