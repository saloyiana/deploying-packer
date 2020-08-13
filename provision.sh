#!/bin/bash
sudo apt update -y && sudo apt install -y curl vim jq git make docker.io
sudo usermod -aG docker ubuntu
cd /home/ubuntu
mkdir nginx_home
chmod a+rwx nginx_home
sudo touch /etc/systemd/system/nginx.service
sudo chmod a+rw /etc/systemd/system/nginx.service
sudo docker pull nginx
cat <<EOF > /etc/systemd/system/nginx.service
[Unit]
Description=Nginx 
After=docker.service
[Service]
Type=simple
ExecStart=sudo docker container run -d --name nginx -p 80:8080 --restart=always -v /home/ubuntu/nginx_home:/var/nginx_home -v /run/docker.sock:/run/docker.sock nginx
[Install]
WantedBy=multi-user.target
EOF
sudo chmod a-w /etc/systemd/system/nginx.service
sudo systemctl daemon-reload
sudo systemctl enable nginx
sudo chmod a+rw /run/docker.sock
