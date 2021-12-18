#!/bin/bash

# MAINTAINER:   Tommy Chu
# GITHUB:       chutommy
# EMAIL:        tommychu2256@gmail.com

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# rcs
sudo cp ../rcs/bashrc ~/.bashrc
sudo cp ../rcs/bashrc /root/.bashrc
sudo cp ../rcs/vimrc ~/.vimrc
sudo cp ../rcs/vimrc /root/.vimrc

sudo apt-get -y update

# git
sudo apt-get -y install git-all
git config --global user.name "chutommy"
git config --global user.email "tommychu2256@gmail.com"

# performance & battery
sudo apt-get -y install preload
sudo apt-get -y install tp-smapi-dkms acpi-call-dkms
sudo apt-get -y install tlp tlp-rdw
sudo tlp start

# languages
sudo apt-get -y install python3
sudo apt-get -y install golang
sudo apt-get -y install nodejs
sudo apt-get -y install npm

# browser
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# apps
sudo apt-get -y install curl
sudo apt-get -y install vim
sudo apt-get -y install neovim
sudo apt-get -y install trash-cli
sudo apt-get -y install inkscape
sudo apt-get -y install gimp
sudo apt-get -y install gnome-tweak-tool
sudo snap install postman
sudo snap install vlc
sudo snap install intellij-idea-ultimate --classic
sudo snap install deja-dup --classic

# DOCKER
sudo apt-get -y install ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world
sudo groupadd docker
sudo usermod -aG docker "$USER"
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# final
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y autoremove
