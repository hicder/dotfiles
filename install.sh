current_path=$(pwd)
echo $current_path

echo "Install Vundle..."
mkdir -p vim/bundle
rm -rf vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git vim/bundle/Vundle.vim

echo "Install vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo "Delete existing dotfiles..."
rm ~/.vimrc
rm ~/.vimrc.local
rm ~/.vimrc.bundles
rm ~/.tmux.conf
rm -rf ~/.vim

echo "Installing new dotfiles..."
ln -s $current_path/vimrc ~/.vimrc
ln -s $current_path/vimrc.local ~/.vimrc.local
ln -s $current_path/vimrc.bundles ~/.vimrc.bundles
ln -s $current_path/vim ~/.vim
ln -s $current_path/tmux.conf ~/.tmux.conf
ln -s $current_path/zshrc ~/.zshrc
touch ~/.vimrc.bundles.local

nvim +PluginInstall +qall
nvim +PlugInstall +qall

echo "Making neovim read vim config..."
mkdir -p ~/.config/nvim
cp $current_path/neovim_config ~/.config/nvim/init.vim
