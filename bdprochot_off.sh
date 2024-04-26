#!/bin/bash
# 4005d --> 4005e

sudo modprobe msr
# sudo touch temp
r=`sudo rdmsr 0x1FC`
#echo $r > temp
s='0x'$r'' 
f=$(($s&0xFFFFFE))
sudo wrmsr 0x1FC $f
echo "$f"" write to ""reg 0x1FC" 
echo "BD PROCHOT off."
