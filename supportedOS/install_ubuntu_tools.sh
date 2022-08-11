#!/bin/bash

sudo apt-get update;
sudo apt-get -y upgrade;




# install python3
sudo apt-get install python3;
sudo apt-get install python3-pip;

# set the default python to 3 by using the update-alternatives and assigning highest priority
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 10;


# install colordiff
sudo apt-get -y install colordiff


# fun things
sudo apt-get -y install cowsay
sudo apt-get -y install fortune
suoo apt-get -y install neofetch

sudo apt-get autoclean;


# Get VIm setup
sudo apt-get -y install vim;
#sudo cp dot_files/.vimrc ~/.;
#sudo mkdir -p ~/.vim/colors; mkdir -p ~/.vim/plugins;


