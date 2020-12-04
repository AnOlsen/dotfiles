#!/bin/sh

echo -e "${GREEN_TEXT}Setting up home...${NORMAL_TEXT}"

# Clone repositories
git clone git@github.com:emaerket/powershell-scripts.git $HOME/powershell-scripts
git clone git@github.com:emaerket/emaerket.git $HOME/projects/emaerket

echo -e "${GREEN_TEXT}Adding home symlinks...${NORMAL_TEXT}"

# Remove existing files first
rm $HOME/.bashrc
rm $HOME/.bash_aliases

ln -s $HOME/.dotfiles/home/bashrc $HOME/.bashrc
ln -s $HOME/.dotfiles/home/aliases $HOME/.bash_aliases
ln -s $HOME/.dotfiles/home/git_autocomplete.sh $HOME/.git_autocomplete.sh
