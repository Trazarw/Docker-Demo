#Update apt get
sudo apt-get update

#Install curl
sudo apt-get install curl

#Install git
apt-get install git

#Install docker
sudo curl -fsSL https://get.docker.com/ | sh
sudo docker daemon

#Cloning the repository
git clone https://github.com/Trazarw/GC-Infra

#Deploy the docker containers
chmod 555 Deploy-Docker-Containers
./Deploy-Docker-Containers