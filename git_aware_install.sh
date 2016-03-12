#!/bin/bash

# get the system name and determing the appropriate file to edit
sys=`uname`;
case $sys in
    'Darwin')
        BASHCONFIG="$HOME/.bash_profile"
        ;;
    'Ubuntu')
        BASHCONFIG="$HOME/.bashrc"
        ;;
    *)
        echo "sys type not recognized... if this is Windows please file a bug report =)"
        echo "terminating..."
        exit;
        ;;
esac

# get the repo from github and put it in the necessary directory
mkdir ~/.bash;
cd ~/.bash;
git clone https://github.com/jimeh/git-aware-prompt.git;

# Throw in the installation parti
echo '' >> $BASHCONFIG
echo '## [Git-Aware Installation]' >> $BASHCONFIG
echo 'export GITAWAREPROMPT=~/.bash/git-aware-prompt;' >> $BASHCONFIG
echo 'source "${GITAWAREPROMPT}/main.sh";' >> $BASHCONFIG
echo '' >> $BASHCONFIG

# [MAC] -- Throw these into bash_profile for mac
if [ $sys == 'Darwin' ]; then
    echo '# MAC - specific configuration' >> $BASHCONFIG
    echo 'export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ ";' >> $BASHCONFIG
    echo 'export SUDO_PS1="\[$bakred\]\u\@\h\[$txtrst\] \w\$ ;"' >> $BASHCONFIG
fi

# [Ubuntu] -- Throw these into .bashrc for Ubuntu
if [ $sys == 'Ubuntu' ]; then
    echo '# UBUNTU - specfic configuration' >> $BASHCONFIG
    echo 'export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ ;"' >> $BASHCONFIG
fi

echo '## [End Git-Aware] - to update switch to .bash/git-aware-prompt and do a git pull' >> $BASHCONFIG
cd $HOME # reset directory
source $BACHCONFIG
