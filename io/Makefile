
NAME		=boot
CPU_FREQ	=16000000UL
MCU			=atmega328p

all: 
	avr-gcc -Os -DF_CPU=$(CPU_FREQ) -mmcu=$(MCU) -c *.S
	avr-ld -T $(NAME).ld *.o -o $(NAME).elf
	avr-objcopy -O binary $(NAME).elf $(NAME).bin
	avr-objcopy -O ihex -R .eeprom $(NAME).o $(NAME).hex
	[ -d bin ] || mkdir ./bin
	mv -f *o *.bin *.elf *.hex ./bin 
	

compile:
	avr-gcc -Os -DF_CPU=$(CPU_FREQ) -mmcu=$(MCU) -c $(NAME).S main.c
	avr-ld -T $(NAME).ld *.o -o $(NAME).elf
	avr-objcopy -O binary $(NAME).elf $(NAME).bin
	avr-objcopy -O ihex -R .eeprom $(NAME).o $(NAME).hex
clean:
	rm -rf ./bin
qemu:
	qemu-system-avr -machine uno -bios ./bin/$(NAME).bin
	
#> /dev/null 2>&1
