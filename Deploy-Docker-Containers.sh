sudo rm "dcktmpfolder"
sudo mkdir "dcktmpfolder"
cd "$1/Apps/Node/"

sudo docker build -t 'node-app'
sudo docker run -p ´127.0.0.1:80:3000 -d -it --name 'running-01' 'node-app'

#sudo docker build -t 'node-app' .
#sudo docker run -P -d -it --name 'running-02' 'node-app' 