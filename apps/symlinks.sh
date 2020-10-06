#!/bin/sh

echo -e "${GREEN_TEXT}Adding application symlinks...${NORMAL_TEXT}"

# Remove existing files first
sudo rm -rf ~/.config/Code/User/snippets
sudo rm -f ~/.config/Code/User/keybindings.json
sudo rm -f ~/.config/Code/User/settings.json

ln -s $DIR/apps/vscode/snippets ~/.config/Code/User/snippets
ln -s $DIR/apps/vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -s $DIR/apps/vscode/settings.json ~/.config/Code/User/settings.json