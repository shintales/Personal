curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
sudo cp nvim.appimage /usr/bin/nvim
chmod u+x /usr/bin/nvim
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
