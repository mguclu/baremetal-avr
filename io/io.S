.include "defs.h"

				
.global _loop

.text
		
_loop:	
		
	ldi r16, 0xFF
	out PORTB, r16
	
	call _delay_ms
	
	ldi r16, 0x00

	out PORTB, r16

	call _delay_ms
	
	rjmp _loop

