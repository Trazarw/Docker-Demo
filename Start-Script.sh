

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