#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
	DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
	SOURCE="$( readlink "$SOURCE" )"
	[[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
scriptPath="$( cd -P "$( dirname "$SOURCE" )" && pwd )"


cd scriptPath/Host

chmod 555 ./install-docker-engenie
chmod 555 ./build-docker-containers
chmod 555 ./deploy-docker-containers

./install-docker-engenie.sh
./build-docker-containers scriptPath/../Apps
./deploy-docker-containers