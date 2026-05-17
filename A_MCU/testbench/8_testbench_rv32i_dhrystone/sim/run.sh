#!/usr/bin/env bash
set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

echo "========================================================="
echo "  [1/3] Compiling Compact Dhrystone 2.1 C Program..."
echo "========================================================="

TOOLCHAIN_PREFIX="/opt/riscv32i/bin/riscv32-unknown-elf-"
CC="${TOOLCHAIN_PREFIX}gcc"
OBJCOPY="${TOOLCHAIN_PREFIX}objcopy"

if [ ! -f "$CC" ]; then
  echo "ERROR: RISC-V GCC compiler not found at $CC"
  exit 1
fi

mkdir -p "$SCRIPT_DIR/generated"

# 초경량 -O3 최적화 빌드 수행
"$CC" -march=rv32i -mabi=ilp32 -O3 -nostdlib \
  -T ../programs/link.ld \
  -I../my_mcu_env \
  ../programs/dhrystone.c -o "$SCRIPT_DIR/generated/dhrystone.elf"

if [ $? -ne 0 ]; then
  echo "ERROR: Compilation failed!"
  exit 1
fi

echo "  Compilation Success! ELF generated."
echo

echo "========================================================="
echo "  [2/3] Extracting 32-bit Words to Canonical Hex..."
echo "========================================================="

# ELF로부터 Raw Binary 사출
"$OBJCOPY" -O binary "$SCRIPT_DIR/generated/dhrystone.elf" "$SCRIPT_DIR/generated/dhrystone.bin"

# Raw Binary를 32-bit Little-Endian Hex로 파싱 및 512-word(2KB) 제로 패딩 정렬
hexdump -v -e '1/4 "%08x\n"' "$SCRIPT_DIR/generated/dhrystone.bin" > "$SCRIPT_DIR/generated/program.hex.raw"

# 512 워드가 되도록 제로 패딩
TOTAL_WORDS=512
CUR_WORDS=$(wc -l < "$SCRIPT_DIR/generated/program.hex.raw" | tr -d ' ')
PADDING_WORDS=$((TOTAL_WORDS - CUR_WORDS))

cp "$SCRIPT_DIR/generated/program.hex.raw" "$SCRIPT_DIR/generated/program.hex"

if [ $PADDING_WORDS -gt 0 ]; then
  for ((i=0; i<PADDING_WORDS; i++)); do
    echo "00000000" >> "$SCRIPT_DIR/generated/program.hex"
  done
  echo "  Padded $PADDING_WORDS zero words to match 2KB SRAM size (Total: 512 words)."
else
  echo "  Warning: Program size ($CUR_WORDS words) exceeds or matches 512 words!"
fi
echo "  program.hex successfully generated."
echo

echo "========================================================="
echo "  [3/3] Launching Vivado XSim Simulation..."
echo "========================================================="

# 외부 주입 플래그 세팅
echo "1" > "$SCRIPT_DIR/generated/use_external.flag"

export PROGRAM_HEX="$SCRIPT_DIR/generated/program.hex"

vivado -mode batch -source run_sim.tcl -notrace

# Vivado 임시 파일 깔끔한 클린업
rm -rf .Xil
rm -f vivado*.jou vivado*.log

echo "========================================================="
echo "  Execution completed."
echo "========================================================="
