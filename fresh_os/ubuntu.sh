#!/usr/bin/env bash
# Add fresh git repo
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install -y \
        git \
        nano \
        curl

# Install fresh nodejs LTS from https://github.com/nodesource/distributions
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install TLDR for fast docs help need the npm (nodejs) installed
sudo npm install -g --unsafe-perms tldr

# Install docker and docker-compose
curl -sSL https://get.docker.com | bash -
sudo usermod -aG docker ${USER}
su - ${USER}

#Install docker-compose https://docs.docker.com/compose/install/
sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
