curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
vim=/usr/bin/vim
sudo cp nvim.appimage $vim
sudo chmod a+rx $vim
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
rm nvim.appimage
