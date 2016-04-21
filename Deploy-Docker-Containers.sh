rm "dcktmpfolder"
mkdir "dcktmpfolder"
cd "$1/Apps/Node/"

docker build -t 'node-app' .
docker run -P --detach=false --name 'running-01' 'node-app'
	 
docker build -t 'node-app' .
docker run -P --detach=false --name 'running-02' 'node-app'
