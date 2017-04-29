current_path=$(pwd)
echo $current_path

mkdir -p vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git vim/bundle/Vundle.vim
ln -s $current_path/vimrc ~/.vimrc
ln -s $current_path/vimrc.local ~/.vimrc.local
ln -s $current_path/vimrc.bundles ~/.vimrc.bundles
ln -s $current_path/vim ~/.vim

vim +PluginInstall +qall
