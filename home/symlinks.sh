#!/bin/sh

# Remove existing files first
rm -f ~/.bashrc
rm -f ~/.bash_aliases

ln -s ~/.dotfiles/home/bashrc ~/.bashrc
ln -s ~/.dotfiles/home/aliases ~/.bash_aliases
ln -s ~/.dotfiles/home/git_autocomplete.sh ~/.git_autocomplete.sh
ln -s ~/.dotfiles/scripts ~/scripts