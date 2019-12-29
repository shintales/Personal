curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
sudo cp nvim.appimage /usr/bin/nvim
chmod u+x /usr/bin/nvim
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
