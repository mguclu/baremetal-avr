

ENTRY(_start)                                           /* Program start                            */                   

MEMORY{                                                 /* Define memory                            */
    
    FLASH (RX) : ORIGIN = 0, LENGTH = 32K
    SRAM (RXW) : ORIGIN = 0x800100, LENGTH =2K
}

SECTIONS
{
    . = 0x0;
    . = ALIGN(2);
    
    .start . : { boot.o(.text)} > FLASH                 /* Starting */
    .text : {*(.text)} > FLASH                          /* Code is here                             */ 
    .data : {*(.data)} > SRAM AT> FLASH                 /* > SRAM: virtual AT> FLASH: memory load   */
    .bss  : {*(.bss COMMON)} > SRAM                     /* Allocated but not assigned               */
    
} 



    
