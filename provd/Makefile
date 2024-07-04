VM_NAME = provd-testing

.PHONY: install-local-tooling
install-local-tooling:
	@echo ":: Checking for lxd..."
	@if ! which lxd ; then \
		@echo ":: Installing lxd..." ; \
		snap install lxd ; \
		@echo ":: Adding user to the lxd group..." ; \
		getent group lxd | grep -qwF "$$USER" || usermod -aG lxd "$$USER" ; \
		@echo ":: Please log out and back in, or run 'newgrp lxd' for the change to take effect" ; \
	fi
	@echo ":: Checking for virt-viewer..."
	@if ! which virt-viewer ; then \
		@echo ":: Installing virt-viewer..." ; \
		apt install virt-viewer ; \
	fi

.PHONY: create-or-start-vm
create-or-start-vm:
	@if ! lxc info $(VM_NAME) 2>/dev/null ; then \
		echo ":: Creating VM ($(VM_NAME))..."; \
		lxc launch images:ubuntu/24.04/desktop $(VM_NAME) \
			--vm \
			-c limits.cpu=4 \
			-c limits.memory=4GiB; \
	elif ! lxc info $(VM_NAME) | grep "Status: RUNNING" ; then \
		echo ":: Starting VM ($(VM_NAME))..."; \
		lxc stop --force $(VM_NAME) 2>/dev/null; \
		lxc start $(VM_NAME); \
	fi
	@while ! lxc exec $(VM_NAME) echo 2>/dev/null; do \
		echo ":: Waiting for VM ($(VM_NAME)) to be ready..."; \
		sleep 1; \
	done
	@sleep 5
	@echo ":: VM ($(VM_NAME)) now ready"

.PHONY: ensure-init-installed
ensure-init-installed:
	@echo ":: Installing ubuntu-desktop-init on ($(VM_NAME))"
	@lxc exec $(VM_NAME) -- snap install ubuntu-desktop-init --candidate
	@lxc exec $(VM_NAME) -- snap set system homedirs=/run
	@lxc exec $(VM_NAME) -- snap connect ubuntu-desktop-init:network-manager

.PHONY: delete-ubuntu-user
delete-ubuntu-user:
	@echo ":: Checking if 'ubuntu' user exists on VM ($(VM_NAME))..."
	@if lxc exec $(VM_NAME) -- id ubuntu >/dev/null 2>&1; then \
		echo ":: Logging out and deleting 'ubuntu' user from VM ($(VM_NAME))..."; \
		lxc exec $(VM_NAME) -- pkill -KILL -u ubuntu || true; \
		sleep 2; \
		lxc exec $(VM_NAME) -- userdel -r ubuntu || true; \
		echo ":: 'ubuntu' user deleted from VM ($(VM_NAME))"; \
	else \
		echo ":: 'ubuntu' user does not exist on VM ($(VM_NAME))"; \
	fi

.PHONY: prepare-vm
prepare-vm: create-or-start-vm ensure-init-installed delete-ubuntu-user

.PHONY: attach-vm
attach-vm:
	@echo ":: Stopping VM ($(VM_NAME))..."
	lxc stop $(VM_NAME)
	@echo ":: Starting VM ($(VM_NAME))..."
	lxc start $(VM_NAME)
	@echo ":: Waiting for VM ($(VM_NAME)) to be ready..."
	@sleep 10  # Adjust sleep time as needed for the VM to fully start
	@echo ":: Attaching virt-viewer to VM ($(VM_NAME))..."
	lxc console --type=vga $(VM_NAME)

.PHONY: install-deb
install-deb:
	@echo ":: Identifying deb file from changelog..."
	@DEB_VERSION=$$(head -n 1 debian/changelog | awk -F'[()]' '{print $$2}'); \
	DEB_FILE="../provd_$${DEB_VERSION}_amd64.deb"; \
	if [ -f "$${DEB_FILE}" ]; then \
		echo ":: Copying deb file to VM ($(VM_NAME))..."; \
		lxc file push "$${DEB_FILE}" $(VM_NAME)/tmp/; \
		echo ":: Installing deb file on VM ($(VM_NAME))..."; \
		lxc exec $(VM_NAME) -- dpkg -i /tmp/provd_$${DEB_VERSION}_amd64.deb; \
		echo ":: Deb file installed."; \
	else \
		echo ":: Deb file not found: $${DEB_FILE}"; \
		exit 1; \
	fi
