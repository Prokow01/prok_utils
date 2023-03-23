#!/bin/bash


echo "==> Initializing git";
echo "Initializing submodule(s)..."
git submodule update --init --recursive

# setting up git ids
git config --global user.name Prokow01;
git config --global user.email peterrokowski@gmail.com;
echo "<== Initializing git -- Done";

echo "==>OS specific tools";
if [ "$(uname)" == "Darwin" ]; then
    echo "--Installing on OSX";
        
    echo "----Checking if homebrew is installed...";
    brew=`which brew`;
    if [ -z "$brew" ]
    then
        echo "--Installing homebrew..."
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        echo "--Homebrew already installed."
    fi

    echo "--Brewing all the things..."
    source install/brew.sh;

    echo "--Updating OSX settings..."
    source supportedOS/installosx.sh;
elif [ "$(uname)" == "Linux" ]; then
    # assumes ubuntu
    echo "--Linux Detected -- Assuming Ubuntu";
    dash supportedOS/install_ubuntu_tools.sh;
fi
echo "<== Done"

echo "==>General Installations"
echo "--installing vim colorschemes"
dash colorschemes_vim.sh
#git_aware_install.sh
#oh_my_zsh_install.sh
#iterm2_colorschemes.sh
echo "<== Done"

echo "==> Installing dotfiles"
source utils/link.sh
echo "<== Done"

