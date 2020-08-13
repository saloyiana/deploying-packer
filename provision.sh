#!/bin/bash
sudo apt update -y && sudo apt install -y curl vim jq git make docker.io
sudo usermod -aG docker ubuntu
cd /home/ubuntu
mkdir nginx_home
chmod a+rwx nginx_home
sudo chown ubuntu:ubuntu /home/ubuntu/nginx_home
sudo touch /etc/systemd/system/nginx.service
sudo chmod a+rw /etc/systemd/system/nginx.service
cat <<EOF > /etc/systemd/system/nginx.service
[Unit]
Description=Nginx 
After=docker.service
[Service]
Type=simple
ExecStart=sudo docker container run -d --name nginx -p 80:8080 --restart=always -v /home/ubuntu/nginx_home/:/usr/share/nginx/html:ro nginx
[Install]
WantedBy=multi-user.target
EOF
sudo chmod a-xw /etc/systemd/system/nginx.service
sudo systemctl daemon-reload
sudo systemctl enable nginx
sudo systemctl start nginx
