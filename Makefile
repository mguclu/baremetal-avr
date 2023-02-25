
## Compile and assemble
all:	
	make -C boot/
	make -C io/

bin_boot:
	make -C boot/

bin_io:
	make -C io/

## Flash to atmega328p
		
flash_io:
	make flash -C io/

flash_boot:
	make flash -C boot/



clean:
	make clean -C boot/
	make clean -C io/

## Limited support for AVR mcu's 
qemu:
	qemu-system-avr -machine uno -bios ./boot/bin/boot.bin
	qemu-system-avr -machine uno -bios ./io/bin/boot.bin
