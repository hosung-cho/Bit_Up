# RV32I Off-chip MCU 현재 진행상태 및 테스트 확장 계획

작성 시점: 2026-05-17 12:53 KST

## 현재 기준점

현재 프로젝트는 SERV 기반 RV32I MCU에서 instruction memory, data memory, register file을 off-chip화하고, top-level testbench에서 기본 RV32I smoke와 CSR/trap 핵심 경로를 통과한 상태이다.

중요한 설계 원칙은 원본 SERV core 내부를 최대한 보존하는 것이다. `serv_top.v`, `serv_rf_top.v`, `serv_synth_wrapper.v`, `serv_decode.v`는 원본 SERV 구조를 유지하고, off-chip 통합에서 필요한 보정은 `my_mcu_top.v`와 `serv_rf_ram_if.v` 경계에서 처리한다.

## 현재 RTL 기준

- SERV 원본 core 내부는 수정하지 않는다.
- `my_mcu_top.v`에서 fetch된 instruction을 가볍게 predecode한다.
- predecode 대상은 다음과 같다.
  - 일반 GPR read 주소
  - CSR shadow read 주소
  - `mret`의 `mepc` read 주소
  - `ecall/ebreak`류 trap의 `mtvec` read 주소
- `serv_rf_ram_if.v`는 off-chip RF adapter로 동작하며 write chunk ordering, bypass, ALU/load writeback phase를 처리한다.

## 통과한 기능 범위

- off-chip instruction memory 통합
- off-chip data memory 통합
- off-chip RF serial bridge 통합
- RF writeback ordering 정리
- ALU/load writeback phase 보정
- RV32I 주요 smoke instruction
- branch smoke: `beq`, `bne`
- jump smoke: `jal`, `jalr`
- CSR shadow 기본 access
  - `mscratch` -> rf32
  - `mtvec` -> rf33
  - `mepc` -> rf34
  - `mtval` -> rf35
- `ecall` trap 진입
- `mcause=11` 확인
- handler 안에서 `mepc=0x4bc` 직접 rewrite
- `csrrs`로 `mepc` readback 확인
- `mret` 후 복귀 marker 확인
- GPIO smoke
- RF serial adapter 단위 read/write 테스트

## 대표 확인값

현재 top-level smoke에서 확인하는 대표 값은 다음과 같다.

- `rf33(mtvec) = 0x00000600`
- `rf34(mepc) = 0x000004bc`
- `rf35(mtval) = 0x00000000`
- `memory[0x700] = 0x000004bc`
  - handler에서 만든 return PC 상수
- `memory[0x704] = 0x00000001`
  - `mret` 이후 복귀 marker
- `memory[0x708] = 0x0000000b`
  - `ecall` exception code 11
- `memory[0x70c] = 0x000004bc`
  - `mepc` readback

## 최근 해결된 핵심 문제

이전에는 `csrrs/csrrw/mret/ecall`에서 RF port1 read 주소가 CSR shadow slot으로 안정적으로 들어가지 않는 경우가 있었다.

특히 `csrrs x4, mepc, x0`가 rf34를 읽지 못하면 0을 읽고, CSRRS writeback 특성 때문에 `mepc`가 0으로 다시 덮였다. 그러면 바로 뒤 `mret`의 복귀 PC까지 깨졌다.

해결은 SERV 내부 수정이 아니라 `my_mcu_top.v`의 system instruction predecode로 처리했다. fetch된 instruction에서 CSR shadow mapping을 미리 계산하여 off-chip RF adapter로 넘긴다.

동시에 trap handler가 data fixture 영역과 겹치던 테스트벤치 배치 문제도 제거했다. handler는 현재 `0x600` 영역에 배치한다.

## 검증 완료 명령

Top-level MCU smoke:

```sh
cd A_MCU/testbench/4_testbench_my_mcu_top/sim
./run.sh
```

결과:

- `[TB PASS] my_mcu_top executed off-chip instruction/data memory program`

RF serial bridge 단위 테스트:

```sh
cd A_MCU/testbench/3_testbench_rf_if_serial/sim
./run.sh
```

결과:

- `[TB PASS] rf_if + serial bridge integration passed. frames=64 writes=32 reads=32`

RV32I directed top-level test:

```sh
cd A_MCU/testbench/5_testbench_rv32i_directed/sim
./run.sh
```

결과:

- `[TB PASS] rv32i directed tests passed on my_mcu_top off-chip path`

## RV32I Directed Test 추가 결과

`A_MCU/testbench/0_testbench_Basic`은 이전 RV32I core 검증용 testbench라서 그대로 연결하기는 어렵다. 해당 testbench는 내부 CPU hierarchy, direct RF/IMEM/DMEM 접근, `tohost_csr`, `RESET_PC=0x1000_0000` 전제를 갖고 있다.

이번에는 그 testbench를 직접 재사용하지 않고, instruction case 목록과 기대값 구조를 참고하여 SERV off-chip top 환경에 맞는 새 testbench를 만들었다.

추가한 위치:

- `A_MCU/testbench/5_testbench_rv32i_directed/tb_rv32i_directed.v`
- `A_MCU/testbench/5_testbench_rv32i_directed/sim/run_sim.tcl`
- `A_MCU/testbench/5_testbench_rv32i_directed/sim/run.sh`

