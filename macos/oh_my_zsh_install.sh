#!/bin/bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";

# post install, link the bash_profile to the zshrc
echo "source .bash_profile" >> .zshrc;
