
echo 'installing docker.... this make take a few seconds';
echo 'removing potentially old versions...'
sudo apt-get remove docker docker-engine docker.io containerd runc;



sudo apt-get update;

echo 'installing dependencies...';
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common;


echo 'adding dockers official key...';
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;


sudo apt-key fingerprint 0EBFCD88;

echo 'setting up the "stable" repository';
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable";


echo 'installing docker components';
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io;


echo 'done... please verify that docker is installed correctly with "sudo docker run hello-world"';

echo 'installing docker-compose';
sudo apt-get install docker-compose;

echo "adding $USER to the docker group";
sudo usermod -aG docker ${USER};

echo 'shutting down..';
sudo poweroff;


