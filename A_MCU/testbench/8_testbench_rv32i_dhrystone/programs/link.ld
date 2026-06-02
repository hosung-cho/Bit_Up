ENTRY(_start)

SECTIONS
{
  . = 0x00000000;
  .text : {
    *(.text.init)
    *(.text)
    *(.text*)
  }
  .data : {
    *(.data)
    *(.data*)
    *(.rodata*)
    *(.sdata*)
  }
  .bss : {
    *(.bss)
    *(.bss*)
  }
}
