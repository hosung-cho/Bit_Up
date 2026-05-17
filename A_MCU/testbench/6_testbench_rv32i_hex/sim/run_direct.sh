#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../../.." && pwd)"
TB_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
GENERATED_DIR="$SCRIPT_DIR/generated"
BUILD_DIR="$SCRIPT_DIR/direct_workspace"
TOP_MODULE="tb_rv32i_hex"
SNAPSHOT="${TOP_MODULE}_behav"

mkdir -p "$GENERATED_DIR" "$BUILD_DIR"
rm -rf "$BUILD_DIR/xsim.dir"

normalize_hex() {
  local value="$1"
  local width="$2"
  local digits=$(( (width + 3) / 4 ))

  value="${value//_/}"
  value="${value^^}"
  value="${value##+(0)}"
  if [[ -z "$value" ]]; then
    value="0"
  fi
  if (( ${#value} > digits )); then
    value="${value: -$digits}"
  fi
  printf "%0${digits}s" "$value"
}

write_mem_assignments() {
  local file_name="$1"
  local mem_name="$2"
  local width="$3"
  local default_value="$4"
  local bit_value="${5:-}"
  local default_norm
  local idx=0
  local line
  local normalized

  default_norm="$(normalize_hex "$default_value" "$width")"
  while IFS= read -r line; do
    line="${line%%#*}"
    line="${line%%//*}"
    line="${line//[[:space:]]/}"
    if [[ -z "$line" ]]; then
      continue
    fi
    normalized="$(normalize_hex "$line" "$width")"
    if [[ "$normalized" != "$default_norm" ]]; then
      if [[ -n "$bit_value" ]]; then
        printf "         %s[%d] = 1'b%s;\n" "$mem_name" "$idx" "$bit_value"
      else
        printf "         %s[%d] = %d'h%s;\n" "$mem_name" "$idx" "$width" "$normalized"
      fi
    fi
    idx=$((idx + 1))
  done < "$file_name"
}

CONFIG_FILE="$GENERATED_DIR/external_hex_config.vh"
INIT_FILE="$GENERATED_DIR/external_hex_init.vh"

if [[ -n "${PROGRAM_HEX:-}" ]]; then
  if [[ -z "${EXPECTED_HEX:-}" || -z "${EXPECTED_VALID_HEX:-}" ]]; then
    echo "PROGRAM_HEX requires EXPECTED_HEX and EXPECTED_VALID_HEX" >&2
    exit 1
  fi

  : > "$CONFIG_FILE"
  cp "$PROGRAM_HEX" "$GENERATED_DIR/program.hex"
  cp "$EXPECTED_HEX" "$GENERATED_DIR/expected_mem.hex"
  cp "$EXPECTED_VALID_HEX" "$GENERATED_DIR/expected_valid.hex"
  printf "1\n" > "$GENERATED_DIR/use_external.flag"
  printf "         // No generated Verilog init selected; hex mode uses plusargs and readmemh.\n" > "$INIT_FILE"
else
  : > "$CONFIG_FILE"
  rm -f "$GENERATED_DIR/use_external.flag"
  printf "         // No external hex selected.\n" > "$INIT_FILE"
fi

PRJ_FILE="$BUILD_DIR/sources.prj"
: > "$PRJ_FILE"
for src in "$PROJECT_ROOT"/src/rtl/serv/*.v "$PROJECT_ROOT"/src/rtl/*.v "$TB_DIR"/*.v; do
  printf 'verilog xil_defaultlib "%s"\n' "$src" >> "$PRJ_FILE"
done

RUN_TCL="$BUILD_DIR/run_all.tcl"
{
  printf "run all\n"
  printf "quit\n"
} > "$RUN_TCL"

pushd "$BUILD_DIR" >/dev/null

echo "[Direct] xvlog..."
xvlog --relax -i "$GENERATED_DIR" -prj "$PRJ_FILE" -log xvlog_direct.log

echo "[Direct] xelab..."
xelab --debug typical --relax --mt 8 \
  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip \
  --snapshot "$SNAPSHOT" "xil_defaultlib.$TOP_MODULE" \
  -log xelab_direct.log

echo "[Direct] xsim..."
xsim "$SNAPSHOT" -tclbatch "$RUN_TCL" -log xsim_direct.log

popd >/dev/null
