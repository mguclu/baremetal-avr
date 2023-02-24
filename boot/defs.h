


; Stack

.equ SPH,       	0x3E              ; STACK POINTER ADDRESS HIGH
.equ SPL,       	0x3D              ; STACK POINTER ADDRESS LOW
.equ RAMEND, 		0x08FF              


; Port direction regs 0 in, 1 out
.equ DDRB,			0x24
.equ DDRC,			0x27
.equ DDRD,			0x2A

; Port Regs | pull resistors for writing
.equ PORTB,			0x25
.equ PORTC,			0x28
.equ PORTD,			0x2B

; For reading
.equ PINB,			0x23
.equ PINC,			0x26
.equ PIND, 			0x29
