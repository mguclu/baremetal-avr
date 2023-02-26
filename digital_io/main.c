#include "../include/defs_c.h"
#include <stdint.h>

// #define _BV(x)   (1 << x)

#define LED_ONBOARD 5               // UNO onboard led
#define READ_PIN 4             

// PORTB ^= (1 << PB3);             // toggles the state of the bit

void c_entry(void)
{

   DDRB |= (1 << LED_ONBOARD);      // Set LED_ONBOARD as output
   DDRB &= ~(1 << READ_PIN);        // Set READ_PIN as input
   
   
    if ( (PINB & (1 << PINB4)) == (1 << PINB4) ) {
                
        PORTB |= (1 << LED_ONBOARD);
        // if PINB4 is high, turn the led on
        } 
        else {
        PORTB &= ~(1 << LED_ONBOARD);
        // if PINB4 is high, turn the led off
        }
}
