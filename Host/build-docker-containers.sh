cd "$1/Node-Server"
sudo docker build -t 'server-build' .

cd "$1/Node-Proxy"
sudo docker build -t 'proxy-build' .
