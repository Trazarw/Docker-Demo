#Update apt get
sudo apt-get update

#Install curl
sudo apt-get install curl

#Install git
apt-get install git

#Install docker
sudo curl -fsSL https://get.docker.com/ | sh

#Cloning the repository
sudo rm GC-Infra
git clone https://github.com/Trazarw/GC-Infra

#Deploy the docker containers
chmod 555 Deploy-Docker-Containers
./Deploy-Docker-Containers