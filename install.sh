current_path=$(pwd)
echo $current_path

mkdir -p vim/bundle
rm -rf vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git vim/bundle/Vundle.vim

echo "Delete existing dotfiles..."
rm ~/.vimrc
rm ~/.vimrc.local
rm ~/.vimrc.bundles
rm ~/.tmux.conf

echo "Installing new dotfiles..."
ln -s $current_path/vimrc ~/.vimrc
ln -s $current_path/vimrc.local ~/.vimrc.local
ln -s $current_path/vimrc.bundles ~/.vimrc.bundles
ln -s $current_path/vim ~/.vim
ln -s $current_path/tmux.conf ~/.tmux.conf
touch ~/.vimrc.bundles.local

vim +PluginInstall +qall
cp extra/cargo.vim vim/bundle/rust.vim/syntax_checkers/rust
