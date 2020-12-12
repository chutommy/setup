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

echo "=== Updating installed packages... ==="
sudo dnf update --assumeyes --nodocs

# SET BASHRC
sudo cp bashr ~/.bashrc
sudo cp bashr /root/.bashrc

# GIT

echo "==> Installing git..."
sudo dnf install git --assumeyes --nodocs

# GIT CONFIGURATION
echo '###Congigure Git..'

echo "Enter the Global Username for Git:";
read GITUSER;
git config --global user.name "${GITUSER}"

echo "Enter the Global Email for Git:";
read GITEMAIL;
git config --global user.email "${GITEMAIL}"

echo 'Git has been configured!'
git config --list

# PROGRAMMING LANGUAGES
echo ""
echo "==> installing python..."
sudo dnf install python --assumeyes --nodocs
sudo dnf install python3 --assumeyes --nodocs

echo ""
echo "==> installing nodejs..."
sudo dnf install nodejs --assumeyes --nodocs

echo ""
echo "==> installing golang..."
sudo dnf install golang --assumeyes --nodocs
mkdir ~/go
mkdir ~/go/src ~/go/bin ~/go/pkg

# DB
echo ""
echo "==> installing postgres..."
sudo dnf install postgresql --assumeyes --nodocs

echo ""
echo "==> installing ctags..."
sudo dnf install ctags --assumeyes --nodocs

# UI
echo ""
echo "==> installing gnome-tweaks..."
sudo dnf install gnome-tweaks --assumeyes --nodocs

# IMAGES
echo ""
echo "==> installing gimp..."
sudo dnf install gimp --assumeyes --nodocs

echo ""
echo "==> installing inkscape..."
sudo dnf install inkscape --assumeyes --nodocs

# MEDIA
echo ""
echo "==> installing vlc..."
sudo dnf install vlc --assumeyes --nodocs

echo ""
echo "==> installing transmission"
sudo dnf install transmission --assumeyes --nodocs

echo ""
echo "==> installing google-chrome..."
sudo dnf install google-chrome --assumeyes --nodocs

# NEOVIM
echo ""
echo "==> installing neovim..."
sudo dnf install neovim --assumeyes --nodocs

echo ""
echo "==> installing htop..."
sudo dnf install htop --assumeyes --nodocs

echo ""
echo "==> installing fzf..."
sudo dnf install fzf --assumeyes --nodocs
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# TODO
echo ""
echo "=== TODO ==="
echo "==> Manually install Docker, Dropbox, NERD-FiraCode, Dash-to-dock"
echo "==> Configure NeoVim, Postgres, Dash-to-dock, Dropbox, Chrome, GNOME-Tweak"
