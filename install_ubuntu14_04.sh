#!/bin/bash

sudo apt-get update;
sudo apt-get -y upgrade;

# add all apt-repository's
# tmux
sudo -E add-apt-repository -y ppa:pi-rho/dev;
# numix icons
sudo -E add-apt-repository -y ppa:numix/ppa;
# cinnamon DE
sudo -E add-apt-repository -y ppa:tsvetko.tsvetkov/cinnamon;
# plank
sudo -E add-apt-repository -y ppa:ricotz/docky;


# update
sudo apt-get update;

# install packages
sudo apt-get -y install synaptic gdebi;
sudo apt-get -y install vim git htop tmux;

# install numix theme/icons
sudo apt-get -y install numix-icon-theme-circle numix-gtk-theme;

# install cinnamon
sudo apt-get -y install cinnamon;

# install planky
sudo apt-get -y install plank;

# install ctags for vim
sudo apt-get -y install exuberant-ctags;


sudo apt-get autoclean;


# Get VIm setup
sudo apt-get -y install vim;
sudo cp dot_files/.vimrc ~/.;
sudo mkdir -p ~/.vim/colors; mkdir -p ~/.vim/plugins;

# stick in install script to clone the plugin directories and colorschemes that I want



# install system utilities
# systemback
# gparted
# Dropbox
#cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
