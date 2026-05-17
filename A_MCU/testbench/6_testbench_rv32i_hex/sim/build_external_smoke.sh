#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TB_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
PROGRAM_DIR="$TB_DIR/programs"
BUILD_DIR="$SCRIPT_DIR/generated"
TOOL_PREFIX="${RISCV_TOOL_PREFIX:-/opt/riscv32i/bin/riscv32-unknown-elf}"

mkdir -p "$BUILD_DIR"

"${TOOL_PREFIX}-gcc" \
  -march=rv32i -mabi=ilp32 -nostdlib -nostartfiles \
  -T "$PROGRAM_DIR/link.ld" \
  "$PROGRAM_DIR/external_smoke.S" \
  -o "$BUILD_DIR/external_smoke.elf"

"${TOOL_PREFIX}-objcopy" -O binary \
  "$BUILD_DIR/external_smoke.elf" \
  "$BUILD_DIR/external_smoke.bin"

od -An -tx1 -v "$BUILD_DIR/external_smoke.bin" | awk '
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
' > "$BUILD_DIR/program.hex"

awk 'BEGIN { for (i = 0; i < 512; i++) print (i == 448) ? "00000001" : "00000000" }' \
  > "$BUILD_DIR/expected_mem.hex"

awk 'BEGIN { for (i = 0; i < 512; i++) print (i == 448) ? "00000001" : "00000000" }' \
  > "$BUILD_DIR/expected_valid.hex"

echo "Generated:"
echo "  $BUILD_DIR/program.hex"
echo "  $BUILD_DIR/expected_mem.hex"
echo "  $BUILD_DIR/expected_valid.hex"
