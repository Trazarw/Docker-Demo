sudo rm "dcktmpfolder" -r
sudo mkdir "dcktmpfolder"
cd "dcktmpfolder"	
cd "$1/DockerFiles/Client/"

sudo docker build -t 'my-python-app' .
sudo docker run -it --rm --name 'my-running-app-01' 'my-python-app'

sudo rm "dcktmpfolder" -r
sudo mkdir "dcktmpfolder"
cd "dcktmpfolder"	
cd "$1/DockerFiles/Server/"
sudo docker build -t 'my-node-app' .
sudo docker run -it --rm --name 'my-running-app-02' 'my-node-app'

