
#include "../include/defs_c.h"

extern void _delay_ms();

void c_entry(){
	
	DDRB =0xff;							/* All pins output */
	
		while(1){						
			PORTB = 0b00100000;			/* PORTB5 = Arduino UNO Builtin LED = pin 13 */
			_delay_ms();				
			PORTB = 0x00;
			_delay_ms();
		}
}
