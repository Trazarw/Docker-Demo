get_script_dir () {
     SOURCE="${BASH_SOURCE[0]}"
     # While $SOURCE is a symlink, resolve it
     while [ -h "$SOURCE" ]; do
          DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
          SOURCE="$( readlink "$SOURCE" )"
          # If $SOURCE was a relative symlink (so no "/" as prefix, need to resolve it relative to the symlink base directory
          [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
     done
     DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
     echo "$DIR"
}

	path = $(get_script_dir)
	sudo rm "dcktmpfolder" -r
	sudo mkdir "dcktmpfolder"
	cd "dcktmpfolder"	
	cd "$path/DockerFiles/Server/"
	sudo docker build -t 'my-python-app' .
	sudo docker run -it --rm --name 'my-running-app' 'my-python-app'
#Create the folder to contain the Docker build and move the terminal to the to it


#Create the server docker build and run it


#Create the client docker build and run it
#cd ".\DockerFiles\Client"
#docker build -t "docker-client-build-image" .
#sudo docker run "docker-client-build-image" --net bridge
#cd "cd .."
 