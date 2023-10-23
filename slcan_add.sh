#!/bin/sh

/usr/bin/slcand -o -c -f -s5 -S 115200 /dev/ttyCAN$1 can$1

sleep 1

/sbin/ifconfig can$1 up
/sbin/ip link set can$1 txqueuelen 1000
