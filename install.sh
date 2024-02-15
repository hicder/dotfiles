current_path=$(pwd)
echo $current_path

echo "Delete existing dotfiles..."
rm ~/.vimrc
rm ~/.vimrc.local
rm ~/.vimrc.bundles
rm ~/.tmux.conf
rm ~/.zshrc
rm -rf ~/.vim
rm ~/.config/alacritty/alacritty.toml || true

echo "Installing new dotfiles..."
ln -s $current_path/tmux.conf ~/.tmux.conf
ln -s $current_path/zshrc ~/.zshrc

echo "Install alacritty..."
mkdir -p ~/.config/alacritty
ln -s $current_path/alacritty.toml ~/.config/alacritty/alacritty.toml

echo "Install astronvim..."
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
