

all:	
	make -C boot/
	
clean:
	make clean -C boot/
qemu:

	qemu-system-avr -machine uno -bios ./boot/bin/boot.bin
