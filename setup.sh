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

# SET BASHRC
sudo cp bashr ~/.bashrc
sudo cp bashr /root/.bashrc

# GIT
sudo dnf install git --assumeyes --nodocs
echo '###Congigure Git..'
echo "Enter the Global Username for Git:";
read GITUSER;
git config --global user.name "${GITUSER}"
echo "Enter the Global Email for Git:";
read GITEMAIL;
git config --global user.email "${GITEMAIL}"
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

sudo dnf install tlp tlp-rdw --assumeyes --nodocs
sudo systemctl enable tlp

sudo dnf install python --assumeyes --nodocs
sudo dnf install python3 --assumeyes --nodocs
 
sudo dnf install nodejs --assumeyes --nodocs

sudo dnf install golang --assumeyes --nodocs
mkdir ~/go
mkdir ~/go/src ~/go/bin ~/go/pkg

sudo dnf install postgresql --assumeyes --nodocs
sudo dnf install gnome-tweaks --assumeyes --nodocs
sudo dnf install gimp --assumeyes --nodocs
sudo dnf install inkscape --assumeyes --nodocs
sudo dnf install vlc --assumeyes --nodocs
sudo dnf install transmission --assumeyes --nodocs
sudo dnf install fira-code-fonts --assumeyes
sudo dnf install gnome-shell-extension-dash-to-dock --assumeyes

sudo dnf install dropbox nautilus-dropbox --assumeyes --nodocs
sudo dropbox autostart y
sudo dropbox start

sudo dnf install google-chrome --assumeyes --nodocs
sudo google-chrome
google-chrome --app=https://accounts.google.com/

# NEOVIM
sudo dnf install neovim --assumeyes --nodocs
sudo sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sudo dnf install htop --assumeyes --nodocs
sudo dnf install ctags --assumeyes --nodocs
sudo dnf install fzf --assumeyes --nodocs
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
sudo npm install -g neovim
pip3 install pynvim

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

# POSTGRES
sudo dnf install postgresql-server postgresql-contrib --assumeyes
sudo systemctl enable postgresql
sudo postgresql-setup --initdb --unit postgresql
sudo systemctl start postgresql
sudo --user=postgres createuser --createdb --createrole -P $USER
sudo --user=postgres createdb --owner=$USER $USER

# CLEAN UP
sudo dnf autoremove --assumeyes

# TODO
echo "=== TODO ==="
echo "==> CONFIGURE NeoVim, Postgres, Dash-to-dock, GNOME-Tweak, Settings, Terminal, GithubSSH"
echo "==> visit https://fedoraproject.org/wiki/PostgreSQL#User_Creation_and_Database_Creation to set Postgres users"
