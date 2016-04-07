#Recreate the folder to contain the Docker build and move the terminal to the to it
sudo mkdir "dcktmpfolder"
cd "dcktmpfolder"

#Create the server docker build and run it
cd "GC-Infra\Docker Files\Server"
docker build -t "docker-server-build" .
sudo docker run "docker-server-build" --net bridge
cd "cd .."

#Create the client docker build and run it
cd "GC-Infra\Docker Files\Client"
docker build -t "docker-client-build" .
sudo docker run "docker-client-build" --net bridge
cd "cd .."