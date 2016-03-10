#!/bin/bash

echo "Checking if homebrew is installed...";

brew=`which brew`;

if command_exists "$brew"; then
    echo "Installing homebrew...";
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
else
    echo "Homebrew already installed.";
fi

echo "Brewing all the things...";
source install/brew.sh;


