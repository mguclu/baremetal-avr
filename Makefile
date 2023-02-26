
## Compile and assemble
all:	
	make -C boot/
	make -C io/
	make -C io_c/

bin_boot:
	make -C boot/

bin_io:
	make -C io/

bin_io_c:
	make -C io_c/
	
## Flash to atmega328p
		


flash_boot:
	make flash -C boot/
flash_io:
	make flash -C io/
flash_io_c:
	make flash -C io_c/


clean:
	make clean -C boot/
	make clean -C io/
	make clean -C io_c/
## Limited support for AVR mcu's 

qemu_io:
	make qemu -C io/

qemu_boot:
	make qemu -C boot/
qemu_io_c:
	make qemu -C io_c/
