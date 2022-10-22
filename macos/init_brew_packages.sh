## install_brew_list.sh
#   - installs the list of target applications for OSX using homebrew, depends on BREW being installed

if [ -z "$BREW_PATH" ]; then
    echo "Homebrew is not installed, exiting";
    exit 1;
fi


BREW_PACKAGE_LIST="brew_packages.txt";
installed_brew=`brew list --formulae`;
echo "BREW-INSTALL:: BEGIN";
while read package; 
do
    echo "\t-- $package";
    if substring $package $installed_brew; then
        echo "\t\t already installed -- skipping";
    else
        brew install $package;
    fi
done < $BREW_PACKAGE_LIST
echo "BREW-INSTALL:: DONE ";

echo "\n--------";

CASK_PACKAGE_LIST="cask_packages.txt";
installed_cask=`brew list --cask`; 
echo "CASK-INSTALL:: BEGIN";
while read package; 
do
    echo "\t-- $package";
    if substring $package $installed_cask; then
        echo "\t\t already installed -- skipping";
    else
        brew install --cask $package;
    fi
done < $CASK_PACKAGE_LIST
echo "CASK-INSTALL:: DONE";


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
#brew list --formulae
#brew list --cask
