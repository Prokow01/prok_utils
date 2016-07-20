#!/bin/bash

echo "Adding Colorschemes";

# set vim dir variable
VIM_DIR="$HOME/.vim/"

# Check to see if the colorschemes dir exists
if [ ! -d "$VIM_DIR" ]; then
    mkdir $VIM_DIR;
    echo "making vim colors directory at '$VIM_DIR'";
fi

# Clone the repo into the right place
echo "cloning colorschemes ...";
git clone https://github.com/flazz/vim-colorschemes.git $VIM_DIR;
echo "done =)";
