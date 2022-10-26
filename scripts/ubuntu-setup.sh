#!/bin/bash

# MAINTAINER:   Tommy Chu
# GITHUB:       chutommy
# EMAIL:        tommychu2256@gmail.com

if [ "$EUID" -ne 0 ]
  then echo "Please run with sudo"
  exit
fi

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
sudo systemctl enable tlp.service

# customization
sudo apt-get -y install gnome-tweak-tool

# apps
sudo snap install gimp
sudo snap install inkscape
sudo snap install vlc

# clean-up
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y autoremove
