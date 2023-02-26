

.include "../include/defs.h"				;mcu specific definitions
.include "../include/setStack.S"				


.global _start								; Export _start as global label 
.extern c_entry								; Calls external function from main.c

.org 	0x00					
					
.text	
	
_start:										; Program Entry	

	setStack								; Call macro					
		
_loop:										; Infinite Loop

	call c_entry
	
	rjmp _loop

