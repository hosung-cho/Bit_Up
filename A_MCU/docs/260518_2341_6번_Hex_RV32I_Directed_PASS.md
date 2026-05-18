# 6번 Hex RV32I Directed Test PASS

작성 시각: 2026-05-18 23:41 KST

## 목적

`6_testbench_rv32i_hex`는 Verilog task로 프로그램을 직접 생성하는 5번 테스트와 달리, 외부 RISC-V assembly를 빌드해서 `program.hex`, `expected_mem.hex`, `expected_valid.hex`로 주입하는 테스트다.

## 수정 내용

`external_smoke.S`의 결과 검사용 `sw`는 연산 결과 writeback 직후 바로 실행되고 있었다. 5번 directed testbench의 `store_result()`는 결과 저장 전 4개의 NOP를 넣고 있으므로, 6번 assembly에도 같은 의미의 settle을 넣었다.

추가한 매크로:

```asm
.macro SETTLE4
    nop
    nop
    nop
    nop
.endm

.macro CHECK_SW reg, addr
    SETTLE4
    sw \reg, \addr(x0)
.endm
```

그리고 결과 검사용 store는 `CHECK_SW`로 교체했다.

Load 테스트용 `0xdeadbeef` 데이터는 RF에서 `%hi/%lo`로 즉석 생성하지 않고, `program.hex`의 비실행 데이터 영역 `0x600/4`에 fixture로 주입하도록 `build_external_smoke.sh`를 수정했다.

```bash
awk 'NR == 385 { print "deadbeef"; next } { print }' \
  "$BUILD_DIR/program.hex" > "$BUILD_DIR/program.hex.tmp"
mv "$BUILD_DIR/program.hex.tmp" "$BUILD_DIR/program.hex"
```

## 실행

```bash
cd A_MCU/testbench/6_testbench_rv32i_hex/sim
./build_external_smoke.sh
./run.sh
```

## 결과

```text
RF frames observed = 43265 writes=1072 reads=42192 invalid=0
Memory frames observed = 2574 writes=57 reads=2517
Instruction fetches = 2503 last_pc=00000528 last_insn=0000006f
[TB PASS] rv32i directed tests passed on my_mcu_top off-chip path
```

## 현재 의미

6번은 이제 5번 directed test와 같은 RV32I smoke 범위를 외부 hex 주입 경로로 검증한다.

통과 범위:

- R-type/I-type ALU
- shift immediate
- load/store subword
- LUI/AUIPC
- branch
- JAL/JALR
- off-chip RF
- off-chip instruction/data memory

