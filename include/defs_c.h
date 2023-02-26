/* Since C preprocessor needs pointers to register addresses, "defs.h" is useless */


#ifndef m_328p_h
#define m_328p_h 1



#define UDR0    *((volatile char*) 0xc6)    // USART Data Register
#define UBRR0L  *((volatile char*) 0xc4)    // USART Baud Register LOWER
#define UBRR0H  *((volatile char*) 0xc5)    // USART Baud Register UPPER
#define UBRR0H  *((volatile char*) 0xc5)    // USART Baud Register UPPER
#define UCSR0A  *((volatile char*) 0xc0)    // USART Control Register A
#define UCSR0B  *((volatile char*) 0xc1)    // USART Control Register B
#define UCSR0C  *((volatile char*) 0xc2)    // USART Control Register C

#define UCSZ00	 1
#define	USBS0    3
#define TXEN0    3							// USART Enable Transmit
#define RXEN0    4							// USART Enable Receive
#define UDRE0	 5 							// USART Data Register Empty   

// Port direction register | 0 in, 1 out

#define DDRB *((volatile char*) 0x24)	//0x04		//MEMORY MAPPED! Can only be accessed by offset
#define DDRC *((volatile char*) 0x07)	//0x07		
#define DDRD *((volatile char*) 0x0a)	//0x0a

// Port Registers | Pull resistors 

#define PORTB *((volatile char*) 0x25) 	//0x05
#define PORTC *((volatile char*) 0x08)
#define PORTD *((volatile char*) 0x0b)

// Pin Registers | For reading input

#define PINB *((volatile char*) 0x23)	//0x03
#define PINC *((volatile char*) 0x06)
#define PIND *((volatile char*) 0x09)

//MCU Control Register

#define MCUCR *((volatile char*) 0x55)

#endif  /* _AVR_IOM328P_H_ */
