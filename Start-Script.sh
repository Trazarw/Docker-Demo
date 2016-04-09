<<<<<<< HEAD
#Update apt get
apt-get update

#Install curl
apt-get install curl
=======

>>>>>>> cd1bf60c23e9067cfdab3b54919d7834c71af65e

get_script_dir () {
     SOURCE="${BASH_SOURCE[0]}"
     while [ -h "$SOURCE" ]; do
          DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
          SOURCE="$( readlink "$SOURCE" )"
          [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
     done
     DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
     echo "$DIR"
}

<<<<<<< HEAD
#Purge old docker
apt-get purge lxc-docker*
apt-get purge docker.io*

#Install CA certificates
apt-get install apt-transport-https ca-certificates

#Add the key
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

#Recreate docker file list & add a entry for Deian
sudo rm /etc/apt/sources.list.d/docker.list
sudo echo 'deb https://apt.dockerproject.org/repo debian-wheezy main' > /etc/apt/sources.list.d/docker.list

#Verify that APT is pulling from the right repository.
apt-cache policy docker-engine

#Install docker
sudo apt-get install docker-engine

#Start docker 
sudo service docker start

#Cloning the repository
sudo rm GC-Infra -r
git clone https://github.com/Trazarw/GC-Infra

#Get executing script source
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
	DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
	SOURCE="$( readlink "$SOURCE" )"
	[[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
scriptPath="$( cd -P "$( dirname "$SOURCE" )" && pwd )" 

#Deploy the docker containers
cd "$scriptPath/GC-Infra/"
sudo chmod 555 "Deploy-Docker-Containers.sh"
$scriptPath/Deploy-Docker-Containers.sh
=======
install_machine_libraries() {
	sudo apt-get update
	sudo apt-get install curl
	apt-get install git
	sudo curl -fsSL https://get.docker.com/ | sh
	sudo docker daemon
	sudo rm /var/run/docker.pid -f
	sudo docker daemon
	git clone https://github.com/Trazarw/GC-Infra
	cd "$path/GC-Infra"
}

deploy_docker_containers() {
	chmod 555 Deploy-Docker-Containers
	./Deploy-Docker-Containers "$path"
}

install_machine_libraries  $(get_script_dir); deploy_docker_containers $(get_script_dir)
>>>>>>> cd1bf60c23e9067cfdab3b54919d7834c71af65e
