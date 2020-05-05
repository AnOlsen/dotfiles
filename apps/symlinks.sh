#!/bin/sh

# Remove existing files first
sudo rm -rf ~/.config/Code/User/snippets
sudo rm -f ~/.config/Code/User/keybindings.json
sudo rm -f ~/.config/Code/User/settings.json

ln -s ~/.dotfiles/apps/vscode/snippets ~/.config/Code/User/snippets
ln -s ~/.dotfiles/apps/vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -s ~/.dotfiles/apps/vscode/settings.json ~/.config/Code/User/settings.json