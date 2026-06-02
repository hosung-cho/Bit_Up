#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TB_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../../.." && pwd)"
RISCV_TESTS_DIR="${RISCV_TESTS_DIR:-$REPO_ROOT/../A_MCU/testbench/7_testbench_rv32i_compliance/riscv-tests}"
BUILD_DIR="$SCRIPT_DIR/generated"
TOOL_PREFIX="${RISCV_TOOL_PREFIX:-/opt/riscv32i/bin/riscv32-unknown-elf}"

TEST_CASES=(
  add addi and andi auipc beq bge bgeu blt bltu bne
  jal jalr lb lbu lh lhu lui lw or ori
  sb sh sll slli slt slti sltiu sltu sra srai srl srli sub sw xor xori
)

mkdir -p "$BUILD_DIR"

echo "========================================================="
echo "  C_SERV_ALU_FPGA riscv-tests build"
echo "========================================================="
echo "  riscv-tests = $RISCV_TESTS_DIR"
echo "  tool prefix = $TOOL_PREFIX"

for TEST in "${TEST_CASES[@]}"; do
  TEST_GEN_DIR="$BUILD_DIR/$TEST"
  mkdir -p "$TEST_GEN_DIR"
  echo "  Building testcase: $TEST"

  "${TOOL_PREFIX}-gcc" \
    -march=rv32i -mabi=ilp32 -nostdlib -nostartfiles \
    -I"$TB_DIR/my_mcu_env" \
    -I"$RISCV_TESTS_DIR/isa/macros/scalar" \
    -T "$TB_DIR/programs/link.ld" \
    "$RISCV_TESTS_DIR/isa/rv32ui/$TEST.S" \
    -o "$TEST_GEN_DIR/$TEST.elf"

  "${TOOL_PREFIX}-objcopy" -O binary \
    "$TEST_GEN_DIR/$TEST.elf" \
    "$TEST_GEN_DIR/$TEST.bin"

  od -An -tx1 -v "$TEST_GEN_DIR/$TEST.bin" | awk '
  {
    for (i = 1; i <= NF; i++) {
      byte[count % 4] = $i
      count++
      if ((count % 4) == 0)
        printf "%s%s%s%s\n", byte[3], byte[2], byte[1], byte[0]
    }
  }
  END {
    if ((count % 4) != 0) {
      for (i = count % 4; i < 4; i++)
        byte[i] = "00"
      printf "%s%s%s%s\n", byte[3], byte[2], byte[1], byte[0]
      words++
    }
    words += int(count / 4)
    for (i = words; i < 512; i++)
      print "00000013"
  }
  ' > "$TEST_GEN_DIR/program.hex"
done

echo "========================================================="
echo "  Build complete: $BUILD_DIR/<testcase>/program.hex"
echo "========================================================="
