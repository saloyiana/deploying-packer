#!/bin/bash
sudo apt update
sudo apt install docker.io
sudo apt install wget
wget https://releases.hashicorp.com/packer/0.9.0/packer_0.9.0_linux_386.zip
sudo apt-get install unzip
unzip packer_0.9.0_linux_386.zip
export PATH=$PATH:~/packer/
packer

