#!/bin/bash
echo WARNING! You have to all disk mounted like this:
echo Root: /dev/sdX1 -> /mnt
echo Swap (optional): /dev/sdX2
echo If you dont do this, it may break things!!!
echo So, Are You Sure(Y/n)?
read REPLY
case $REPLY in
[Yy]) sure()
[Nn]) break ;; # exit case statement gracefully
function Sure() {
pacstrap /mnt base linux linux-firmware sudo nano NetworkManager linux-headers
echo Arch Has Been Installed, Go Configuring it now!
arch-chroot /mnt

}