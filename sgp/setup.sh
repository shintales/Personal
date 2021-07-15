#!/bin/bash

# Install Required Tools for Ubuntu
install_ubuntu_tools() {
	sudo apt-get update
	sudo apt-get install -y qemu-kvm qemu-utils \
		libvirt-daemon-system libvirt-clients \
		bridge-utils virt-manager ovmf
}

install_arch_tools() {
	sudo pacman -Syu
	sudo pacman -S qemu libvirt edk2-ovmf \
		virt-manager dnsmasq ebtables
}

# Enable required services
enable_required_services() {
	sudo systemctl enable --now libvirtd
	# OpenRC
	# virsh net-start default
	# virsh net-autostart default
}

# Setup Guest OS
setup_guest_os_privileges() {
	sudo usermod -aG kvm,input,libvirt $USER
}

# Create VM
new_vm() {
	virt-install --name=linuxconfig-vm \
		--vcpus=1 \
		--memory=1024 \
		--cdrom=/tmp/debian-9.0.0-amd64-netinst.iso \
		--disk size=5 \
		--os-variant=debian8 \
		--machine=q35 \ # set firmware to uefi
		--cpu host-passthrough \
                --disk device=disk,dev=vda,bus=virtio \ # This may be wrong?
		--network model=virtio \
		--disk path=/path/to/virtio-win.iso,device=cdrom,dev=sdb

}

attach_pci_devices() {

}

libvirt_hooks() {
	source install_libvirt_hook.sh GUEST_NAME=win10
}

keyboard_mouse_passthrough() {

}

audio_passthrough() {

}

video_card_driver_virtualisation_detection() {

}

vbios_patching() {

}

$@
