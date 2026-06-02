#!/usr/bin/env bash
set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

echo "========================================================="
echo "  [1/2] Launching Yosys Synthesis for ETRI 0.5um..."
echo "========================================================="

if ! command -v yosys &> /dev/null; then
  echo "ERROR: yosys is not installed or not in PATH!"
  exit 1
fi

# Yosys 논리 합성 수행
yosys -s synth.ys > synth.log 2>&1

if [ $? -ne 0 ]; then
  echo "ERROR: Yosys synthesis failed! Please check synth.log"
  tail -n 20 synth.log
  exit 1
fi

echo "  Synthesis completed successfully! Log saved to synth.log."
echo

echo "========================================================="
echo "  [2/2] Parsing Synthesis Results & Area Constraints..."
echo "========================================================="

# 첫 번째 design hierarchy 블록에서 Submodule 제외 순수 게이트수 추출
CELL_COUNT_PURE=$(grep -A 10 "=== design hierarchy ===" synth.log | grep -v "===" | grep "my_mcu_top" | head -n 1 | awk '{print $1}')

# 두 번째 design hierarchy 블록에서 Submodule 포함 누적 셀수 및 누적 면적 추출
CELL_COUNT_ACCUM=$(grep -A 10 "=== design hierarchy ===" synth.log | grep -v "===" | grep "my_mcu_top" | tail -n 1 | awk '{print $1}')
CHIP_AREA=$(grep -A 10 "=== design hierarchy ===" synth.log | grep -v "===" | grep "my_mcu_top" | tail -n 1 | awk '{print $2}')

# 값이 비어 있으면 stat 마지막 출력으로 백업 파싱 시도
if [ -z "$CHIP_AREA" ]; then
  CHIP_AREA=$(grep -i "Chip area for top module" synth.log | tail -n 1 | awk -F: '{print $2}' | awk '{print $1}')
  CELL_COUNT_ACCUM=$(grep -i "cells" synth.log | tail -n 5 | grep -v "submodules" | tail -n 1 | awk '{print $1}')
fi

# 면적 한계: 1mm x 1mm = 1,000,000 um²
LIMIT_AREA=1000000.0

# 100만 대비 마진율 계산 (bc 유틸 이용)
if command -v bc &> /dev/null; then
  MARGIN_PCT=$(echo "scale=2; (1000000.0 - $CHIP_AREA) / 1000000.0 * 100" | bc)
  LIMIT_PASS=$(echo "$CHIP_AREA <= 1000000.0" | bc)
  if [ "$LIMIT_PASS" -eq 1 ]; then
    PASS_STATUS="[PASS] (Safe under 1.0 mm²)"
  else
    PASS_STATUS="[FAIL] (Exceeds 1.0 mm²)"
  fi
else
  MARGIN_PCT="N/A (bc command not found)"
  PASS_STATUS="N/A (Calculated Area: $CHIP_AREA um²)"
fi

echo "========================================================="
echo "  ETRI 0.5um YOSYS SYNTHESIS AREA REPORT"
echo "========================================================="
echo "  Top Module      : my_mcu_top"
echo "  Target Std-Cell : ETRI 0.5um CMOS Std Cell"
echo "  -----------------------------------------------------"
echo "  Pure Gate Count : $CELL_COUNT_PURE cells"
echo "  Accum Gate Count: $CELL_COUNT_ACCUM cells"
echo "  Calculated Area : $CHIP_AREA um²"
echo "  Die Size Limit  : 1,000,000.00 um² (1.00 mm x 1.00 mm)"
echo "  -----------------------------------------------------"
echo "  Area Constraint : $PASS_STATUS"
echo "  Area Margin     : $MARGIN_PCT %"
echo "========================================================="
echo

