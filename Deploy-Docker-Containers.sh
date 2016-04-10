sudo rm "dcktmpfolder" -r
sudo mkdir "dcktmpfolder"
cd "dcktmpfolder"	
cd "$1/Apps/Node/"

sudo docker build -t 'python-app' .
sudo docker run -P -it --rm --name 'python-app-container'
 
sudo rm "dcktmpfolder" -r
sudo mkdir "dcktmpfolder"
cd "dcktmpfolder"	
cd "$1/Apps/Phyton/"
sudo docker build -t 'node-app' .
sudo docker run -it --rm --name 'node-app-container'
