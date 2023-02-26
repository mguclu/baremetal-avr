
## Compile and assemble
all:	
	make -C blink/

bin_blink:
	make -C blink/
	
## Flash to atmega328p	
flash_blink:
	make flash -C blink/

clean:
	make clean -C boot/
	make clean -C blink/
	make clean -C blink2/
	make clean -C digital_io/
	
## Limited support for AVR mcu's 
qemu_blink:
	make qemu -C blink/
