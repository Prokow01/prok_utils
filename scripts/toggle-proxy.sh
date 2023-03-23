#!/bin/bash

# check if any proxy is specified; exit with bad input error code
if [ -z "${1}" ]; then
	 echo 'empty input';
	exit 128; 
fi

PROXY=$1;
HTTP="http://"${PROXY};
HTTPS="https://"${PROXY};

# Change .bashrc proxies
SED_HTTP="s/^\(export http_proxy=\).*/\1http:\/\/${PROXY}/";
SED_HTTPS="s/^\(export https_proxy=\).*/\1https:\/\/${PROXY}/";

sed -i '' "${SED_HTTP}" .bashrc;
sed -i '' "${SED_HTTPS}" .bashrc;
source .bashrc;


# Git Proxies
echo 'Checking for Git';
which git;

if [ $? -eq 0 ]; then
	echo 'Found Git --- Changin Proxy';
	# Unset old proxy
	git config --global --unset http.proxy;
	git config --global --unset https.proxy;

	# Set the new one
	git config --global http.proxy ${HTTP};
	git config --global https.proxy ${HTTPS};
	echo 'done';
else
	echo 'Could not find Git --- Skipping';
fi


# Other proxies
# - git-svn (~/.subversion/servers)
# - maven (~/.m2/settings.xml)
# [x] node (npm config set http-proxy)

# could abstract all of this checking and then executing to a function...

# Node 
echo 'Checking for NPM';
which npm;

if [ $? -eq 0 ]; then
	echo 'Found npm --- Changin Proxy';
	# Unset old proxy
	npm config delete proxy;
	npm config delete https-proxy;

	# Set new one
	npm config set proxy $HTTP;
	npm config set https-proxy $HTTPS;
	echo 'done';
else
	echo 'Could not find npm --- Skipping';
fi

