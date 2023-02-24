#!/bin/bash

BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BROWNORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m'

CONF="/snap/arduino/70/hardware/tools/avr/etc/avrdude.conf"
MCU="ATMEGA328P"
PROGID="arduino"
BAUD="115200"

bin=$1
echo $bin
array=( $(ls /dev/ttyUSB* 2>/dev/null))

if [ -z "$1" ] ; then
	
	echo -e ${RED}"\n No Input Binary File."${NC}
	exit
fi

if [ -z "$array" ] ; then

	echo -e ${RED}"\nNo Device Attached."${NC}
	exit	


elif [ ${#array[@]} -gt 1 ] ; then

echo -e ${GREEN}"\nAvailable ports:"
echo
echo -e ${RED}${array[@]}
echo
echo -e ${GREEN}"Select port [0,1,2]" ${NC}
read opt


case $opt in 

0)


	dev=${array[0]}
	;;
1)


	dev=${array[1]}
	;;
2)

	dev=${array[2]}
	;;
q)	echo "quit"
	exit 1

esac


elif [ ${#array[@]} -eq 1 ] ; then

dev=/dev/ttyUSB0

fi

echo -e ${GREEN}"\nStart Flashing? y n ${RED}$dev\n"${NC}
read opt
case $opt in 

y)

	dev=${array[0]}
	;;
n)

	exit 1
	;;

q)	
	exit 1
	;;

esac

echo -e ${GREEN}"\nFlashing ${RED}$dev\n"${NC}

avrdude -F -V -C ${CONF} -c ${PORGID} -p ${MCU} -P $dev -b ${BAUD} -U flash:w:${bin}
