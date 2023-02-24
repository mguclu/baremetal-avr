

.include "defs.h"				;mcu specific definitions
.include "setStack.S"				


.global _start					;Export _start as global function
.extern c_entry

.org 	0x00					
					
.text	
		
_start:						;Program Entry	

setStack					
		
_loop:	

	call c_entry
	
	rjmp _loop

