#!/bin/bash
# Server Build scripts

echo "--> Installing initial packages"
sudo apt-get update && sudo apt-get install -y \
    curl \
    vim \
    git-core \
    tree \
    mosh \
    multitail \
    ufw \
    docker.io \
    make

# This command is to install neovim (unsstable)
# sudo add-apt-repository ppa:neovim-ppa/stable

echo "--> Installing docker-compose"
sudo curl \
    -L "https://github.com/docker/compose/releases/download/1.11.1/docker-compose-$(uname -s)-$(uname -m)" \
    -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


# echo "--> Configuring docker group"
# groupadd docker


# echo "--> Configuring docker to start on boot"
# systemctl enable docker


# echo "--> Adding current user to docker group"
# usermod -aG docker $USER


# echo "--> NOTE: Verify that docker is in the current groups"
# groups


echo "--> Updating locales"
locale-gen
