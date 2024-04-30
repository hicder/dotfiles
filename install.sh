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
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
ln -fs ~/.config/alacritty/themes/themes/pencil_light.toml ~/.config/alacritty/_active.toml
ln -fs $current_path/alacritty.toml ~/.config/alacritty/alacritty.toml

echo "Install astronvim..."
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
rm -rf ~/.config/nvim/.git

