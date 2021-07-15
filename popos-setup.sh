#!/bin/bash

# === SETUP ==

# MAINTAINER:   Tommy Chu
# GITHUB:       chutommy
# EMAIL:        tommychu2256@gmail.com

sudo apt update && sudo apt -y upgrade

# git
git config --global user.name "chutommy"
git config --global user.email "tommychu2256@gmail.com"

# performance
sudo apt -y install ubuntu-restricted-extras
sudo apt -y install preload
sudo systemctl enable fstrim.timer

# battery
sudo apt -y install tp-smapi-dkms acpi-call-dkms
sudo apt -y install tlp tlp-rdw
sudo tlp start

# docker
sudo apt -y remove docker docker-engine docker.io containerd runc
sudo apt -y install apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt -y install docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker 
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# apps
sudo apt -y install neovim
sudo apt -y install golang-go
sudo apt -y install inkscape
sudo apt -y install gimp

sudo apt autoremove

echo """
  Install apps:
  =============
  Google Chrome (login)
  Goland (login)
  Postman (login)
  MS Teams (login)
  Vlc
"""