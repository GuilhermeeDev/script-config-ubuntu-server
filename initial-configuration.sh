#!/bin/bash

# Instalação de pacotes iniciais
sudo apt install curl ca-certificates bridge-utils lshw iputils-ping git openssh-server \
openssh-client openssl software-properties-common linux-image-generic lsof jq ufw htop iotop ncdu tmux vim \
nmap fail2ban zip unzip nmap tcpdump dnsutils rsync -y 

# Restartando o SSH
sudo systemctl status ssh
sudo systemctl restart ssh
sudo systemctl stop ssh
sudo systemctl start ssh

# Desabilitando o Snapd
sudo systemctl stop snapd.service snapd.socket snapd.seeded.service
sudo systemctl disable snapd.service snapd.socket snapd.seeded.service
sudo systemctl mask snapd.service snapd.socket snapd.seeded.service

# Desabilitando Cloud-init
sudo systemctl stop cloud-init
sudo systemctl disable cloud-init
sudo systemctl mask cloud-init