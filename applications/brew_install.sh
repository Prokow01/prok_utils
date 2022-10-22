#!/bin/bash
## install_brew_list.sh
#   - installs the list of target applications for OSX using homebrew, depends on BREW being installed

if [ -z "$BREW_PATH" ]; then
    echo "Homebrew is not installed, exiting";
    exit 1;
fi

#brew install wget

#brew install git;
#brew install tmux;

#brew install tree;
# install ag
#brew install the_silver_searcher; 
#brew install cask;

# cask programs
#brew cask install spotify;

#brew cask install spectacle;

# add config script
#brew cask install iterm2;

exit 0
