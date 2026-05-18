#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TB_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
PROGRAM_DIR="$TB_DIR/programs"
BUILD_DIR="$SCRIPT_DIR/generated"
TOOL_PREFIX="${RISCV_TOOL_PREFIX:-/opt/riscv32i/bin/riscv32-unknown-elf}"

mkdir -p "$BUILD_DIR"

echo "1. Compile and link assembly program..."
"${TOOL_PREFIX}-gcc" \
  -march=rv32i -mabi=ilp32 -nostdlib -nostartfiles \
  -T "$PROGRAM_DIR/link.ld" \
  "$PROGRAM_DIR/external_smoke.S" \
  -o "$BUILD_DIR/external_smoke.elf"

echo "2. Generate binary file..."
"${TOOL_PREFIX}-objcopy" -O binary \
  "$BUILD_DIR/external_smoke.elf" \
  "$BUILD_DIR/external_smoke.bin"

echo "3. Generate program.hex..."
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

# The directed hex program uses 0x600 as an external data-memory fixture.
# Keep it outside the executed text region and initialize it through the hex
# image instead of constructing a negative-immediate constant in RF.
awk 'NR == 385 { print "deadbeef"; next } { print }' \
  "$BUILD_DIR/program.hex" > "$BUILD_DIR/program.hex.tmp"
mv "$BUILD_DIR/program.hex.tmp" "$BUILD_DIR/program.hex"

echo "4. Parse ELF symbols dynamically for PC-dependent instructions..."
PC_ADDR=$("${TOOL_PREFIX}-nm" "$BUILD_DIR/external_smoke.elf" | grep -w "pc_label" | awk '{print $1}')
JAL_ADDR=$("${TOOL_PREFIX}-nm" "$BUILD_DIR/external_smoke.elf" | grep -w "jal_label" | awk '{print $1}')
JALR_ADDR=$("${TOOL_PREFIX}-nm" "$BUILD_DIR/external_smoke.elf" | grep -w "jalr_label" | awk '{print $1}')

echo "  Symbol addresses parsed:"
echo "    pc_label   = 0x$PC_ADDR"
echo "    jal_label  = 0x$JAL_ADDR"
echo "    jalr_label = 0x$JALR_ADDR"

PC_DEC=$((16#$PC_ADDR))
JAL_DEC=$((16#$JAL_ADDR))
JALR_DEC=$((16#$JALR_ADDR))

EXPECTED_AUIPC=$((16#7fff0000 + PC_DEC))
EXPECTED_JAL=$((JAL_DEC + 4))
EXPECTED_JALR=$((JALR_DEC + 4))

echo "  Calculated dynamic expectations:"
printf "    EXPECTED_AUIPC = 0x%08x\n" $EXPECTED_AUIPC
printf "    EXPECTED_JAL   = 0x%08x\n" $EXPECTED_JAL
printf "    EXPECTED_JALR  = 0x%08x\n" $EXPECTED_JALR

echo "5. Generate expected_mem.hex and expected_valid.hex dynamically..."
declare -A expected_mem
declare -A expected_valid

# 1. R-type / Shift-immediate ALU
expected_mem[448]="00000064" # 0x700
expected_mem[449]="fffffed4" # 0x704
expected_mem[450]="ffff9c00" # 0x708
expected_mem[451]="00000001" # 0x70c
expected_mem[452]="00000000" # 0x710
expected_mem[453]="ffffff54" # 0x714
expected_mem[454]="ffffffdc" # 0x718
expected_mem[455]="00000088" # 0x71c
expected_mem[456]="00ffffff" # 0x720
expected_mem[457]="ffffffff" # 0x724
expected_mem[458]="f9c00000" # 0x728
expected_mem[459]="00000fff" # 0x72c
expected_mem[460]="ffffffff" # 0x730

# 2. I-type ALU
expected_mem[461]="fffffed4" # 0x734
expected_mem[462]="00000000" # 0x738
expected_mem[463]="00000000" # 0x73c
expected_mem[464]="000000a4" # 0x740
expected_mem[465]="ffffffbc" # 0x744
expected_mem[466]="ffffff18" # 0x748

# 3. Load results
expected_mem[467]="deadbeef" # 0x74c
expected_mem[468]="ffffbeef" # 0x750
expected_mem[469]="ffffdead" # 0x754
expected_mem[470]="ffffffef" # 0x758
expected_mem[471]="ffffffbe" # 0x75c
expected_mem[472]="ffffffad" # 0x760
expected_mem[473]="ffffffde" # 0x764
expected_mem[474]="0000beef" # 0x768
expected_mem[475]="0000dead" # 0x76c
expected_mem[476]="000000ef" # 0x770
expected_mem[477]="000000be" # 0x774
expected_mem[478]="000000ad" # 0x778
expected_mem[479]="000000de" # 0x77c

# 4. U-type & PC relative
expected_mem[480]="7fff0000" # 0x780
expected_mem[481]=$(printf "%08x" $EXPECTED_AUIPC) # 0x784 (dynamic)

# 5. Branch results
expected_mem[482]="00000002" # 0x788
expected_mem[483]="00000003" # 0x78c
expected_mem[484]="00000004" # 0x790
expected_mem[485]="00000005" # 0x794
expected_mem[486]="00000006" # 0x798
expected_mem[487]="00000007" # 0x79c

# 6. JAL & JALR results
expected_mem[488]=$(printf "%08x" $EXPECTED_JAL)   # 0x7a0 (dynamic)
expected_mem[489]="00000000" # 0x7a4
expected_mem[490]="00000009" # 0x7a8
expected_mem[491]=$(printf "%08x" $EXPECTED_JALR)  # 0x7ac (dynamic)
expected_mem[492]="00000000" # 0x7b0
expected_mem[493]="0000000a" # 0x7b4

# 7. Store subword results
expected_mem[400]="12345678" # 0x640
expected_mem[401]="00005678" # 0x644
expected_mem[402]="56780000" # 0x648
expected_mem[404]="78787878" # 0x650

# Assign validity flag for defined keys
for key in "${!expected_mem[@]}"; do
  expected_valid[$key]="00000001"
done

# Write out files
rm -f "$BUILD_DIR/expected_mem.hex" "$BUILD_DIR/expected_valid.hex"
for ((i=0; i<512; i++)); do
  val=${expected_mem[$i]:-00000000}
  echo "$val" >> "$BUILD_DIR/expected_mem.hex"
  
  valid=${expected_valid[$i]:-00000000}
  echo "$valid" >> "$BUILD_DIR/expected_valid.hex"
done

echo "Done! Generated successfully:"
echo "  $BUILD_DIR/program.hex"
echo "  $BUILD_DIR/expected_mem.hex"
echo "  $BUILD_DIR/expected_valid.hex"
