#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install -y docker.io docker-compose 
sudo systemctl start docker
sudo systemctl enable docker
sudo docker volume create portainer_data
sudo docker run -d -p 8000:8000 -p 9000:9000 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

echo "Pontainer agora está instalado e em execução."
echo "Você pode acessá-lo em http://seu_url:9000"
echo "Nome de usuário padrão: admin"
echo "Senha padrão: password"
