baremetal-avr
======
Highly documented and colorized baremetal examples for atmega328p. This project has no intentions of reinventing the wheel but will try to go low _level as possible. Boot example demonstrates compiling Assembly and C files and linking them using custom linker scripts. You can also use qemu or avr-flash script to emulate and flash your code.



## Requirements

GNU Make

`
apt-get install install make
`

GNU Cross Compiler for AVR **gcc-avr, binutils, avr-libc**.

`
apt-get install gcc-avr binutils-avr avr-libc
`

Downloader/Uploader for AVR microcontrollers **avrdude**.

`
apt-get install avrdude
`

Qemu AVR Emulator **qemu-system-avr**.

`
apt-get install qemu-system-avr
`
## Clone this repo
```shell
git clone https://github.com/mguclu/baremetal-avr.git && cd baremetal-avr/
```

## Building blink example
Following instructions demonstrates compiling and flashing a basic blink example. 
```shell
make bin_io
```

## Using flash script
You can customize and use this script for flashing various binary files to various Atmel MCU's.
```shell
chmod +x avr-flash.sh
```
```shell
make flash_io
```
or

```shell
./avr-flash.sh io/bin/boot.bin
```

## Emulate using QEMU
If you want to emulate atmega328p with very limited support use following commands:

```shell
qemu-system-avr -machine uno -bios ./io/bin/boot.bin
```
or simply use `make qemu_io`

Some useful commands:
* `info registers` Show current status of registers
* `xp /10w 0x0` Show 10 Words from starting address (0x0)


