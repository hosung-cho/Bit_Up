#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TB_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
BUILD_DIR="$SCRIPT_DIR/generated"
TOOL_PREFIX="${RISCV_TOOL_PREFIX:-/opt/riscv32i/bin/riscv32-unknown-elf}"

# 38종 공식 적합성 테스트 케이스 정의
TEST_CASES=(
  add addi and andi auipc beq bge bgeu blt bltu bne
  jal jalr lb lbu lh lhu lui lw or ori
  sb sh sll slli slt slti sltiu sltu sra srai srl srli sub sw xor xori
)

echo "  riscv-tests RV32E 일괄 빌드 시작"

# 빌드 성공한 테스트 케이스 목록을 저장할 파일
SUCCESS_LIST_FILE="$BUILD_DIR/success_cases.txt"
mkdir -p "$BUILD_DIR"
cat /dev/null > "$SUCCESS_LIST_FILE"

for TEST in "${TEST_CASES[@]}"; do
  TEST_GEN_DIR="$BUILD_DIR/$TEST"
  mkdir -p "$TEST_GEN_DIR"

  echo "  Building testcase: $TEST (RV32E) ..."

  # 1. Compile & Link (RV32E 용 my_mcu_env_e 참조, -march=rv32e -mabi=ilp32e 지정)
  if ! "${TOOL_PREFIX}-gcc" \
    -march=rv32e -mabi=ilp32e -nostdlib -nostartfiles \
    -I"$TB_DIR/my_mcu_env_e" \
    -I"$TB_DIR/riscv-tests/isa/macros/scalar" \
    -T "$TB_DIR/programs/link.ld" \
    "$TB_DIR/riscv-tests/isa/rv32ui/$TEST.S" \
    -o "$TEST_GEN_DIR/$TEST.elf" 2>/dev/null; then
      echo "  ==> [SKIP] Testcase '$TEST' is not compatible with RV32E (failed to compile)."
      rm -rf "$TEST_GEN_DIR"
      continue
  fi

  # 2. Binary copy
  "${TOOL_PREFIX}-objcopy" -O binary \
    "$TEST_GEN_DIR/$TEST.elf" \
    "$TEST_GEN_DIR/$TEST.bin"

  # 3. program.hex 생성 (워드 정렬)
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

  # 4. expected_mem.hex 생성 (성공 시 0x700 즉 워드 인덱스 448에 1이 기입됨)
  awk 'BEGIN { for (i = 0; i < 512; i++) print (i == 448) ? "00000001" : "00000000" }' \
    > "$TEST_GEN_DIR/expected_mem.hex"

  # 5. expected_valid.hex 생성 (인덱스 448만 유효 플래그 온)
  awk 'BEGIN { for (i = 0; i < 512; i++) print (i == 448) ? "00000001" : "00000000" }' \
    > "$TEST_GEN_DIR/expected_valid.hex"

  echo "  ==> [SUCCESS] Testcase '$TEST' compiled successfully."
  echo "$TEST" >> "$SUCCESS_LIST_FILE"
done

echo "========================================================="
echo "RV32E compilation summary:"
echo "Successfully compiled cases are saved in: $SUCCESS_LIST_FILE"
cat "$SUCCESS_LIST_FILE"
echo "========================================================="
