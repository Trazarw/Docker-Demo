sudo rm "dcktmpfolder"
sudo mkdir "dcktmpfolder"
cd "$1/Apps/Node/"

sudo docker build -t 'node-app' .

sudo docker run --expose 3000 -p 8080:3000 -d -it --name 'Node-Server' 'node-app'
#sudo docker run --expose 4000 -p 127.0.0.1:80:4000 -d -it --name 'Node-Client' 'node-app' --link 'Node-Server'

