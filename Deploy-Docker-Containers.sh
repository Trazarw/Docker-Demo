sudo rm "dcktmpfolder"
sudo mkdir "dcktmpfolder"
cd "$1/Apps/Node/"

sudo docker build -t 'node-app' .
sudo docker run -P -d -it --rm --name 'running-01' 'node-app'

sudo docker build -t 'node-app' .
sudo docker run -P -d -it --rm --name 'running-02' 'node-app' 