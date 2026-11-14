#!/bin/bash

current_path=$(pwd)
echo $current_path

echo "Delete existing dotfiles..."
rm ~/.tmux.conf
rm ~/.zshrc

echo "Installing new dotfiles..."
ln -sf $current_path/zshrc ~/.zshrc

echo "Install alacritty..."
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
ln -fs ~/.config/alacritty/themes/themes/pencil_light.toml ~/.config/alacritty/_active.toml
ln -fs $current_path/alacritty.toml ~/.config/alacritty/alacritty.toml


echo "Symlinking global gitiginore files..."
ln -sf $current_path/gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore

echo "Setup zellij..."
mkdir -p ~/.config/zellij
ln -sf $current_path/zellij.kdl ~/.config/zellij/config.kdl

echo "Installing git aliases..."
git config --global alias.cm commit
git config --global alias.d diff
git config --global alias.b branch
git config --global alias.co checkout
git config --global alias.st status

echo "Install aerospace"
ln -sf $current_path/aerospace.toml ~/.aerospace.toml

echo "Done"
