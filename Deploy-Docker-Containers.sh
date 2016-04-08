chmod 555 Utility
./Utility
cdir=$(get_script_dir)

#Create the folder to contain the Docker build and move the terminal to the to it
mkdir "dcktmpfolder"
cd "dcktmpfolder"

#Create the server docker build and run it
echo "yo"
cd cdir "$cdir/DockerFiles/Server/"
sudo docker build -t 'my-python-app' .
sudo docker run -it --rm --name 'my-running-app' 'my-python-app'
cd ..

#Create the client docker build and run it
#cd ".\DockerFiles\Client"
#docker build -t "docker-client-build-image" .
#sudo docker run "docker-client-build-image" --net bridge
#cd "cd .."
 