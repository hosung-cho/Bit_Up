#!/usr/bin/env bash
set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

TEST_CASES=(
  add addi and andi auipc beq bge bgeu blt bltu bne
  jal jalr lb lbu lh lhu lui lw or ori
  sb sh sll slli slt slti sltiu sltu sra srai srl srli sub sw xor xori
)

mkdir -p "$SCRIPT_DIR/generated"

if [ ! -f "$SCRIPT_DIR/generated/add/program.hex" ]; then
  ./build_compliance.sh || exit 1
fi

echo "========================================================="
echo "  [1/2] Vivado/run.sh availability check"
echo "========================================================="
cp -f "$SCRIPT_DIR/generated/add/program.hex" "$SCRIPT_DIR/generated/program.hex"

LOG_DIR="$SCRIPT_DIR/compliance_logs"
rm -rf "$LOG_DIR"
mkdir -p "$LOG_DIR"

PASS_COUNT=0
FAIL_COUNT=0
FAILED_LIST=()
START_TIME=$(date +%s)

echo "========================================================="
echo "  [2/2] Running rv32ui regression"
echo "========================================================="
for TEST in "${TEST_CASES[@]}"; do
  echo -n "  Running testcase: [$TEST] ... "
  TEST_GEN_DIR="$SCRIPT_DIR/generated/$TEST"
  if [ ! -f "$TEST_GEN_DIR/program.hex" ]; then
    echo "FAIL (missing program.hex)"
    FAIL_COUNT=$((FAIL_COUNT + 1))
    FAILED_LIST+=("$TEST")
    continue
  fi

  cp -f "$TEST_GEN_DIR/program.hex" "$SCRIPT_DIR/generated/program.hex"
  PROGRAM_HEX="$TEST_GEN_DIR/program.hex" ./run.sh > "$LOG_DIR/$TEST.log" 2>&1 || true

  if grep -q "\\[TB PASS\\] riscv-tests case passed" "$LOG_DIR/$TEST.log"; then
    echo "PASS"
    PASS_COUNT=$((PASS_COUNT + 1))
  else
    echo "FAIL"
    FAIL_COUNT=$((FAIL_COUNT + 1))
    FAILED_LIST+=("$TEST")
  fi
done

END_TIME=$(date +%s)
ELAPSED=$((END_TIME - START_TIME))

echo "========================================================="
echo "  C_SERV_ALU_FPGA RV32UI REGRESSION"
echo "========================================================="
echo "  TOTAL   : $((PASS_COUNT + FAIL_COUNT))"
echo "  PASS    : $PASS_COUNT"
echo "  FAIL    : $FAIL_COUNT"
echo "  ELAPSED : ${ELAPSED}s"
if [ $FAIL_COUNT -gt 0 ]; then
  echo "  FAILED  : ${FAILED_LIST[*]}"
  exit 1
fi
echo "  ALL TESTCASES PASSED"
exit 0
