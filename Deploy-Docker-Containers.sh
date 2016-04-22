cd "$1/Apps/Node-Proxy"
sudo docker build -t 'docker-build' .
sudo docker run --expose 3000 -p 8080:3000 -d -it --name 'Node-Proxy' 'docker-build'

cd "$1/Apps/Node-Server"
sudo docker build -t 'Docker-Build' .
sudo docker run -d -it --name 'Node-Server' 'Docker-Build' --link proxy:'Node-Proxy'
