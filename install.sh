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

echo "Machine setup complete!"
echo "Please reload your shell."