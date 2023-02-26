
.include "../include/defs.h"	
.include "../include/setStack.S"		

.global _start							
.global _loop
.type _loop,@function
.extern c_entry
.type c_entry,@function

.org 	0x00									
.text	
		
_start:							
							
	setStack

_loop:							
		
	call c_entry				
	
	rjmp _loop


