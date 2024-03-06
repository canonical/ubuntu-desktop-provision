#!/bin/sh

# Create the /run/desktop-provision directory and set it up for the gnome-initial-setup user
mkdir -p /run/desktop-provision
chown -R gnome-initial-setup:gnome-initial-setup /run/desktop-provision
chmod -R 0755 /run/desktop-provision
        
# Create the /run/gnome-initial-setup directory and set it up for the gnome-initial-setup user
mkdir -p /run/gnome-initial-setup/.cache
chown -R gnome-initial-setup:gnome-initial-setup /run/gnome-initial-setup
chmod -R 0755 /run/gnome-initial-setup

/usr/bin/provd &
until [ -S /run/desktop-provision/init.socket ]; do
	sleep 1
done
env DBUS_SESSION_BUS_ADDRESS="unix:path=$XDG_RUNTIME_DIR/bus" /snap/bin/ubuntu-desktop-init 
