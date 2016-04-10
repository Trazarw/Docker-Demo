sudo rm "dcktmpfolder" -r
sudo mkdir "dcktmpfolder"
cd "dcktmpfolder$1/Apps/Node/"

sudo docker build -t 'python-app' .
sudo docker run -P -it --rm --name 'running-01' 'python-app'
 
sudo rm "dcktmpfolder" -r
sudo mkdir "dcktmpfolder"	
cd "dcktmpfolder$1/DockerFiles/Server/"

sudo docker build -t 'node-app' .
sudo docker run -it --rm --name 'running-02' 'node-app'
