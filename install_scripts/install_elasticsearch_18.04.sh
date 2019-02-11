#!/bin/bash

INSTALL_FAILED=false;

# make sure we're in the clear here and all up to date.
sudo apt-update;
sudo apt-get upgrade -y;

# install Java 8, by adding the repo.
sudo add-apt-repository ppa:webupd8team/java;
sudo apt-get update;
sudo apt-get install oracle-java8-installer -y;


# install ES
cd /tmp;
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.3.2.deb;

if [ $? -eq 0 ]; then
	echo 'PROK - wget worked, running instllation now';
	sudo dpkg -i elasticsearch-6.3.2.deb;
else
	echo 'PROK - wget failed, check the proxies, is your .wgetrc up to date?';
	INSTALL_FAILED=true;
fi



# if the install failed somewhere, make sure it's the last thing seen
if [ $INSTALL_FAILED = false ]; then 
	echo 'PROK - Continue w/ installation';
else
	echo 'PROK - INSTALL has failed somewhere, check the output';
fi


