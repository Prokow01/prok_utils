#!/bin/bash

echo 'installing arangodb...';


echo 'add the repository key to apt ';
curl -OL https://download.arangodb.com/arangodb37/DEBIAN/Release.key;
sudo apt-key add - < Release.key;


echo 'installing arangodb';
echo 'deb https://download.arangodb.com/arangodb37/DEBIAN/ /' | sudo tee /etc/apt/sources.list.d/arangodb.list;
sudo apt-get install apt-transport-https;
sudo apt-get update;
sudo apt-get install arangodb3=3.7.6-1;


echo 'install debug symbols (not required)';
sudo apt-get install arangodb3-dbg=3.7.6-1;

echo 'done';
