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

# apps
sudo apt-get -y install neovim
sudo apt-get -y install trash-cli
sudo apt-get -y install golang-go
sudo apt-get -y install inkscape
sudo apt-get -y install gimp

# browser
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# zsh
sudo apt-get -y install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo apt-get autoremove

echo """
  Manually:
  =============
  IntelliJ IDEA Ultimate
  Postman
  ZSH
  Backups setup
  Docker
"""
