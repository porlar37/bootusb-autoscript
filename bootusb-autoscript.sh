#!/bin/bash

cd /home/$USER/Documents
user=$USER
read drive
echo "Downloding linuxmint 17.3 from: http://gensho.acc.umu.se"
wget http://gensho.acc.umu.se/mirror/linuxmint.com/iso/stable/17.3/linuxmint-17.3-xfce-64bit.iso

echo "Unmounting:"
sudo umount $drive

echo "Writhing the iso"
sudo dd if=/home/$user/Documents/linuxmint-17.3-3-xfce-64bit.iso of=$drive

echo "Done"

#/* This program is free software. It comes without any warranty, to
#     * the extent permitted by applicable law. You can redistribute it
#     * and/or modify it under the terms of the Do What The Fuck You Want
#     * To Public License, Version 2, as published by Sam Hocevar. See
#     * http://www.wtfpl.net/ for more details. */
