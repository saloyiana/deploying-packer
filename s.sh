#!/bin/bash
apt update -y
# sudo apt install docker.io
apt install wget -y
wget https://releases.hashicorp.com/packer/0.9.0/packer_0.9.0_linux_386.zip -y
apt-get install unzip -y 
unzip packer_0.9.0_linux_386.zip -y
export PATH=$PATH:~/packer/
packer

