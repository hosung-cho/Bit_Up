# 4-2 CSR-Free my_mcu_top Smoke Test PASS

작성 시각: 2026-05-18 23:25 KST

## 목적

기존 `4_testbench_my_mcu_top`은 CSR 명령과 CSR RF slot 기대값을 포함하고 있었다. 현재 tape-out 우선 구성의 `my_mcu_top`은 `WITH_CSR=0`이므로, CSR 없는 top-level smoke test를 별도로 만들었다.

## 추가한 테스트벤치

경로:

```text
A_MCU/testbench/4_2_testbench_my_mcu_top_no_csr/
```

구성:

- `tb_my_mcu_top_no_csr.v`
- `sim/run_sim.tcl`
- `sim/run.sh`
- `sim/.gitignore`

## 검증 범위

CSR 명령은 포함하지 않는다.

검증 항목:

- off-chip instruction memory fetch
- off-chip data memory load/store
- external serial RF read/write
- `ADDI`, `LUI`, `ADD`, `SLL`, `XOR`
- `LW`
- `SW`, `SH`, `SB`
- `BEQ`, `BNE`
- `JAL`, `JALR`
- 현재 `my_mcu_top`에서 GPIO 출력이 0으로 tie-off된 상태 확인

## 실행 결과

실행:

```bash
cd A_MCU/testbench/4_2_testbench_my_mcu_top_no_csr/sim
./run.sh
```

결과:

```text
RF frames observed = 8769 writes=288 reads=8480 invalid=0
Memory frames observed = 514 writes=17 reads=497
Instruction fetches = 495 last_pc=00000194 last_insn=0000006f
[TB PASS] my_mcu_top CSR-free smoke test passed
```

## 비고

기존 4번 테스트벤치는 현재 설계와 맞지 않는다.

- 현재 `my_mcu_top`: `WITH_CSR=0`
- 기존 4번 TB: CSR 명령과 CSR RF slot `32~35` 검증 포함

따라서 현재 CSR-free tape-out 후보 검증에는 `4_2_testbench_my_mcu_top_no_csr`와 `5_testbench_rv32i_directed`를 기준으로 둔다.

