#!/bin/bash

echo "Adding Colorschemes";

# set vim dir variable
VIM_DIR="$HOME/.vim/"

# Check to see if the colorschemes dir exists
if [ -d "$VIM_DIR" ]; then
    mkdir -p $VIM_DIR;
    echo "making vim colors directory at '$VIM_DIR'";
else
    echo "dir exists";

fi

tmpDir=$(pwd);

# Clone the repo into the right place
echo "cloning colorschemes ...";
cd "$VIM_DIR";
git clone https://github.com/flazz/vim-colorschemes.git;
cd vim-colorschemes;
mv colors $VIM_DIR/.;
cd "$tmpDir";
echo "done =)";
