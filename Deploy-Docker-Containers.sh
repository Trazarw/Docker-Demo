#Create the folder to contain the Docker build and move the terminal to the to it
sudo mkdir "dcktmpfolder"
cd "dcktmpfolder"

#Create the server docker build and run it
cd "$(dirname "DockerFiles/Server/'")"
sudo docker build -t 'my-python-app' .
sudo docker run -it --rm --name 'my-running-app' 'my-python-app'
cd ..

#Create the client docker build and run it
#cd ".\DockerFiles\Client"
#docker build -t "docker-client-build-image" .
#sudo docker run "docker-client-build-image" --net bridge
#cd "cd .."
 