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

# install python3
sudo apt-get install python3;
sudo apt-get install python3-pip;

# set the default python to 3 by using the update-alternatives and assigning highest priority
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 10;



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

# install colordiff
sudo apt-get -y install colordiff


# fun things
sudo apt-get -y install cowsay
sudo apt-get -y install fortune


sudo apt-get autoclean;





# Get VIm setup
sudo apt-get -y install vim;
#sudo cp dot_files/.vimrc ~/.;
#sudo mkdir -p ~/.vim/colors; mkdir -p ~/.vim/plugins;

# stick in install script to clone the plugin directories and colorschemes that I want
# call out to vim plugin and color install scripts from here.. in fact they shoudl make the respective directories...
#stick in install script to clone the plugin directories and colorschemes that I want



# install system utilities
# systemback
# gparted
# Dropbox
#cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
