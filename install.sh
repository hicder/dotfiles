mkdir -p vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git vim/bundle/Vundle.vim

ln -s vimrc ~/.vimrc
ln -s vimrc.local ~/.vimrc.local
ln -s vimrc.bundles ~/.vimrc.bundles
ln -s vim ~/.vim

vim +PluginInstall +qall
