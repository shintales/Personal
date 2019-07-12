#x-display
pacman -S xorg-server
#login interface
pacman -S lightdm lightdm-gtk-greeter
#openbox
pacman -S openbox obconf
#File manager
pacman -S pcmanfm
#Panel
pacman -S tint2
#Terminal
pacman -S xterm
#Wallpaper setup
pacman -S nitrogen gnome-backgrounds
#Text editors
pacman -S vim
#Web browser
pacman -S firefox
#Menumaker
pacman -S menumaker
#mmaker openbox -f -t xterm
#right click and reconfigure openbox

#enable greeter
systemctl enable lightdm.service

#reboot system
reboot
