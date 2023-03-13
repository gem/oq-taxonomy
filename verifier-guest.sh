#!/bin/bash

BRANCH_ID="$1"
DB_PASSWORD="$2"
HOST_SMTP="$3"
NO_EXEC_TEST="$4"

#display each command before executing it
set -x
. .gem_init.sh

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
    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo \
    "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update
    sudo apt-get -y install docker-ce docker-ce-cli containerd.io
    # install stable release of docker-compose
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
}

#installation of docker and docker-compose
inst_docker
id

#power on of docker database
CURRENT_UID=$(id -u):$(id -g) docker-compose up -d db

sleep 10

#power on of all dockers
CURRENT_UID=$(id -u):$(id -g) docker-compose up -d

# sleep 10
 
sudo chown -R ubuntu:users $HOME/$GEM_GIT_PACKAGE/site
#while since apache is up
#while ! ps aux | grep apache; do echo "wait for apache be ready"; done

sleep 50

rm -rf $HOME/$GEM_GIT_PACKAGE/site/installation
rm -rf $HOME/$GEM_GIT_PACKAGE/site/images/sampledata
rm -rf $HOME/$GEM_GIT_PACKAGE/site/images/banners
rm -rf $HOME/$GEM_GIT_PACKAGE/site/images/headers
cp $HOME/$GEM_GIT_PACKAGE/configuration.php.tmpl $HOME/$GEM_GIT_PACKAGE/site/configuration.php

#copy folder $GEM_GIT_PACKAGE from home lxc to /var/www/html
cp -R $HOME/$GEM_GIT_PACKAGE/html/* $HOME/$GEM_GIT_PACKAGE/html/.htaccess $HOME/$GEM_GIT_PACKAGE/site
# cp -R $HOME/$GEM_GIT_PACKAGE/html/.htaccess $HOME/$GEM_GIT_PACKAGE/site
 
# import mysql db
# CURRENT_UID=$(id -u):$(id -g) docker-compose exec -T db mysql -u root --password="PASSWORD" taxonomy < ./taxonomy.sql
CURRENT_UID=$(id -u):$(id -g) docker-compose exec -T db mysql -u root --password="PASSWORD" taxonomy < ./taxonomy_to_import.sql

echo "Installation complete."

sleep 50000

#function complete procedure for tests
exec_test () {    
    #install selenium,pip,geckodriver,clone oq-moon and execute tests with nose 
    sudo apt-get -y install python-pip
    sudo pip install --default-timeout=100 --upgrade pip==20.3
    sudo pip install nose
    wget "https://ftp.openquake.org/common/selenium-deps"
    GEM_FIREFOX_VERSION="$(dpkg-query --show -f '${Version}' firefox)"
    . selenium-deps
    wget "https://ftp.openquake.org/mirror/mozilla/geckodriver-v${GEM_GECKODRIVER_VERSION}-linux64.tar.gz"
    tar zxvf "geckodriver-v${GEM_GECKODRIVER_VERSION}-linux64.tar.gz"
    sudo cp geckodriver /usr/local/bin
    sudo pip install -U selenium==${GEM_SELENIUM_VERSION}

    cp $HOME/$GEM_GIT_PACKAGE/openquake/taxonomy/test/config/moon_config.py.tmpl $HOME/$GEM_GIT_PACKAGE/openquake/taxonomy/test/config/moon_config.py
    github_key="$(ssh-keyscan -t rsa github.com)"
    if ! grep -q "$github_key" $HOME/.ssh/known_hosts; then
        echo "$github_key" >> $HOME/.ssh/known_hosts
    fi
    
    git clone -b "$BRANCH_ID" --depth=1  $GEM_GIT_REPO/oq-moon.git || git clone --depth=1 $GEM_GIT_REPO/oq-moon.git
    export DISPLAY=:1
    export PYTHONPATH=oq-moon:$HOME/$GEM_GIT_PACKAGE:$HOME/$GEM_GIT_PACKAGE/openquake/taxonomy/test/config

    python -m openquake.moon.nose_runner --failurecatcher prod -s -v --with-xunit --xunit-file=xunit-platform-prod.xml $HOME/$GEM_GIT_PACKAGE/openquake/taxonomy/test || true
    # sleep 40000 || true
}
 
if [ "$NO_EXEC_TEST" != "notest" ] ; then
    exec_test
fi

do_logs () {
    cd $HOME/$GEM_GIT_PACKAGE
    CURRENT_UID=$(id -u):$(id -g) docker-compose logs > $HOME/$GEM_GIT_PACKAGE/docker.log
}

do_logs
