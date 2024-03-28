#!/bin/sh

# Create the /run/gnome-initial-setup/desktop-provision directory
mkdir -p /run/gnome-initial-setup/desktop-provision
        
# Create the /run/gnome-initial-setup/.cache directory
mkdir -p /run/gnome-initial-setup/.cache

/usr/bin/provd &
until [ -S /run/gnome-initial-setup/desktop-provision/init.socket ]; do
	sleep 1
done
env DBUS_SESSION_BUS_ADDRESS="unix:path=$XDG_RUNTIME_DIR/bus" /snap/bin/ubuntu-desktop-init 
