ENTRY(_start)                   


SECTIONS
{

    . = 0x0;
    .start . : { boot.o(.text)}
    .text : { *(.text)}
    .data : {*(.data)}
    .bss  : {*(.bss COMMON)}
    . = ALIGN(8);
    . = 0x08FF;
    RAMEND = .;
    }
