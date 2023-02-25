
NAME		=boot
CPU_FREQ	=16000000UL
MCU			=atmega328p
BOOT		=./bin/boot.bin

all:
	avr-gcc -Os -DF_CPU=$(CPU_FREQ) -mmcu=$(MCU) -c $(NAME).S main.c
	avr-ld -T boot.ld *.o -o $(NAME).elf
	avr-objcopy -O binary $(NAME).elf $(NAME).bin
	avr-objcopy -O ihex -R .eeprom $(NAME).o $(NAME).hex
	[ -d bin ] || mkdir ./bin
	mv -f *o *.bin *.elf *.hex ./bin 
	
clean:
	rm -rf ./bin
qemu:
	qemu-system-avr -machine uno -bios ./bin/$(NAME).bin
flash:
	../avr-flash.sh $(BOOT)				#for some reason .hex files won't work
	
#> /dev/null 2>&1
