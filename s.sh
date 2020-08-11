#!/bin/bash
apt update
# sudo apt install docker.io
apt install wget
wget https://releases.hashicorp.com/packer/0.9.0/packer_0.9.0_linux_386.zip
apt-get install unzip
unzip packer_0.9.0_linux_386.zip
export PATH=$PATH:~/packer/
packer

