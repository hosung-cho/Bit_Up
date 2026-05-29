# MPW MyChip 2x2 4-bit PE Array

This repository contains a compact Verilog design intended for the MPW MyChip
flow. The design computes an unsigned 2x2 matrix multiply:

```text
C = A x B
```

Each input element is 4 bits. Each output element is 10 bits:

```text
max = 15 * 15 + 15 * 15 = 450
```

450 requires 9 bits, so the 10-bit accumulator includes one guard bit.

## Files

- `rtl/pe_array_2x2.v`: sequential 2x2 matrix multiply core using one reused
  4x4 multiply-add datapath.
- `rtl/mychip_gpio_top.v`: generic low-pin GPIO wrapper using a 4-bit
  bidirectional nibble bus.
- `tb/tb_pe_array_2x2.v`: core testbench.
- `tb/tb_mychip_gpio_top.v`: GPIO protocol testbench.

## GPIO Protocol

Top-level module:

```verilog
module mychip_gpio_top (
    input  wire clk,
    input  wire rst_n,
    inout  wire [3:0] gpio_data,
    input  wire gpio_strobe,
    input  wire gpio_mode
);
```

Use `gpio_mode = 0` for input loading. Drive `gpio_data[3:0]` externally and
pulse `gpio_strobe` once per nibble.

Input order:

```text
a00, a01, a10, a11, b00, b01, b10, b11
```

After the eighth nibble, the top starts the sequential core automatically.

Use `gpio_mode = 1` for output. The chip drives `gpio_data[3:0]`. After
calculation is done, each `gpio_strobe` pulse advances to the next output
nibble.

Output order:

```text
c00 low, c00 mid, c00 high,
c01 low, c01 mid, c01 high,
c10 low, c10 mid, c10 high,
c11 low, c11 mid, c11 high
```

The high nibble contains `{2'b00, result[9:8]}`.

Before calculation is done, output mode drives a status nibble:

```text
bit0: all inputs loaded
bit1: core busy
bit2: core done
bit3: reserved 0
```

## Simulation

With Icarus Verilog:

```sh
iverilog -g2012 -o sim_core rtl/pe_array_2x2.v tb/tb_pe_array_2x2.v
vvp sim_core

iverilog -g2012 -o sim_gpio rtl/pe_array_2x2.v rtl/mychip_gpio_top.v tb/tb_mychip_gpio_top.v
vvp sim_gpio
```

## MPW Notes

The top module intentionally uses a generic GPIO-like interface. When the
official PDK is available, connect these signals to the project GPIO cells or
the provided `MPW_PAD_28pin` pad frame according to the current PDK documents.

The logic area is intentionally minimized by reusing a single multiply-add
datapath instead of instantiating four fully parallel PEs.
