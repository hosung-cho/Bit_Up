#!/usr/bin/env bash
set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

TEST_CASES=(
  add addi and andi auipc beq bge bgeu blt bltu bne
  jal jalr lb lbu lh lhu lui lw or ori
  sb sh sll slli slt slti sltiu sltu sra srai srl srli sub sw xor xori
)

# 1. 최초 1회 공통 Elaboration (컴파일 및 프로젝트 빌드) 수행
echo "========================================================="
echo "  [1/2] Initial Compilation & Elaboration Starting..."
echo "========================================================="
# 사용 플래그 강제 기입
mkdir -p "$SCRIPT_DIR/generated"
echo "1" > "$SCRIPT_DIR/generated/use_external.flag"

# 공통 Elaboration용 1차 빌드 구동 (add 케이스를 기본값으로 사용)
cp -f "$SCRIPT_DIR/generated/add/program.hex" "$SCRIPT_DIR/generated/program.hex"
cp -f "$SCRIPT_DIR/generated/add/expected_mem.hex" "$SCRIPT_DIR/generated/expected_mem.hex"
cp -f "$SCRIPT_DIR/generated/add/expected_valid.hex" "$SCRIPT_DIR/generated/expected_valid.hex"

export PROGRAM_HEX="$SCRIPT_DIR/generated/program.hex"
export EXPECTED_HEX="$SCRIPT_DIR/generated/expected_mem.hex"
export EXPECTED_VALID_HEX="$SCRIPT_DIR/generated/expected_valid.hex"

./run.sh > elaboration.log 2>&1

if [ $? -ne 0 ]; then
  echo "ERROR: Initial Elaboration failed! Please check 'elaboration.log'."
  exit 1
fi
echo "  Initial Elaboration Success! Snapshot generated successfully."
echo

# XSim 실행 바이너리 경로 정의
XSIM_DIR="$SCRIPT_DIR/sim_workspace/sim_project.sim/sim_1/behav/xsim"
XSIM_BIN="xsim"

# 2. XSim 스냅샷 다이렉트 덮어쓰기 초고속 연사 Regression 구동
echo "========================================================="
echo "  [2/2] Running E2E Regression with Ultra-Fast Engine"
echo "========================================================="

PASS_COUNT=0
FAIL_COUNT=0
FAILED_LIST=()

START_TIME=$(date +%s)

for TEST in "${TEST_CASES[@]}"; do
  echo -n "  Running testcase: [$TEST] ... "
  
  TEST_GEN_DIR="$SCRIPT_DIR/generated/$TEST"
  if [ ! -d "$TEST_GEN_DIR" ]; then
    echo "FAIL (No build files found)"
    FAIL_COUNT=$((FAIL_COUNT + 1))
    FAILED_LIST+=("$TEST")
    continue
  fi

  # 🚀 XSim 작업 디렉토리에 파일들 직접 덮어쓰기 (컴파일 생략 핵심!)
  cp -f "$TEST_GEN_DIR/program.hex" "$XSIM_DIR/program.hex"
  cp -f "$TEST_GEN_DIR/expected_mem.hex" "$XSIM_DIR/expected_mem.hex"
  cp -f "$TEST_GEN_DIR/expected_valid.hex" "$XSIM_DIR/expected_valid.hex"
  cp -f "$SCRIPT_DIR/generated/use_external.flag" "$XSIM_DIR/use_external.flag"

  # 🚀 XSim 본체 다이렉트 실행 (0.1초 컷!)
  cd "$XSIM_DIR"
  ./$XSIM_BIN tb_rv32i_compliance_behav \
    -key {Behavioral:sim_1:Functional:tb_rv32i_compliance} \
    -tclbatch tb_rv32i_compliance.tcl \
    -log simulate.log > /dev/null 2>&1 || true

  # 검증 결과 채점
  if grep -q "rv32i directed tests passed" simulate.log; then
    echo "PASS"
    PASS_COUNT=$((PASS_COUNT + 1))
  else
    ERR_CODE=$(grep -o "mismatch. errors=[0-9]*" simulate.log || echo "")
    if [ -n "$ERR_CODE" ]; then
       echo "FAIL ($ERR_CODE)"
    else
       echo "FAIL (Simulation Fail/Hang)"
    fi
    FAIL_COUNT=$((FAIL_COUNT + 1))
    FAILED_LIST+=("$TEST")
  fi
  
  # 원래 디렉토리 복귀
  cd "$SCRIPT_DIR"
done

END_TIME=$(date +%s)
ELAPSED=$((END_TIME - START_TIME))

# 임시 정리
rm -f elaboration.log

echo "========================================================="
echo "  E2E COMPLIANCE REGRESSION STATISTICS"
echo "========================================================="
echo "  TOTAL RUN : $((PASS_COUNT + FAIL_COUNT))"
echo "  PASS      : $PASS_COUNT"
echo "  FAIL      : $FAIL_COUNT"
echo "  ELAPSED TIME: ${ELAPSED} seconds"
if [ $FAIL_COUNT -gt 0 ]; then
  echo "  FAILED TESTCASES: ${FAILED_LIST[*]}"
  echo "========================================================="
  exit 1
else
  echo "  ALL 37 TESTCASES PASSED SUCCESSFULLY!"
  echo "========================================================="
  exit 0
fi
