#!/usr/bin/env bash
set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

SUCCESS_LIST_FILE="$SCRIPT_DIR/generated/success_cases.txt"

if [ -f "$SUCCESS_LIST_FILE" ]; then
  # success_cases.txt가 있으면 동적으로 읽어옴
  readarray -t TEST_CASES < "$SUCCESS_LIST_FILE"
  echo "Loaded ${#TEST_CASES[@]} testcases from $SUCCESS_LIST_FILE."
else
  # 없으면 기본 37종 전체 시도
  TEST_CASES=(
    add addi and andi auipc beq bge bgeu blt bltu bne
    jal jalr lb lbu lh lhu lui lw or ori
    sb sh sll slli slt slti sltiu sltu sra srai srl srli sub sw xor xori
  )
  echo "No success_cases.txt found. Using default testcases."
fi

# 1. 최초 1회 공통 Elaboration (컴파일 및 프로젝트 빌드) 수행
echo "========================================================="
echo "  [1/2] Initial Compilation & Elaboration (RV32E) Starting..."
echo "========================================================="
# 사용 플래그 강제 기입
mkdir -p "$SCRIPT_DIR/generated"
echo "1" > "$SCRIPT_DIR/generated/use_external.flag"

# 첫 번째 유효 테스트 케이스 선택
FIRST_TEST=""
for T in "${TEST_CASES[@]}"; do
  if [ -d "$SCRIPT_DIR/generated/$T" ]; then
    FIRST_TEST="$T"
    break
  fi
done

if [ -z "$FIRST_TEST" ]; then
  echo "ERROR: No compiled testcases found in '$SCRIPT_DIR/generated/'."
  exit 1
fi

echo "Using testcase '$FIRST_TEST' for initial elaboration."
cp -f "$SCRIPT_DIR/generated/$FIRST_TEST/program.hex" "$SCRIPT_DIR/generated/program.hex"
cp -f "$SCRIPT_DIR/generated/$FIRST_TEST/expected_mem.hex" "$SCRIPT_DIR/generated/expected_mem.hex"
cp -f "$SCRIPT_DIR/generated/$FIRST_TEST/expected_valid.hex" "$SCRIPT_DIR/generated/expected_valid.hex"

export PROGRAM_HEX="$SCRIPT_DIR/generated/program.hex"
export EXPECTED_HEX="$SCRIPT_DIR/generated/expected_mem.hex"
export EXPECTED_VALID_HEX="$SCRIPT_DIR/generated/expected_valid.hex"

./run_e.sh > elaboration.log 2>&1

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
echo "  [2/2] Running E2E Compliance Regression for RV32E"
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

  # 테스트벤치는 sim/generated 아래 canonical hex 파일을 읽는다.
  cp -f "$TEST_GEN_DIR/program.hex" "$SCRIPT_DIR/generated/program.hex"
  cp -f "$TEST_GEN_DIR/expected_mem.hex" "$SCRIPT_DIR/generated/expected_mem.hex"
  cp -f "$TEST_GEN_DIR/expected_valid.hex" "$SCRIPT_DIR/generated/expected_valid.hex"
  echo "1" > "$SCRIPT_DIR/generated/use_external.flag"

  # 🚀 XSim 본체 다이렉트 실행
  cd "$XSIM_DIR"
  "$XSIM_BIN" tb_rv32e_compliance_behav \
    -key {Behavioral:sim_1:Functional:tb_rv32e_compliance} \
    -tclbatch tb_rv32e_compliance.tcl \
    -log simulate.log > /dev/null 2>&1 || true

  # 검증 결과 채점
  if grep -q "rv32e compliance tests passed" simulate.log; then
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
echo "  E2E RV32E COMPLIANCE REGRESSION STATISTICS"
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
  echo "  ALL $PASS_COUNT TESTCASES PASSED SUCCESSFULLY!"
  echo "========================================================="
  exit 0
fi
