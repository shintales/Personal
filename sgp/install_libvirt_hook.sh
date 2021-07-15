GUEST_NAME=win10

# Install Libvirt Hook
mkdir /etc/libvirt/hooks
cp libvirt_hook/qemu /etc/libvirt/hooks/qemu
chmod +x /etc/libvirt/hooks/qemu

# Install Start Script
mkdir -p /etc/libvirt/hooks/qemu.d/$GUEST_NAME/prepare/begin
cp libvirt_hook/start.sh /etc/libvirt/hooks/qemu.d/$GUEST_NAME/prepare/begin/start.sh
chmod +x /etc/libvirt/hooks/qemu.d/$GUEST_NAME/prepare/begin/start.sh

# Install Stop Script
mkdir -p /etc/libvirt/hooks/qemu.d/$GUEST_NAME/release/end
cp libvirt_hook/stop.sh /etc/libvirt/hooks/qemu.d/$GUEST_NAME/release/end/stop.sh
chmod +x /etc/libvirt/hooks/qemu.d/$GUEST_NAME/release/end/stop.sh
