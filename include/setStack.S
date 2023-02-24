.macro setStack         


    ldi r16, lo8(RAMEND)			;Set atmega328p stack ;RAMEND = 0x08FF
	out SPL, r16
    ldi r16, hi8(RAMEND)
	out SPH, r16
	
.endm
