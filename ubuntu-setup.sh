#!/bin/bash

# === SETUP ==

# MAINTAINER:   Tommy Chu
# GITHUB:       chutified
# EMAIL:        tommychu2256@gmail.com

# SET
clear
echo "========================="
echo "| Ubuntu software setup |"
echo "========================="

# APT
sudo apt update
sudo apt -y upgrade

# SETTINGS
sudo cp bashrc ~/.bashrc
sudo cp bashrc /root/.bashrc
sudo cp vimrc ~/.vimrc
sudo cp vimrc /root/.vimrc

# GIT
sudo apt -y install git-all
git config --global user.name "chutified"
git config --global user.email "tommychu2256@gmail.com"

# PERFORMANCE
sudo apt -y install preload

# BATTERY
sudo apt -y install tlp tlp-rdw
sudo tlp start
sudo apt -y install tp-smapi-dkms acpi-call-dkms

# LANGUAGES
sudo apt -y install nodejs
sudo apt -y install npm
sudo snap install go --classic
mkdir ~/go
mkdir ~/go/src ~/go/bin ~/go/pkg

# APPs
sudo add-apt-repository universe
sudo add-apt-repository ppa:inkscape.dev/stable
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt update

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt -y install ./google-chrome-stable_current_amd64.deb

sudo apt -y install curl
sudo apt -y install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo apt -y install gnome-tweak-tool
sudo apt -y install inkscape
sudo apt -y install flameshot
sudo snap install gimp
sudo snap install vlc
sudo snap install goland --classic
sudo snap install postman
sudo snap install teams
sudo snap install htop

# DOCKER
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# CLEAN UP
sudo apt -y upgrade
sudo apt autoremove

echo "=== TODO ==="
echo "1. Install/config Chrome, Dropbox, Terminal, Dash To Dock"
echo "2. Config Software and updates, Wireless DNS, MS Teams, Goland, Postman, Git SSH"
echo "3. Settings, GNOME Tweaks"

echo """
  Keyboard Shortcuts
  ------------------
  Open Google Chrome [google-chrome] (Super+A)
  Open File manager [nautilus] (Super+Q)
  Open Goland [goland] (Super+W)
  Take Flameshot [flameshot gui] (Super+Z)
  Play LoFi [gnome-terminal -x sh -c \"mpg123 -v -l 0 -g 5 -K ~/Dropbox/Music/codefi.mp3; bash\"] (Super+F)
"""