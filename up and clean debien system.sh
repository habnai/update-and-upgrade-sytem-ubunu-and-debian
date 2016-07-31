#!/bin/bash
#By Habnai
#Compatiblity : Debian 6 + | Ubuntu 12.x + | Debian based distro
#Use at your own risk !
# in root terminal : wget -O- https://raw.githubusercontent.com/stylersnico/debian-scripts/master/upgrade-and-clean-system.sh | sh
#Tested on Debian 7.5 AMD64

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
clear
sleep 2
echo  ":: Update the system"
sleep 2 ; apt-get update

sleep 4
clear
echo ":: Upgrade the system"
sleep 2 ; apt-get upgrade -y

sleep 4
clear
echo ":: Use autoremove"
sleep 2 ; apt-get autoremove -y

sleep 4
clear
echo ":: Clean the packages"
sleep 2 ; apt-get clean -y

sleep 4
clear
echo ":: Done!"
sleep 5
clear
