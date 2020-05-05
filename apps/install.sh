#!/bin/sh

# Install apt HTTPS packages
sudo apt -y install apt-transport-https ca-certificates curl software-properties-common

# Add required repos for install all applications
./repos.sh

# Update before installing applications added from repos
sudo apt update

# Make sure you are about to install from the Docker repo instead of the default Ubuntu repo
apt-cache policy docker-ce

# Install all applications in the aptlist file
applications=$APPLISTS"/apt"
while IFS= read -r app
do
  sudo apt -y install $app
done < "$applications"

# Install all applications in the snaplist file
applications=$APPLISTS"/snap"
while IFS= read -r app
do
  sudo snap install $app
done < "$applications"

# Install composer via PHP
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# Install VSCode extensions
extensions=$APPS"/vscode/extensions"
while IFS= read -r extension
do
  code --install-extension $extension
done < "$extensions"

# Add username to the docker group to avoid typing sudo whenever running the docker command
sudo usermod -aG docker ${USER}
su - ${USER}