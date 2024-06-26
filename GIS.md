# Why Gnome-Initial-Setup
There are several use cases where it makes sense for system installation and user creation to not happen at the same 
time. In these instances, it is useful to have a way to skip the user creation step during installation and for it to 
be handled later, perhaps even by a different user.

To accommodate this workflow Ubuntu ships with Gnome Initial Setup, a program that can safely handle user account 
creation and configuration. Gnome Initial Setup is started by default when a system is booted and GDM is unable to
detect any user accounts. Instead of taking you to the login screen, a special Gnome Initial Setup user session is started.

This guide aims to highlight some of the ways a system can be provisioned such that Ubuntu is installed, but no user 
account is created, allowing user account creation to be passed off to Gnome-Initial-Setup.

# Triggering Gnome-Initial-Setup via the new Flutter installer and a whitelabel.yaml

The new [Ubuntu Desktop Bootstrap](https://github.com/canonical/ubuntu-desktop-provision) Flutter installer can be 
given a `whitelabel.yaml` file to customize its appearance and behavior. One thing you can configure is the `mode` you 
would like to run the installer in. 

The `oem` mode skips user creation and time zone setup during installation, leaving them to be handled by Gnome Initial 
Setup post installation.

The following `whitelabel.yaml` placed in `/usr/share/desktop-provision/whitelabel.yaml` on your LiveCD is sufficient 
to skip user creation during installation, provided you are using the new Ubuntu Desktop Bootstrap installer:

```
mode: oem
```

A comprehensive guide to customizing a LiveCD can be found [here](https://help.ubuntu.com/community/LiveCDCustomization).

## Triggering Gnome-Initial-Setup without modifying the LiveCD

It's possible to test the Gnome Initial Setup user creation flow via the Ubuntu Desktop Bootstrap installer without first 
editing your LiveCD, provided Gnome Initial Setup is already present on your ISO.

### Install ubuntu-desktop-bootstrap

The following command installs the Ubuntu Desktop Bootstrap Flutter installer
```
sudo snap install ubuntu-desktop-bootstrap --classic
```

### Write a whitelabel.yaml to set OEM mode

These commands create a `whitelabel.yaml` in the location Ubuntu Desktop Bootstrap will look for them.
```
sudo mkdir -p /usr/share/desktop-provision

sudo bash -c 'echo "mode: oem" > /usr/share/desktop-provision/whitelabel.yaml'
```

### Launch ubuntu-desktop-bootstrap

Finally, launch the installer. You should be no be prompted for user account creation, which will be handled after the 
installer finishes
```
/snap/bin/ubuntu-desktop-bootstrap --try-or-install
```

# Triggering Gnome-Initial-Setup via an autoinstall.yaml

These sections are adapted from the subiquity [documentation](https://canonical-subiquity.readthedocs-hosted.com/en/latest/howto/autoinstall-quickstart.html), updated for triggering Gnome Initial Setup with the Ubuntu Desktop ISO

## Using an autoinstall provided over the network

### Getting an ISO
You can find a desktop ISO to download on the [official Ubuntu website](https://ubuntu.com/download/desktop). (Currently the latest is Ubuntu 24.04 LTS)

### Mount the ISO
Once downloaded, you can mount the ISO to make it accessible via from a local directory. Change `<version-number>` in 
the following command to match the release ISO you downloaded :

```
sudo mount -r ~/Downloads/ubuntu-<version-number>-amd64.iso /mnt
```

### Write your autoinstall configuration
Create your cloud-init configuration, making sure to leave the identity section out so that no user is created during 
installation:

```
mkdir -p ~/www
cd ~/www
cat > user-data << 'EOF'
#cloud-config
autoinstall:
  version: 1
EOF
touch meta-data
```

### Serve the cloud-init configuration over HTTP

```
cd ~/www
python3 -m http.server 3003
```

### Create a target disk

Create the target VM disk for the installation. 25GB is the minimum recommended storage allocation for Ubuntu Desktop:
```
truncate -s 25G image.img
```

### Run the installation

Change `<version-number>` in the following command to match the release ISO you downloaded.

```
kvm -no-reboot -m 4096 \
    -drive file=image.img,format=raw,cache=none,if=virtio \
    -cdrom ~/Downloads/ubuntu-<version-number>-amd64.iso \
    -kernel /mnt/casper/vmlinuz \
    -initrd /mnt/casper/initrd \
    -append 'autoinstall ds=nocloud-net;s=http://_gateway:3003/'
```
This command boots the VM, downloads the configuration from the server (prepared in the previous step) and runs the 
installation. The installer reboots at the end. The `-no-reboot` option to the `kvm` command instructs `kvm` to exit on reboot.

### Boot the installed system

```
kvm -no-reboot -m 4096 \
    -drive file=image.img,format=raw,cache=none,if=virtio
```
This command boots the system in the VM. You will then be loaded into the Gnome-Initial-Setup session for first time 
user creation.

## Using another volume to provide the autoinstall configuration

Use this method to create an installation medium to plug into a computer to have it be installed.

### Getting an ISO
You can find a desktop ISO to download on the [official Ubuntu website](https://ubuntu.com/download/desktop). (Currently the latest is Ubuntu 24.04 LTS)

### Write your autoinstall configuration
Create your clout-init configuration, making sure to leave the identity section out so that no user is created during 
installation:

```
mkdir -p ~/www
cd ~/www
cat > user-data << 'EOF'
#cloud-config
autoinstall:
  version: 1
EOF
touch meta-data
```

### Create an ISO to use as a cloud-init data source

Install utilities for working with cloud images:
```
sudo apt install cloud-image-utils
```

Create the ISO image for cloud-init:
```
cloud-localds ~/seed.iso user-data meta-data
```

### Create a target disk

Create the target VM disk for the installation:
```
truncate -s 25G image.img
```

### Run the installation

Change `<version-number>` in the following command to match the release ISO you downloaded.

```
kvm -no-reboot -m 4096 \
    -drive file=image.img,format=raw,cache=none,if=virtio \
    -drive file=~/seed.iso,format=raw,cache=none,if=virtio \
    -cdrom ~/Downloads/ubuntu-<version-number>-amd64.iso
```

This command boots the system and runs the installation. The installer prompts for a confirmation before modifying the
disk. To skip the need for a confirmation, interrupt the booting process, and add the `autoinstall` parameter to the 
kernel command line.

The installer reboots at the end. The `-no-reboot` option to the `kvm` command instructs `kvm` to exit on reboot.

### Boot the installed system

```
kvm -no-reboot -m 4096 \
    -drive file=image.img,format=raw,cache=none,if=virtio
```

This command boots the system in the VM. You will then be loaded into the Gnome-Initial-Setup session for first time 
user creation.


