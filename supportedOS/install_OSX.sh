#!/bin/bash

echo "Checking if homebrew is installed...";

brew=`which brew`; # move this to it's own script?? no it might be better to have it here then just a software list to move through here

if command_exists "$brew"; then
    echo "Installing homebrew...";
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed.";
fi

echo "Brewing all the things...";
#source install/brew.sh;


