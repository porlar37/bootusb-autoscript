#!/bin/bash

cd /home/$USER/Documents
user=$USER
drive=read
echo $user
echo "Downloding linuxmint 17.3 from: http://gensho.acc.umu.se"
wget http://gensho.acc.umu.se/mirror/linuxmint.com/iso/stable/17.3/linuxmint-17.3-xfce-64bit.iso

echo "Unmounting:"
sudo umount /dev/sdc

echo "Writhing the iso"
sudo dd if=/home/$user/Documents/linuxmint-17.3-3-xfce-64bit.iso of=/dev/sdc

echo "Done"
