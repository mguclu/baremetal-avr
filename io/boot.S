

.include "../include/defs.h"				;mcu specific definitions
.include "../include/setStack.S"				


.global _start					;Export function				
.extern _loop					;Import function

.org 	0x00									
.text			

_start:							;Program entry point

	
	setStack					;Call setStack macro					
	
	ldi r16, 0xFF				;Set DDRB as output
	out DDRB, r16				
	
	rjmp _loop

