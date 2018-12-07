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