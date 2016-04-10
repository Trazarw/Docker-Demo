sudo rm "dcktmpfolder"
sudo mkdir "dcktmpfolder"
cd "$1/Apps/Node/"

sudo docker build -t 'node-app' .
sudo docker run -P -it --rm --name 'running-01' 'node-app'
 
#sudo rm "dcktmpfolder" -r
#sudo mkdir "dcktmpfolder"
#cd "dcktmpfolder"	
#cd "$1/Apps/Phyton/"

#sudo docker build -t 'phyton-app' .
#sudo docker run -it --rm --name 'running-02' 'phyton-app'
