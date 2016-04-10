sudo rm "dcktmpfolder" -r
sudo mkdir "dcktmpfolder"
cd "dcktmpfolder"	
cd "$1/DockerFiles/Client/"

sudo docker build -t 'my-python-app' .
sudo docker run -it --rm --name 'my-running-app-01' 'my-python-app' -p 80:5000
 
sudo rm "dcktmpfolder" -r
sudo mkdir "dcktmpfolder"
cd "dcktmpfolder"	
cd "$1/DockerFiles/Server/"
sudo docker build -t 'my-node-app' .
sudo docker run -it --rm --name 'my-running-app-02' 'my-node-app' -p 81:5000
