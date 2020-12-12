#!/bin/bash

# === SETUP ==
# Install all apps in one script on a new system (Fedora)
#
# MAINTAINER:   Tommy Chu
# GITHUB:       chutified
# EMAIL:        tommychu2256@gmail.com

# SET
clear
echo "==========================="
echo "Linux sofware setup"
echo "==========================="

# GIT
echo "==> Installing git..."
sudo dnf install git --assumeyes --nodocs

# GIT CONFIGURATION
echo '###Congigure Git..'
# promt username
echo "Enter the Global Username for Git:";
read GITUSER;
git config --global user.name "${GITUSER}"
# promt email
echo "Enter the Global Email for Git:";
read GITEMAIL;
git config --global user.email "${GITEMAIL}"
# success message
echo 'Git has been configured!'
git config --list

# RPM FUSION
yes | sudo rpm -Uvh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
yes | sudo rpm -Uvh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# DELTARPM AND MIRROR PLUGINS
sudo sh -c 'echo "fastestmirror=true" >> /etc/dnf/dnf.conf'
sudo sh -c 'echo "deltarpm=true" >> /etc/dnf/dnf.conf'

# UPDATE
echo "=== Updating installed packages... ==="
sudo dnf update --assumeyes --nodocs

# BATTERY USAGE
sudo dnf install tlp tlp-rdw --assumeyes --nodocs
sudo systemctl enable tlp

# SET BASHRC
sudo cp bashr ~/.bashrc
sudo cp bashr /root/.bashrc

# PROGRAMMING LANGUAGES/UTILITIES
# python
echo ""
echo "==> installing python..."
sudo dnf install python --assumeyes --nodocs
sudo dnf install python3 --assumeyes --nodocs
# nodejs
echo ""
echo "==> installing nodejs..."
sudo dnf install nodejs --assumeyes --nodocs
# golang
echo ""
echo "==> installing golang..."
sudo dnf install golang --assumeyes --nodocs
mkdir ~/go
mkdir ~/go/src ~/go/bin ~/go/pkg
# postgres
echo ""
echo "==> installing postgres..."
sudo dnf install postgresql --assumeyes --nodocs
# ctags
echo ""
echo "==> installing ctags..."
sudo dnf install ctags --assumeyes --nodocs

# UI
echo ""
echo "==> installing gnome-tweaks..."
sudo dnf install gnome-tweaks --assumeyes --nodocs

# IMAGES
# raster graphics
echo ""
echo "==> installing gimp..."
sudo dnf install gimp --assumeyes --nodocs
# vector graphics
echo ""
echo "==> installing inkscape..."
sudo dnf install inkscape --assumeyes --nodocs

# MEDIA
# video format
echo ""
echo "==> installing vlc..."
sudo dnf install vlc --assumeyes --nodocs
# installing apps
echo ""
echo "==> installing transmission"
sudo dnf install transmission --assumeyes --nodocs
# google chrome browser
echo ""
echo "==> installing google-chrome..."
sudo dnf install google-chrome --assumeyes --nodocs
# dropbox
sudo dnf install dropbox nautilus-dropbox --assumeyes --nodocs

# NEOVIM
echo ""
echo "==> installing neovim..."
sudo dnf install neovim --assumeyes --nodocs
# htop
echo ""
echo "==> installing htop..."
sudo dnf install htop --assumeyes --nodocs
# fuzzy finder
echo ""
echo "==> installing fzf..."
sudo dnf install fzf --assumeyes --nodocs
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# CLEAN UP
sudo dnf autoremove --assumeyes

# TODO
echo ""
echo "=== TODO ==="
echo "==> Manually install Docker, NERD-FiraCode, Dash-to-dock"
echo "==> Configure NeoVim, Postgres, Dash-to-dock, Dropbox, Chrome, GNOME-Tweak"
