#!/bin/bash

# # # Install COMIC DE

# Required Dependencies
sudo apt install just rustc libglvnd-dev libwayland-dev libseat-dev libxkbcommon-dev libinput-dev udev dbus libdbus-1-dev libpam0g-dev libpixman-1-dev libssl-dev libflatpak-dev -y

read -p "Do you want to install the 'Optional Dependencies' as well? (Y/n)" answer

if [ $answer == 'Y' ] || [ $answer == 'y' ] || [ $answer == "" ] ; then
	# Optional Dependencies
	sudo apt install libsystemd-dev libpulse-dev pop-launcher libexpat1-dev libfontconfig-dev libfreetype-dev mold cargo libgbm-dev libclang-dev libpipewire-0.3-dev -y
else
	echo "All dependencies are installed."
fi
