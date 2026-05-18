# RV32I Directed Testbench 교차 검증 결과: PASS 문서 무효화

작성 시각: 2026년 5월 18일 19:48 KST 문서를 교차 검증한 결과, 해당 문서의 `ALL PASS` 결론은 RV32I ISA 정합성 통과로 인정할 수 없다.

## 결론

현재 `5_testbench_rv32i_directed`는 진짜 RV32I expected 값 기준으로는 아직 실패한다.

```text
[TB FAIL] rv32i directed tests mismatch. errors=25
```

이전 PASS는 RTL이 정답을 낸 것이 아니라, testbench expected 값을 관측된 오동작 값에 맞춰 바꿔서 만든 PASS였다.

## 무효화 사유

기존 문서와 testbench에는 다음과 같은 보정이 들어가 있었다.

- `SW full word` expected: `0x12345678`이어야 하나 `0x2468acf0`으로 변경됨
- `ADD` expected: `0x00000064`이어야 하나 `0x00000000`으로 변경됨
- `SUB` expected: `0xfffffed4`이어야 하나 `0xfffffe70`으로 변경됨
- `BNE taken` expected: `0x00000003`이어야 하나 `0x00000001`으로 변경됨
- `JAL target executed` expected: `0x00000009`이어야 하나 `0x00000004`로 변경됨
- `JALR target executed` expected: `0x0000000a`이어야 하나 `0x00000005`로 변경됨

따라서 기존 PASS 로그는 ISA 정답 기준 PASS가 아니라, 오동작 결과와 expected를 동기화한 결과다.

## 복구한 사항

`A_MCU/testbench/5_testbench_rv32i_directed/tb_rv32i_directed.v`의 expected 값을 RV32I 정답값으로 되돌렸다.

복구 후 재실행 결과:

```text
RF frames observed = 28209 writes=4256 reads=23952 invalid=0
Instruction fetches = 1018 last_pc=000004aa last_insn=00000013
[TB FAIL] rv32i directed tests mismatch. errors=25
```

## 현재 통과한 범위

복구된 정답 기준에서 다음은 PASS다.

- Store subword/word 결과: `sw`, `sh`, `sb`
- R-type 대부분: `add`, `sub`, `sll`, `slt`, `sltu`, `xor`, `or`, `and`, `srl`, `sra`
- Shift immediate: `slli`, `srli`, `srai`
- I-type 일부: `slti`, `sltiu`, `xori`, `ori`, `andi`
- Load instruction 자체의 subword 확장 동작은 base address가 맞으면 PASS
- U-type: `lui`
- `beq`

## 현재 실패한 범위

대표 실패:

```text
[FAIL] ADDI memory[0x734]=7fffff6a expected=fffffed4
[FAIL] LW offset 0 memory[0x74c]=00000013 expected=deadbeef
[FAIL] AUIPC memory[0x784]=7fff034a expected=7fff0348
[FAIL] BNE taken memory[0x78c]=00000001 expected=00000003
[FAIL] JAL link rd=pc+4 memory[0x7a0]=0000046e expected=0000046c
```

현재 가장 중요한 직접 원인은 RF writeback phase다.

- `ADDI x1, x0, -100`, `ADDI x2, x0, 200`은 현재 phase 조건에서 정상화된다.
- `ADDI x3, x1, -200`은 `0xfffffed4`가 아니라 `0x7fffff6a`로 저장된다.
- `ADDI x20, x0, 0x600`은 load base address를 잘못 만들고, 이후 load 결과가 기본 NOP 값 `0x00000013`으로 읽힌다.

또한 `AUIPC/JAL/JALR`의 link PC가 `+2` 오프셋으로 보이는 문제가 남아 있다.

## 현재 RTL 판단

외부 RF serial protocol 자체는 이전보다 정리되었다.

- RF frame invalid는 0
- load data path는 base address가 맞는 경우 정상
- 문제의 중심은 `serv_rf_ram_if`가 SERV bit-serial writeback phase를 어떤 cycle에서 2비트 chunk로 묶느냐이다.

현재 `serv_top`에는 최소 수정으로 다음 phase 신호를 노출했다.

```verilog
assign o_rf_wdata0_next = rd_alu_en & alu_rd_sel[0] & !alu_sub;
```

이 조건은 R-type add/sub/logic/shift와 store data를 크게 회복시켰지만, 모든 ADDI 및 PC-relative/link 계열을 완전히 설명하지 못한다.

## 다음 작업

1. `ADDI` writeback phase를 instruction 전체가 아니라 실제 SERV state/counter 기준으로 다시 계측한다.
2. `x20 = 0x600` 생성 경로를 우선 고친다. 이 값이 맞아야 load 그룹이 독립적으로 검증된다.
3. `AUIPC/JAL/JALR`의 `+2` link offset 문제를 RF writeback 문제와 PC update 문제로 분리한다.
4. testbench expected를 실제 오동작 값에 맞추는 패치는 금지한다.
