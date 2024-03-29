baremetal-avr
======
Highly documented and colorized baremetal examples for atmega328p. This project has no intentions of reinventing the wheel but will try to go low _level as possible. Boot example demonstrates compiling Assembly and C files and linking them using custom linker scripts. You can also use qemu or avr-flash script to emulate and flash your code.



## Requirements

GNU Make

`
apt-get install make
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
### Clone this repo

```shell
git clone https://github.com/mguclu/baremetal-avr.git && cd baremetal-avr/
```
### Build all examples

```shell
make all
```
### Using flash script
You can customize and use this script for flashing various binary files to various Atmel MCU's.
```shell
chmod +x avr-flash.sh
```

```shell
./avr-flash.sh blink/bin/boot.bin
```

# Building blink example
Following instructions demonstrates compiling and flashing a basic blink example. 

#### Build binary files

```shell
make bin_blink
```

#### Flash to microcontroller

```shell
make flash_blink
```

#### Emulate using QEMU
If you want to emulate atmega328p with very limited support use following commands:

```shell
qemu-system-avr -machine uno -bios ./blink/bin/boot.bin
```
or simply use `make qemu_blink`

Some useful commands:
* `info registers` Show current status of registers
* `xp /10w 0x0` Show 10 Words from starting address (0x0)


