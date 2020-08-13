#!/bin/bash
sudo apt update -y && sudo apt install -y curl vim jq git make docker.io
sudo usermod -aG docker ubuntu
docker run --name nginx -d -p 8080:80 nginx
