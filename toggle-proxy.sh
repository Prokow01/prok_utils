#!/bin/bash

PROXY=$1;
HTTP="http://"${PROXY};
HTTPS="https://"${PROXY};

# Git Proxies
git config --global http.proxy ${HTTP};
git config --global https.proxy ${HTTPS};

# Change .bashrc proxies
SED_HTTP="s/^\(export http_proxy=\).*/\1http:\/\/${PROXY}/";
SED_HTTPS="s/^\(export https_proxy=\).*/\1https:\/\/${PROXY}/";

sed -i '' "${SED_HTTP}" .bashrc;
sed -i '' "${SED_HTTPS}" .bashrc;
source .bashrc;



# Other proxies
# - git-svn (~/.subversion/servers)
# - maven (~/.m2/settings.xml)
# - node (npm config set http-proxy)

