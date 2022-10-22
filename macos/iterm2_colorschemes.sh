#!/bin/bash

echo "downloading iTerm 2 Colorschemes";

CONFIG_DIR="../repo";

if [ ! -d "$CONFIG_DIR" ]; then
    mkdir $CONFIG_DIR;
    echo "making config dir at $CONFIG_DIR";
fi

git clone https://github.com/mbadolato/iTerm2-Color-Schemes.git $CONFIG_DIR;

echo "done"
