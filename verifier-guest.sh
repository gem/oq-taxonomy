#!/bin/bash

BRANCH_ID="$1"
DB_PASSWORD="$2"
HOST_SMTP="$3"
NO_EXEC_TEST="$4"

#display each command before executing it
set -x
. .gem_init.sh

#apt-get update/upgrade
sudo apt-get -y update
sudo apt-get -y upgrade

#install git and ca-certificates
sudo apt-get -y install git ca-certificates wget
cd $GEM_GIT_PACKAGE
cp .env-sample .env 

inst_docker () {
    # install requirements for docker
    sudo apt-get -y install apt-transport-https ca-certificates curl \
         gnupg lsb-release
    # install docker-ce and docker-compose
    # sudo apt-get -y remove docker docker-engine docker.io containerd runc
    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo \
    "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update
    sudo apt-get -y install docker-ce docker-ce-cli containerd.io
    # install stable release of docker-compose
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    # Add user glossary to group docker
    sudo usermod -G docker glossary
}

#installation of docker and docker-compose
inst_docker

#poweron of docker-compose infrasctructure
CURRENT_UID=$(id -u):$(id -g) docker-compose up -d db
sleep 60
docker cp ./taxonomy.sql db:/tmp/taxonomy.sql
CURRENT_UID=$(id -u):$(id -g) docker-compose exec db mysql -u root --password="PASSWORD" < /tmp/taxonomy.sql
CURRENT_UID=$(id -u):$(id -g) docker-compose down
CURRENT_UID=$(id -u):$(id -g) docker-compose up -d
sleep 60





