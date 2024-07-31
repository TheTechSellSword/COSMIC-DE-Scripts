#!/bin/bash

# About: Testing COSMIC DE by building a systemd system extension (see man systemd-sysext)

# Clone Repository
git clone --recurse-submodules https://github.com/pop-os/cosmic-epoch
cd cosmic-epoch
just sysext

# Move system-extension (cosmic-sysext)
mv /var/lib/extensions

# Starting (systemd-sysext.service)
sudo systemctl enable --now systemd-sysext

read -p "Do you want to refesh or reboot: (ref/rb)" answer
if [ $answer == 'ref' ] ; then
	# Refresh
	sudo systemd-sysext refresh
else
	reboot
fi

