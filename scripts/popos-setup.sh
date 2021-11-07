#!/bin/bash

# === SETUP ==

# MAINTAINER:   Tommy Chu
# GITHUB:       chutommy
# EMAIL:        tommychu2256@gmail.com

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

sudo apt-get update
sudo apt-get -y upgrade

# git
git config --global user.name "chutommy"
git config --global user.email "tommychu2256@gmail.com"

# performance
sudo apt-get -y install ubuntu-restricted-extras
sudo apt-get -y install preload
sudo systemctl enable fstrim.timer

# battery
sudo apt-get -y install tp-smapi-dkms acpi-call-dkms
sudo apt-get -y install tlp tlp-rdw
sudo tlp start

# docker
sudo apt-get -y remove docker docker-engine docker.io containerd runc
sudo apt-get -y install apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# apps
sudo apt-get -y install neovim
sudo apt-get -y install trash-cli
sudo apt-get -y install golang-go
sudo apt-get -y install inkscape
sudo apt-get -y install gimp

# zsh
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo apt-get autoremove

echo """
  Install apps:
  =============
  Google Chrome (login)
  Goland (login)
  Postman (login)
"""
