sudo docker run --expose 4000 -p 8080:4000 -d -it --name 'Node-Proxy' 'proxy-docker-build' 
sudo docker run --expose 3000 -p 8081:3000 -d -it --name 'Node-Server' 'server-docker-build'