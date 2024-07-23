# 24.04.1 OEM provisioning flow

There are use-cases where it does not make sense for system installation and user creation to happen at the same time.
These require a workflow that skips the user creation step during installation so that it can be handled later, perhaps by a different user.

Ubuntu accommodates this workflow by shipping with Gnome Initial Setup, a program that can safely handle user account 
creation and configuration. Gnome Initial Setup is started by default when a system is booted and GNOME Display Manager (GDM) is unable to
detect any user accounts. Instead of taking you to the login screen, a special Gnome Initial Setup user session is started.

> **NOTE:**
> This is a special integration built into GDM. If you are using a different
> display manager, you may need to integrate the [Gnome Initial Setup
> session](https://salsa.debian.org/gnome-team/gnome-initial-setup/-/blob/ubuntu/latest/data/gnome-initial-setup.session.in?ref_type=heads)
> being invoked by the display manager yourself.

The version of Gnome Initial Setup in Ubuntu 24.04.1 LTS has been patched to allow for hostnames to be set during
account creation and EULA pages to render if present on the system. This is in addition to its existing feature set
that enables user account creation and setup on provisioned systems.

## Table of contents
- [How to provision Ubuntu with Gnome Initial Setup](#how-to-provision-ubuntu-with-gnome-initial-setup)
  - [Method 1: Triggering Gnome Initial Setup via the new Flutter installer and a whitelabel.yaml](#method-1-triggering-gnome-initial-setup-via-the-new-flutter-installer-and-a-whitelabelyaml)
  - [Method 2: Triggering Gnome Initial Setup via an autoinstall.yaml](#method-2-triggering-gnome-initial-setup-via-an-autoinstallyaml)
  - [EULA Page configuration](#eula-page-configuration)
  - [EULA Language code format](#eula-language-code-format)

# How-to provision Ubuntu with Gnome Initial Setup

This guide highlights different methods for provisioning a system so that Ubuntu is installed while no user 
account is created, thereby allowing user account creation to be passed off to Gnome-Initial-Setup.

## Method 1: Triggering Gnome Initial Setup via the new Flutter installer and a whitelabel.yaml

The new [Ubuntu Desktop Bootstrap](https://github.com/canonical/ubuntu-desktop-provision) Flutter installer can be 
given a `whitelabel.yaml` file to customize its appearance and behaviour. For example, the installer can be configured
to run in a specific `mode`.

When `oem` mode is active, user creation and time zone setup are skipped during installation, leaving them to be handled by Gnome Initial 
Setup post-installation.

Enabling `oem` mode only requires the following line to be added to the `whitelabel.yaml`:

```
mode: oem
```

Placing this `whitelabel.yaml` at `/usr/share/desktop-provision/whitelabel.yaml` on your LiveCD is sufficient 
to skip user creation during installation, provided that you are using the new Ubuntu Desktop Bootstrap installer.

A comprehensive guide to customizing a LiveCD can be found [here](https://help.ubuntu.com/community/LiveCDCustomization).

### Using the Flutter installer without modifying the LiveCD

It's possible to test the Gnome Initial Setup user creation flow via the Ubuntu Desktop Bootstrap installer without first 
editing your LiveCD, as long as Gnome Initial Setup is already present on your ISO.

#### Install ubuntu-desktop-bootstrap

The Ubuntu Desktop Bootstrap Flutter installer first needs to be installed:

```
sudo snap install ubuntu-desktop-bootstrap --classic
```

#### Write a whitelabel.yaml to set OEM mode

A `whitelabel.yaml` with `oem` mode enabled must then be created in a location Ubuntu Desktop Bootstrap will find it:

```
sudo mkdir -p /usr/share/desktop-provision

sudo bash -c 'echo "mode: oem" > /usr/share/desktop-provision/whitelabel.yaml'
```

#### Launch ubuntu-desktop-bootstrap

Finally, the installer can be launched. You should not be prompted for user account creation, as this will be handled after the installer finishes.

```
/snap/bin/ubuntu-desktop-bootstrap --try-or-install
```

## Method 2: Triggering Gnome Initial Setup via an autoinstall.yaml

These sections are adapted from the Subiquity [documentation](https://canonical-subiquity.readthedocs-hosted.com/en/latest/howto/autoinstall-quickstart.html),
updated for triggering Gnome Initial Setup with the Ubuntu Desktop ISO.

### Using an autoinstall provided over the network

#### Get an ISO

You can find a desktop ISO to download on the [official Ubuntu website](https://ubuntu.com/download/desktop).

#### Mount the ISO

Once downloaded, you can mount the ISO to make it accessible via a local directory. Change `<version-number>` in 
the following command to match the release ISO that you downloaded:

```
sudo mount -r ~/Downloads/ubuntu-<version-number>-amd64.iso /mnt
```

#### Write an autoinstall configuration

Create your cloud-init configuration, making sure to omit the identity section so that no user is created during 
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

#### Serve the cloud-init configuration over HTTP

Change into the directory where the cloud-init configuration was created and start a server:

```
cd ~/www
python3 -m http.server 3003
```

#### Create a target disk

Create the target VM disk for the installation. 25GB is the minimum recommended storage allocation for Ubuntu Desktop:

```
truncate -s 25G image.img
```

#### Run the installation

Change `<version-number>` to match the release ISO that you downloaded before running the following command:

```
kvm -no-reboot -m 4096 \
    -drive file=image.img,format=raw,cache=none,if=virtio \
    -cdrom ~/Downloads/ubuntu-<version-number>-amd64.iso \
    -kernel /mnt/casper/vmlinuz \
    -initrd /mnt/casper/initrd \
    -append 'autoinstall ds=nocloud-net;s=http://_gateway:3003/'
```

This command boots the VM, downloads the configuration from the server (prepared in the previous step) and runs the 
installation. The installer reboots at the end. The `-no-reboot` flag instructs `kvm` to exit on reboot.

#### Boot the installed system

Run the following command to boot the system in the VM:

```
kvm -no-reboot -m 4096 \
    -drive file=image.img,format=raw,cache=none,if=virtio
```

You will then be loaded into the Gnome-Initial-Setup session for first time 
user creation.

### Using another volume to provide the autoinstall configuration

Use this method to create an installation medium that can be plugged into a computer to trigger installation.

#### Getting an ISO

You can find a desktop ISO to download on the [official Ubuntu website](https://ubuntu.com/download/desktop).

#### Write an autoinstall configuration

Create your cloud-init configuration, making sure to omit the identity section so that no user is created during 
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

#### Create an ISO to use as a cloud-init data source

Install utilities for working with cloud images:

```
sudo apt install cloud-image-utils
```

Create the ISO image for cloud-init:

```
cloud-localds ~/seed.iso user-data meta-data
```

#### Create a target disk

Create the target VM disk for the installation:

```
truncate -s 25G image.img
```

#### Run the installation

Run the following command to boot the system and run the installation, making sure to 
change `<version-number>` to match the release ISO that you downloaded:

```
kvm -no-reboot -m 4096 \
    -drive file=image.img,format=raw,cache=none,if=virtio \
    -drive file=~/seed.iso,format=raw,cache=none,if=virtio \
    -cdrom ~/Downloads/ubuntu-<version-number>-amd64.iso
```

The installer prompts for a confirmation before modifying the disk based on the provided `autoinstall`.
To skip the need for a confirmation you can interrupt the booting process then add the `autoinstall` 
parameter to the kernel command line.

The installer reboots at the end. The `-no-reboot` flag instructs `kvm` to exit on reboot.

#### Boot the installed system

This command will boot the system in the VM:

```
kvm -no-reboot -m 4096 \
    -drive file=image.img,format=raw,cache=none,if=virtio
```
You will then be loaded into the Gnome-Initial-Setup session for first time user creation.

## EULA Page configuration

EULA assets are expected to reside in `/usr/share/desktop-provision/eula/`, with the file name including the language
code: `EULA_<langcode>.pdf`. If the `<langcode>` is not available, the default file `EULA.pdf` will be used.
The language code format is the same as that used for slides, for example: `EULA_en_US.pdf`. See the [EULA Language code format
section](#eula-language-code-format) for further details. If no EULA file is present, the page will be conditionally skipped.

## EULA Language code format

The language code format that is used is the two-letter language code followed by a two-letter country code (see the ISO 639-1 
and ISO 3166-1 standards). The language code represents the primary language, while the country code specifies the regional 
or national variant of that language. For example en_US represents American English and pt_BR represents Brazilian Portuguese.
