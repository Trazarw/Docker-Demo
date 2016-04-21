#Go to root user
sudo su

#Update apt get
apt-get update

#Install curl
apt-get -y install curl

#Install git
apt-get -y install git

#Purge old docker
apt-get purge lxc-docker*
apt-get purge docker.io*

#Install CA certificates
apt-get -y install apt-transport-https ca-certificates

#Add the key
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

#Recreate docker file list & add a entry for Deian
rm /etc/apt/sources.list.d/docker.list
echo 'deb https://apt.dockerproject.org/repo debian-wheezy main' > /etc/apt/sources.list.d/docker.list

#Verify that APT is pulling from the right repository.
apt-cache policy docker-engine

#Install docker
apt-get -y install docker-engine

#Start docker 
service docker start

#Cloning the repository
rm GC-Infra -r
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
chmod 555 ./Deploy-Docker-Containers.sh
./Deploy-Docker-Containers.sh $scriptPath/GC-Infra
	