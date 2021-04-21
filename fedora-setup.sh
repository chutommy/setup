#!/bin/bash

# === SETUP ==
# Install all apps in one script on a new system (Fedora)
#
# MAINTAINER:   Tommy Chu
# GITHUB:       chutified
# EMAIL:        tommychu2256@gmail.com

# SET
clear
echo "====================="
echo "|Linux software setup|"
echo "===================="

echo "WARNING!!!"
echo "> Run this command as user 'tommychu'"
echo "Press enter to confirm."
read -r

# SET BASHRC
sudo cp bashrc ~/.bashrc
sudo cp bashrc /root/.bashrc

# GIT
sudo dnf install git -y --nodocs
echo '###Congigure Git..'
echo "Enter the Global Username for Git:"
read -r GITUSER
git config --global user.name "${GITUSER}"
echo "Enter the Global Email for Git:"
read -r GITEMAIL
git config --global user.email "${GITEMAIL}"
echo 'Git has been configured!'
git config --list

# RPM FUSION
yes | sudo rpm -Uvh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-'$(rpm -E %fedora)'.noarch.rpm
yes | sudo rpm -Uvh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-'$(rpm -E %fedora)'.noarch.rpm

# DELTARPM AND MIRROR PLUGINS
sudo sh -c 'echo "fastestmirror=true" >> /etc/dnf/dnf.conf'
sudo sh -c 'echo "deltarpm=true" >> /etc/dnf/dnf.conf'

# UPDATE

sudo dnf update -y --nodocs

sudo dnf install tlp tlp-rdw -y --nodocs
sudo systemctl enable tlp

sudo dnf install python -y --nodocs
sudo dnf install python3 -y --nodocs

sudo dnf install nodejs -y --nodocs

sudo dnf install golang -y --nodocs
mkdir ~/go
mkdir ~/go/src ~/go/bin ~/go/pkg

sudo dnf install gnome-tweaks -y --nodocs
sudo dnf install gimp -y --nodocs
sudo dnf install inkscape -y --nodocs
sudo dnf install vlc -y --nodocs
sudo dnf install gnome-shell-extension-dash-to-dock -y

sudo dnf install dropbox nautilus-dropbox -y --nodocs
sudo dropbox autostart y
sudo dropbox start

# NEOVIM
sudo dnf install neovim -y --nodocs
#sudo sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
#sudo dnf install htop -y --nodocs
#sudo dnf install ctags -y --nodocs
#sudo dnf install fzf -y --nodocs
#sudo npm install -g neovim
#pip3 install pynvim

# DOCKER
sudo dnf remove -y docker \
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
sudo dnf install docker-ce docker-ce-cli containerd.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo docker run hello-world
sudo groupadd docker
sudo usermod -aG docker "$USER"

# CLEAN UP
sudo dnf autoremove -y

echo "=== TODO ==="
echo "==> INSTALL Google Chrome"
echo "==> CONFIGURE"
echo "====> 1. GithubSSH key, Terminal"
echo "====> 2. Settings, GNOME Tweak (Dash-to-dock)"
echo "====> 2. Goland"
