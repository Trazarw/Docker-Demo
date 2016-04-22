cd "$1/Apps/Node-Proxy"
sudo docker build -t 'docker-build' .
sudo docker run --expose 3000 -p 8080:3000 -d -it --name 'Node-Proxy' 'docker-build' 
#-c "npm install sync-request"

cd "$1/Apps/Node-Server"
sudo docker build -t 'docker-build' .
sudo docker run -d -it --name 'Node-Server' 'docker-build' --net=host -p 8081:3000

#--link 'Node-Proxy':'Proxy'
