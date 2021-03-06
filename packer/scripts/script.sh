#!/bin/bash

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Use the following command to set up the stable repository
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the apt package index 
sudo apt-get update

# Install the latest version of Docker Engine
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y docker-ce docker-ce-cli containerd.io 

# Build image for packer
sudo docker image build -f /tmp/app/Dockerfile -t appdjango:1.0.0 /tmp/app/

# Run the container
sudo docker container run -d -p 80:8000 --restart=always appdjango:1.0.0 