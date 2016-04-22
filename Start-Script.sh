#!/bin/bash

sudo su
apt-get update
apt-get -y install curl
apt-get -y install apt-transport-https ca-certificates
apt-get -y install git

apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

rm /etc/apt/sources.list.d/docker.list
echo 'deb https://apt.dockerproject.org/repo ubuntu-trusty main' > /etc/apt/sources.list.d/docker.list

apt-cache policy docker.io

apt-get -y install docker.io

sudo apt-get -y install linux-image-extra-$(uname -r)

apt-get -y install apparmor

service docker start

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
	DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
	SOURCE="$( readlink "$SOURCE" )"
	[[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
scriptPath="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

git clone https://github.com/Trazarw/GC-Infra

cd $scriptPath/GC-Infra

chmod 555 ./Deploy-Docker-Containers.sh
./Deploy-Docker-Containers.sh $scriptPath/GC-Infra