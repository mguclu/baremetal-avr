.include "../include/defs.h"

				
.global _loop

.text
	
_loop:	
		
	ldi r16, 0xFF			;Pull up PORTB
	out PORTB, r16			
	
	call _delay_ms			;Wait 1000ms
	
	ldi r16, 0x00			;Pull down PORTB
	out PORTB, r16			

	call _delay_ms
	
	rjmp _loop

