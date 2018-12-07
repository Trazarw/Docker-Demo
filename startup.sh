#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
	DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
	SOURCE="$( readlink "$SOURCE" )"
	[[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
scriptPath="$( cd -P "$( dirname "$SOURCE" )" && pwd )"


cd $scriptPath/Host

chmod 555 $scriptPath/Host/install-docker-engenie.sh
chmod 555 $scriptPath/Host//build-docker-containers.sh
chmod 555 $scriptPath/Host//deploy-docker-containers.sh

scriptPath/Host//install-docker-engenie.sh
scriptPath/Host/build-docker-containers $scriptPath/../Apps
scriptPath/Host//deploy-docker-containers