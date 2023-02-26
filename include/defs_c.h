/* Since C preprocessor needs pointers to register addresses, "defs.h" is useless */


#include <stdint.h>

#ifndef m_328p_h
#define m_328p_h 1

#define _BV(x)   (1 << x)

/* ## USART0 Registers ## */

#define UDR0    *((volatile uint8_t*) 0xc6)    					// USART Data Register
#define UBRR0L  *((volatile uint8_t*) 0xc4)    					// USART Baud Register LOWER
#define UBRR0H  *((volatile uint8_t*) 0xc5)    					// USART Baud Register UPPER
#define UBRR0H  *((volatile uint8_t*) 0xc5)    					// USART Baud Register UPPER
#define UCSR0A  *((volatile uint8_t*) 0xc0)    					// USART Control Register A
#define UCSR0B  *((volatile uint8_t*) 0xc1)    					// USART Control Register B
#define UCSR0C  *((volatile uint8_t*) 0xc2)    					// USART Control Register C
#define UCSZ00	 1
#define	USBS0    3
#define TXEN0    3												// USART Enable Transmit
#define RXEN0    4												// USART Enable Receive
#define UDRE0	 5 												// USART Data Register Empty   


/* ## IO Registers ## */

#define DDRB 	*((volatile uint8_t*) 0x24)	//0x04				// Port direction register | 0 in, 1 out
#define DDB0	0											
#define DDB1	1												// MEMORY MAPPED! Can only be accessed by offset
#define DDB2	2									
#define DDB3	3
#define DDB4	4
#define DDB5	5
#define DDB6	6
#define DDB7	7

#define PORTB 	*((volatile uint8_t*) 0x25) 	    //0x05			// Port Registers | Pull resistors 
#define PORTB0 	0
#define PORTB1 	1
#define PORTB2 	2
#define PORTB3 	3
#define PORTB4 	4
#define PORTB5 	5
#define PORTB6	6
#define PORTB7 	7

#define PINB 	*((uint8_t*) 0x23)		//0x03			//Pin registers For reading input
#define PINB0	0
#define PINB1	1
#define PINB2	2
#define PINB3	3
#define PINB4	4
#define PINB5	5
#define PINB6	6
#define PINB7	7

#define PIND 	*((volatile uint8_t*) 0x29)
#define PIND0 0
#define PIND1 1
#define PIND2 2
#define PIND3 3
#define PIND4 4
#define PIND5 5
#define PIND6 6
#define PIND7 7

#define DDRD 	*((volatile uint8_t*) 0x2A)
#define DDD0 0
#define DDD1 1
#define DDD2 2
#define DDD3 3
#define DDD4 4
#define DDD5 5
#define DDD6 6
#define DDD7 7

#define PORTD *((volatile uint8_t*) 0x2B)
#define PORTD0 0
#define PORTD1 1
#define PORTD2 2
#define PORTD3 3
#define PORTD4 4
#define PORTD5 5
#define PORTD6 6
#define PORTD7 7

//MCU Control Register

#define MCUCR *((volatile uint8_t*) 0x55)

#endif  
