#!/bin/sh

GREEN_TEXT='\033[0;32m'
NORMAL_TEXT='\033[0m'

DIR="$HOME/.dotfiles/"

echo -e "${GREEN_TEXT}Setting up machine...${NORMAL_TEXT}"

# Update machine first
sudo apt update
sudo apt upgrade -y

# Run install scripts
source $DIR/apps/install.sh
source $DIR/home/install.sh

echo -e "${GREEN_TEXT}Machine setup complete!${NORMAL_TEXT}"
echo -e "${GREEN_TEXT}Please restart your shell${NORMAL_TEXT}"