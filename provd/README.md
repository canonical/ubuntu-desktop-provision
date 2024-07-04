# Provisioning daemon local testing

Replicating the initial setup session for testing changes made to `provd` can be tricky and tedious. The `Makefile` 
included here attempts to make testing and feature iteration easier. 

Provided `lxd` is installed, you should be able to quickly spin up a vm with the environment setup configured for 
walking through and testing changes to provd.

### Build itteration

This setup is designed such that you can easily itterate over new provd builds. This aims to enable the workflow of:
- Setup the vm with `make prepare-vm`
- Make changes to provd
- Build provd 
- Install provd on the vm via `make install-deb`
- Boot into the vm to test via `make attach-vm`

This will be expanded apon below:

## Environment setup

### Installing required tools
You can install `lxd` and `virt-viewer` by running:
```
sudo make install-local-tooling
```

### Setting up the vm
You can get the vm prepared by running:
```
make prepare-vm
```

This will bootstrap the vm with the required components, install the ubuntu-desktop-init frontend from the candidate 
branch and remove the default `ubuntu` user (a prerequisite for the Gnome Initial Setup to trigger).

### Installing provd
Assuming you have a local `.deb` build and packaged for testing, you can run:
```
make install-deb
```

This will check the `debian/changelog` file for the latest version of the deb, search for it in the parent directory. 
If found, it will be copied over to the vm and installed.

### Starting the GIS session
lastly, you can run 
```
make attach-vm
```

This will restart the vm and open a `virt-viewer` window. GDM should detect no user is present and boot into the GIS 
session and allow you to set up a first user using the ubuntu-desktop-init + provd workflow.
