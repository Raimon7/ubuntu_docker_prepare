#!/bin/bash

apt update && apt upgrade -y
apt install mc htop iftop iotop sysstat apt-transport-https ca-certificates curl software-properties-common nethogs  gnupg-agent lsof fail2ban -y
apt autoremove -y && apt autoclean -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update && apt-get -y install docker-ce docker-compose

docker version
