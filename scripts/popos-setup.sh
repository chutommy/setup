#!/bin/bash
# === SETUP ==

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
sudo cp ../rcs/zshrc ~/.zshrc
sudo cp ../rcs/zshrc /root/.zshrc
sudo cp ../rcs/vimrc ~/.vimrc
sudo cp ../rcs/vimrc /root/.vimrc

# update
sudo apt-get -y update
sudo apt-get -y upgrade

# git
sudo apt-get -y install git-all
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
sudo apt-get -y install snapd
sudo snap install postman
sudo snap install vlc
sudo snap install intellij-idea-ultimate --classic
sudo snap install deja-dup --classic

# zsh
sudo apt-get -y install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# docker
sudo apt-get install ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# clean-up
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y autoremove
