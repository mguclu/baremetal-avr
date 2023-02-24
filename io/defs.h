


; Stack

.equ SPH,       	0x3E              ; STACK POINTER ADDRESS HIGH
.equ SPL,       	0x3D              ; STACK POINTER ADDRESS LOW
.equ RAMEND, 		0x08FF              


; Port direction regs 0 in, 1 out
.equ DDRB,			0x04
.equ DDRC,			0x07
.equ DDRD,			0x0A

; Port Regs | pull resistors for writing
.equ PORTB,			0x05
.equ PORTC,			0x08
.equ PORTD,			0x0B

; For reading
.equ PINB,			0x03
.equ PINC,			0x06
.equ PIND, 			0x09