검증 방식:

- `my_mcu_top`을 그대로 instantiate한다.
- instruction/data memory는 off-chip memory serial protocol로 응답한다.
- RF는 off-chip RF serial protocol로 응답한다.
- GPR 내부값을 hierarchy로 직접 들여다보지 않고, 테스트 프로그램이 data memory marker 영역에 결과를 `sw`로 기록한다.
- testbench가 marker memory 값을 기대값과 비교한다.
- 기본 실행은 testbench 안의 내장 directed program을 사용한다.
- 외부 regression program을 위해 `PROGRAM_HEX`, `EXPECTED_HEX`, `EXPECTED_VALID_HEX` 환경변수 기반 로딩 경로를 작업 중이다.

현재 포함된 instruction 범위:

- R-type: `add`, `sub`, `sll`, `slt`, `sltu`, `xor`, `or`, `and`, `srl`, `sra`
- I-type arithmetic: `addi`, `slti`, `sltiu`, `xori`, `ori`, `andi`
- Shift immediate: `slli`, `srli`, `srai`
- Load: `lw`, `lh`, `lb`, `lhu`, `lbu`
- Store: `sw`, `sh`, `sb`
- U-type: `lui`, `auipc`
- Branch: `beq`, `bne`, `blt`, `bge`, `bltu`, `bgeu`
- Jump: `jal`, `jalr`

이번 실행 결과:

- program words: 320
- RF frames: 15649
- RF writes: 1088
- RF reads: 14560
- memory frames: 858
- memory writes: 53
- memory reads: 805
- marker compare: 전부 PASS

따라서 현재는 기존 smoke보다 훨씬 넓은 RV32I 기본 instruction 조합이 실제 `my_mcu_top` + off-chip IMEM/DMEM/RF 경로에서 동작함을 확인했다.

외부 hex 기반 실행 형식:

```sh
cd A_MCU/testbench/5_testbench_rv32i_directed/sim
./build_external_smoke.sh
PROGRAM_HEX=/path/to/program.hex \
EXPECTED_HEX=/path/to/expected_mem.hex \
EXPECTED_VALID_HEX=/path/to/expected_valid.hex \
./run.sh
```

추가한 assembly 기반 준비 파일:

- `programs/external_smoke.S`
- `programs/link.ld`
- `sim/build_external_smoke.sh`

현재 상태:

- `/opt/riscv32i/bin/riscv32-unknown-elf-gcc`로 `external_smoke.S`를 ELF/binary/hex로 생성하는 단계는 통과했다.
- 기본 내장 directed regression은 계속 PASS이다.
- 외부 hex를 Vivado/XSim simulation에 연결하는 실행 단계는 아직 완료되지 않았다. `-testplusarg`, `$readmemh`, generated include 방식까지 시도했지만, 현재 환경의 XSim이 external mode snapshot load 단계에서 `unexpected exception when evaluating tcl command`로 중단된다.
- 따라서 외부 hex flow는 “빌드 준비 완료, Vivado 실행 연결 미완료” 상태로 본다.

이 경로는 official `riscv-tests` 또는 assembly에서 생성한 hex를 연결하기 위한 준비 단계이다. 아직 official `rv32ui-p-*`를 자동 변환/실행하는 flow까지는 연결하지 않았다.

## 아직 완료됐다고 볼 수 없는 범위

- RV32I 전체 instruction compliance
- `riscv-tests` 기반 자동 regression
- `ebreak` 이후 완전 복귀 regression
- misaligned load/store/jump trap
- timer interrupt
- privilege/CSR corner case
- 합성 이후 timing/area 확인

## 다음 테스트 확장 방향

현재 Verilog testbench에는 instruction word가 `ext_mem[]` 초기화로 직접 들어가 있다. 이 방식은 빠르게 smoke를 만들기에는 좋지만, RV32I 전체 검증으로 넓히기에는 유지보수가 어렵다.

다음 단계는 테스트 프로그램을 assembly/hex 기반으로 분리하는 것이다.

1. 현재 hand-written top-level smoke를 유지한다.
2. testbench program loading을 `$readmemh` 기반으로 분리한다.
3. 별도 `rv32i_smoke.S`를 만들어 RISC-V assembler로 hex를 생성한다.
4. RV32I instruction class별 directed test를 늘린다.
5. 이후 `riscv-tests/isa/rv32ui-*`를 포팅한다.

추천 우선순위:

- 1순위: `$readmemh` 기반 프로그램 로더 구조 만들기
- 2순위: assembly 기반 `rv32i_smoke.S` 작성
- 3순위: `rv32ui-p-*` official test를 하나씩 연결

## 현재 결론

현재 상태는 “기본적인 RV32I smoke와 trap/CSR 핵심 경로가 실제 top-level off-chip 환경에서 돈다”까지 확인된 상태이다.

다만 “RV32I 기본 ISA 전체가 공식적으로 전부 돈다”고 말하려면 아직 부족하다. 다음 작업은 테스트 인프라를 Verilog hard-coded instruction에서 assembly/hex 기반 regression으로 바꾸고, 이후 official `riscv-tests`를 연결하는 것이다.
