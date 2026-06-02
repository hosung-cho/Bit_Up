# RV32I Directed 진짜 PASS 및 RF Writeback Phase 해결

작성 시각: 2026-05-18 20:47 KST

## 결론

`5_testbench_rv32i_directed`의 이전 가짜 PASS 문제를 제거하고, RV32I 정답 expected 값 기준으로 다시 통과시켰다.

핵심 수정은 `serv_rf_ram_if.v`의 port0 writeback 데이터 선택을 명령어 기준이 아니라 RF adapter write burst 시작 위상 기준으로 래치한 것이다.

## 해결한 문제

기존에는 `rd_alu_en & alu_rd_sel[0] & !alu_sub` 조건만으로 `wdata0_next`를 선택했다. 이 방식은 일부 ADD/ADDI에는 맞았지만, 같은 ADDI라도 write burst가 시작되는 RF adapter counter 위상에 따라 틀렸다.

관측 결과:

- 첫 write chunk가 `rcnt=4` 계열에서 시작하면 `wdata0_next`가 맞음
- 첫 write chunk가 `rcnt=0` 계열에서 시작하면 기존 `wdata0_r`가 맞음

따라서 `serv_rf_ram_if.v`에 `wdata0_next_phase` 1비트 래치를 추가했다.

## RTL 변경 요약

변경 파일:

- `A_MCU/src/rtl/serv/serv_rf_ram_if.v`
- `A_MCU/src/rtl/serv/serv_top.v`
- `A_MCU/src/rtl/serv/serv_decode.v`
- `A_MCU/testbench/5_testbench_rv32i_directed/tb_rv32i_directed.v`

핵심 로직:

```verilog
wire use_wdata0_next = i_wdata0_next &
                       ((write_chunk == 4'd0) ? rcnt[2] : wdata0_next_phase);
```

첫 chunk에서 `rcnt[2]`로 phase를 판정하고, 이후 같은 write burst의 나머지 chunk에는 래치된 `wdata0_next_phase`를 사용한다.

## 검증 결과

실행:

```bash
cd A_MCU/testbench/5_testbench_rv32i_directed/sim
./run.sh
```

결과:

```text
RF frames observed = 15905 writes=1088 reads=14816 invalid=0
Memory frames observed = 861 writes=53 reads=808
Instruction fetches = 794 last_pc=000004fc last_insn=0000006f
[TB PASS] rv32i directed tests passed on my_mcu_top off-chip path
```

통과 범위:

- Store: `SW`, `SH`, `SB`
- R-type: `ADD`, `SUB`, `SLL`, `SLT`, `SLTU`, `XOR`, `OR`, `AND`, `SRL`, `SRA`
- I-type: `ADDI`, `SLTI`, `SLTIU`, `XORI`, `ORI`, `ANDI`
- Shift immediate: `SLLI`, `SRLI`, `SRAI`
- Load: `LW`, `LH`, `LB`, `LHU`, `LBU`
- U-type: `LUI`, `AUIPC`
- Branch: `BEQ`, `BNE`, `BLT`, `BGE`, `BLTU`, `BGEU`
- Jump: `JAL`, `JALR`

## 추가 회귀 확인

RF 계층 테스트도 통과했다.

```text
[TB PASS] serial external RF bridge test passed. frames=43
[TB PASS] rf_if + serial bridge integration passed. frames=64 writes=32 reads=32
```

## 합성 확인

Yosys 합성도 통과했다.

```text
Calculated Area : 794124 um²
Area Constraint : [PASS] (Safe under 1.0 mm²)
Area Margin     : 20.00 %
```

합성 실패를 유발하던 `serv_top.v`의 시뮬레이션용 `$display(... $time)`는 `translate_off/on`으로 감싸 합성 대상에서 제외했다.

## 주의할 점

`4_testbench_my_mcu_top`은 현재 기준 regression으로 쓰기 어렵다.

- `my_mcu_top`은 `WITH_CSR=0`
- 4번 테스트벤치는 CSR RF slot 32~35까지 기대함
- reset 시간이 짧아 실제 instruction fetch가 시작되지 않는 상태로 실패함

따라서 현 시점의 RV32I 기능 검증 기준은 `5_testbench_rv32i_directed`로 둔다.

