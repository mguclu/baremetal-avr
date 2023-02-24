; Assembly code auto-generated
; by utility from Bret Mulvey
; Delay 16 000 000 cycles
; 1s at 16.0 MHz

.global _delay_ms
.text

_delay_ms:
    
    ldi  r18, 82
    ldi  r19, 43
    ldi  r20, 0
    
    
L1: 
    dec  r20
    brne L1
    dec  r19
    brne L1
    dec  r18
    brne L1
    lpm
    nop
	
	ret

