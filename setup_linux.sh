# Update and Upgrade
sudo apt-get update
sudo apt-get upgrade -y

# Install micro text editor
curl https://getmic.ro | bash
sudo apt-get install -y xclip

# Steam devices
wget -c https://raw.githubusercontent.com/ValveSoftware/steam-devices/master/60-steam-input.rules -O /lib/udev/rules.d/60-steam-input.rules

# Bluetooth Drivers
wget -c https://mpow.s3-us-west-1.amazonaws.com/mpow_MPBH456AB_driver+for+Linux.tgz
tar zxvf mpow_MPBH456AB_driver+for+Linux.tgz
