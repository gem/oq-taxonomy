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

#power on of docker-compose infrastructure
CURRENT_UID=$(id -u):$(id -g) docker-compose up -d db

sleep 10

CURRENT_UID=$(id -u):$(id -g) docker-compose up -d

sleep 10

sudo chown -R glossary:glossary $HOME/$GEM_GIT_PACKAGE/site

ls -lrt $HOME/$GEM_GIT_PACKAGE/site/*

rm -rf $HOME/$GEM_GIT_PACKAGE/site/installation
rm -rf $HOME/$GEM_GIT_PACKAGE/site/images/sampledata
rm -rf $HOME/$GEM_GIT_PACKAGE/site/images/banners
rm -rf $HOME/$GEM_GIT_PACKAGE/site/images/headers

sleep 10000


# sleep 20
# 
# CURRENT_UID=$(id -u):$(id -g) docker-compose down
# 
# #rename conf and insert variable used
# if [ ! -f $HOME/$GEM_GIT_PACKAGE/site/configuration.php ] ; then
#     NEW_SALT=$(cat /dev/urandom | tr -dc "[:alnum:]" | fold -w 16 | head -n 1)
#     cat $HOME/oq-taxonomy/configuration.php.tmpl | \
#         sed "s/\(^[ 	]\+public \$secret = '\)[^']\+\(';\)/\1${NEW_SALT}\2/g;\
#               s/\(^[ 	]\+public \$smtphost = '\)[^']\+\(';\)/\1${HOST_SMTP}\2/g;" | \
#         tee $HOME/$GEM_GIT_PACKAGE/site/configuration.php
# fi
# 
# # deleted index.html from /var/www/html
# # sudo rm $HOME/$GEM_GIT_PACKAGE/site/index.html
# 
# 
# sleep 5
# 
# CURRENT_UID=$(id -u):$(id -g) docker-compose up -d
# 
# 
# #copy folder $GEM_GIT_PACKAGE from home lxc to /var/www/html
# cp -R $HOME/$GEM_GIT_PACKAGE/html/* $HOME/$GEM_GIT_PACKAGE/html/.htaccess $HOME/$GEM_GIT_PACKAGE/site
# 
# # need to add check to mysql UP
# CURRENT_UID=$(id -u):$(id -g) docker-compose exec -T db mysql -u root --password="PASSWORD" taxonomy < ./taxonomy.sql
# CURRENT_UID=$(id -u):$(id -g) docker-compose down
# 
# sleep 5
# 
# cd ~
# 
# echo "Installation complete."
# 
# #function complete procedure for tests
# exec_test () {    
#     #install selenium,pip,geckodriver,clone oq-moon and execute tests with nose 
#     sudo apt-get -y install python-pip
#     sudo pip install --upgrade pip==20.3
#     sudo pip install nose
#     wget "http://ftp.openquake.org/common/selenium-deps"
#     GEM_FIREFOX_VERSION="$(dpkg-query --show -f '${Version}' firefox)"
#     . selenium-deps
#     wget "http://ftp.openquake.org/mirror/mozilla/geckodriver-v${GEM_GECKODRIVER_VERSION}-linux64.tar.gz"
#     tar zxvf "geckodriver-v${GEM_GECKODRIVER_VERSION}-linux64.tar.gz"
#     sudo cp geckodriver /usr/local/bin
#     sudo pip install -U selenium==${GEM_SELENIUM_VERSION}
# 
#     cp $GEM_GIT_PACKAGE/openquake/taxonomy/test/config/moon_config.py.tmpl $HOME/$GEM_GIT_PACKAGE/openquake/taxonomy/test/config/moon_config.py
#     git clone -b "$BRANCH_ID" --depth=1  $GEM_GIT_REPO/oq-moon.git || git clone --depth=1 $GEM_GIT_REPO/oq-moon.git
#     export DISPLAY=:1
#     export PYTHONPATH=oq-moon:$HOME/$GEM_GIT_PACKAGE:$HOME/$GEM_GIT_PACKAGE/openquake/taxonomy/test/config
# 
#     python -m openquake.moon.nose_runner --failurecatcher prod -s -v --with-xunit --xunit-file=xunit-platform-prod.xml $HOME/$GEM_GIT_PACKAGE/openquake/taxonomy/test || true
#     sleep 40000 || true
# }
# 
# if [ "$NO_EXEC_TEST" != "notest" ] ; then
#     exec_test
# fi
