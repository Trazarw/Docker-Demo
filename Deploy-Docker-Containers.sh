cd "$1/Apps/Node-Proxy"
sudo docker build -t 'proxy-docker-build' .
sudo docker run --expose 4000 -p 8080:4000 -d -it --name 'Node-Proxy' 'proxy-docker-build' 
#-c "npm install sync-request"

cd "$1/Apps/Node-Server"
sudo docker build -t 'server-docker-build' .
sudo docker run --expose 3000 -p 8081:3000 -d -it --name 'Node-Server' 'server-docker-build'

#--link 'Node-Proxy':'Proxy'
