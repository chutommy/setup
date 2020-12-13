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
sudo dnf update --assumeyes --nodocs

# BATTERY USAGE
sudo dnf install tlp tlp-rdw --assumeyes --nodocs
sudo systemctl enable tlp

# SET BASHRC
sudo cp bashr ~/.bashrc
sudo cp bashr /root/.bashrc

# PROGRAMMING LANGUAGES/UTILITIES
# python
sudo dnf install python --assumeyes --nodocs
sudo dnf install python3 --assumeyes --nodocs
# nodejs
sudo dnf install nodejs --assumeyes --nodocs
# golang
sudo dnf install golang --assumeyes --nodocs
mkdir ~/go
mkdir ~/go/src ~/go/bin ~/go/pkg
# postgres
sudo dnf install postgresql --assumeyes --nodocs
# ctags
sudo dnf install ctags --assumeyes --nodocs

# UI
sudo dnf install gnome-tweaks --assumeyes --nodocs

# IMAGES
# raster graphics
sudo dnf install gimp --assumeyes --nodocs
# vector graphics
sudo dnf install inkscape --assumeyes --nodocs

# MEDIA
# video format
sudo dnf install vlc --assumeyes --nodocs
# installing apps
sudo dnf install transmission --assumeyes --nodocs
# google chrome browser
sudo dnf install google-chrome --assumeyes --nodocs
# dropbox
sudo dnf install dropbox nautilus-dropbox --assumeyes --nodocs

# NEOVIM
sudo dnf install neovim --assumeyes --nodocs
# vim-plug
sudo sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# htop
sudo dnf install htop --assumeyes --nodocs
# fuzzy finder
sudo dnf install fzf --assumeyes --nodocs
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
# neovim language support
sudo npm install -g neovim
pip3 install pynvim

# FIRACODE
dnf install fira-code-fonts --assumeyes

# DOCKER
sudo dnf remove --assumeyes docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io --assumeyes
sudo systemctl start docker
sudo systemctl enable docker
sudo docker run hello-world
sudo groupadd docker
sudo usermod -aG docker $USER

# DASH TO DOCKER
sudo dnf install gnome-shell-extension-dash-to-dock --assumeyes

# CLEAN UP
sudo dnf autoremove --assumeyes

# TODO
echo "=== TODO ==="
echo "==> LOGIN:    Google Chrome, Dropbox"
echo "==> UPDATE:   NeoVim"
echo "==> Configure Postgres, Dash-to-dock, GNOME-Tweak, Settings, Terminal"
