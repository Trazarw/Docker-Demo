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

spath=$(get_script_dir)
sudo rm "dcktmpfolder" -r
sudo mkdir "dcktmpfolder"
cd "dcktmpfolder"	
cd "$spath/DockerFiles/Client/"
sudo docker build -t 'my-python-app' .
sudo docker run -it --rm --name 'my-running-app-01' 'my-python-app'

sudo rm "dcktmpfolder" -r
sudo mkdir "dcktmpfolder"
cd "dcktmpfolder"	
cd "$spath/DockerFiles/Server/"
sudo docker build -t 'my-node-app' .
sudo docker run -it --rm --name 'my-running-app-02' 'my-node-app'

