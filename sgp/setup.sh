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
install_required_services() {
	sudo systemctl enable --now libvirtd
}

# Setup Guest OS
setup_guest_os_privileges() {
	sudo usermod -aG kvm,input,libvirt $USER
}
