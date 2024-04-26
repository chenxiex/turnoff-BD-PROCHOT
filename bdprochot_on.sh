#!/bin/bash
#  

sudo modprobe msr 
r=`sudo rdmsr 0x1FC`
s='0x'$r'' 
f=$(($s|0x1))

sudo wrmsr 0x1FC $f

echo "BD PROCHOT on."
