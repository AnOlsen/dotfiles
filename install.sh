#!/bin/sh

echo "Setting up machine..."

# Load env variables before we continue
source $HOME/.dotfiles/.env

# Run install scripts
source $APPS/install.sh
source $APPS/symlinks.sh
source $HOMEFILES/install.sh
source $HOMEFILES/symlinks.sh

# Get all upgrades
sudo apt upgrade -y

# Load new shell
source ~/.bashrc

echo "Machine setup complete!"