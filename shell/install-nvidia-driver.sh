#!/bin/sh

lspci | grep -i vga
#显示机器上的显卡信息

lspci -v -s 01:00.0
#查看显卡详细信息

yum update 

yum install kernel-devel kernel-headers gcc make

reboot

#Compare your running kernel with the installed source:
uname -r
rpm -q kernel-devel 

#If the two do not match, upgrade and reboot until they do: 
yum -y upgrade kernel kernel-devel

add  a line:
blacklist nouveau
to /etc/modprobe.d/blacklist.conf
or /usr/lib/modprobe.d/blacklist.conf in CentOS7

reboot

init 3

chmod +x <Nvidia file>.run
./<Nvidia file>.run 

init 5 
