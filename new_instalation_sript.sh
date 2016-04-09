#!/bin/bash
read drivelocation 

echo drivelocation

echo "Downloding linuxmint 17.3 from: http://gensho.acc.umu.se"
wget http://gensho.acc.umu.se/mirror/linuxmint.com/iso/stable/17.3/linuxmint-17.3-xfce-64bit.iso

echo "Unmounting:"
echo drivelocation
umount /dev/sdc

echo "Writhing the iso to /dev/sdc"
dd if=/home/jonatan/Documents/linuxmint-17.3-3-xfce-64bit.iso of=/dev/sdc

echo "Done"
