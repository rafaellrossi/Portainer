#!/bin/bash

sudo apt update 
sudo apt upgrade -y
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo docker volume create portainer_data
sudo docker run -d -p 8000:8000 -p 9000:9000 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

echo ""
echo "Pontainer agora está instalado e em execução."
echo "Você pode acessá-lo em http://<URL>:9000"
echo ""
