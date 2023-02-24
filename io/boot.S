

.include "defs.h"			;mcu specific definitions
.include "setStack.S"				


.global _start					;Export _start as global function
.extern c_entry
.extern _loop
.org 	0x00					
					
.text	
		
_start:						;Program Entry	

	setStack					
	ldi r16, 0xFF
	out DDRB, r16
	
	rjmp _loop

