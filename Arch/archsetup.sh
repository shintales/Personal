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
pacmam -S firefox

#enable greeter
systemctl enable lightdm.service

#reboot system
reboot