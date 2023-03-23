## git_settings.sh
#   sets the bare minimum git settings

GIT_INSTALLED=$(which git);

if [ -z "${GIT_INSTALLED}" ]; then
    echo " need to install git (apt-get install git)";
    exit 1;
fi

# unset any old configs
git config --global --unset user.name
git config --global --unset user.email
git config --global --unset core.editor 

# set the new ones
git config --global user.name 'Prokow01'
git config --global user.email 'prokow01@villanova.edu'
git config --global core.editor 'vim'
