#!/bin/bash

BRANCH_ID="$1"
DB_PASSWORD="$2"
HOST_SMTP="$3"
NO_EXEC_TEST="$4"

#display each command before executing it
set -x
. .gem_init.sh

sudo apt-get -y --fix-missing update
sudo apt-get -y upgrade

#install git and ca-certificates
sudo apt-get -y install git ca-certificates wget
cd $GEM_GIT_PACKAGE
cp dev-env-sample .env 

inst_docker () {
    # install requirements for docker
    sudo apt-get -y install apt-transport-https ca-certificates curl \
         gnupg lsb-release

    # install docker-ce and docker-compose

    # Add Docker's official GPG key:
    sudo apt update
    sudo apt install -y ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc

    # Add the repository to Apt sources:
    sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/debian
Suites: $(. /etc/os-release && echo "$VERSION_CODENAME")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF

    sudo apt update

    # this are versions verified when we updates LXC infrastructure
    # Get:1 https://download.docker.com/...ble amd64 docker-ce-cli amd64 5:29.7.1-1~debian.13~trixie [17.0 MB]
    # Get:2 https://download.docker.com/...ble amd64 docker-ce amd64 5:29.7.1-1~debian.13~trixie [24.0 MB]
    # Get:3 https://download.docker.com/...ble amd64 docker-buildx-plugin amd64 0.36.0-1~debian.13~trixie [17.2 MB]          
    # Get:4 https://download.docker.com/...ble amd64 docker-ce-rootless-extras amd64 5:29.7.1-1~debian.13~trixie [10.2 MB]   
    # Get:5 https://download.docker.com/...ble amd64 docker-compose-plugin amd64 5.4.0-1~debian.13~trixie [11.1 MB]      
 
    sudo apt-get -y install containerd.io docker-ce-cli docker-ce docker-buildx-plugin docker-ce-rootless-extras docker-compose-plugin

    # use 'fuse-overlayfs' to run docker containers properly
    if [ "$USE_FUSE_OVERLAYFS" ]; then
        sudo apt install -y fuse-overlayfs
        sudo systemctl stop docker.socket docker
        sudo rm -rf /var/lib/containerd/io.containerd.snapshotter.v1.overlayfs/snapshots/*

        echo -e '{\n    "storage-driver": "fuse-overlayfs",\n    "iptables": false\n}' | sudo tee /etc/docker/daemon.json
        sudo systemctl start docker
    fi
}

#installation of docker and docker-compose
inst_docker
id

# sleep 5000000 || true
#power on of docker database
CURRENT_UID=$(id -u):$(id -g) docker compose up -d db

sleep 10

# Power on of all dockers
CURRENT_UID=$(id -u):$(id -g) docker compose up -d

sudo chown -R ubuntu:users $HOME/$GEM_GIT_PACKAGE/site
# while since apache is up
# while ! ps aux | grep apache; do echo "wait for apache be ready"; done

sleep 60

rm -rf $HOME/$GEM_GIT_PACKAGE/site/installation
rm -rf $HOME/$GEM_GIT_PACKAGE/site/images/sampledata
rm -rf $HOME/$GEM_GIT_PACKAGE/site/images/banners
rm -rf $HOME/$GEM_GIT_PACKAGE/site/images/headers
# cp $HOME/$GEM_GIT_PACKAGE/configuration.php.tmpl $HOME/$GEM_GIT_PACKAGE/site/configuration.php

# copy folder $GEM_GIT_PACKAGE from home lxc to /var/www/html
# cp -R $HOME/$GEM_GIT_PACKAGE/html/configuration.php $HOME/$GEM_GIT_PACKAGE/html/.htaccess $HOME/$GEM_GIT_PACKAGE/site
# cp -R $HOME/$GEM_GIT_PACKAGE/html/* $HOME/$GEM_GIT_PACKAGE/site

sudo apt-get install rsync
rsync -av $HOME/$GEM_GIT_PACKAGE/html_full/ $HOME/$GEM_GIT_PACKAGE/site/
cp $HOME/$GEM_GIT_PACKAGE/site/htaccess.txt $HOME/$GEM_GIT_PACKAGE/site/.htaccess
sleep 70
 
# import mysql db
# CURRENT_UID=$(id -u):$(id -g) docker-compose exec -T db mysql -u root --password="PASSWORD" taxonomy < ./taxonomy.sql
wget https://ftp.openquake.org/taxonomy/taxonomy4.tar.gz
tar zxf taxonomy4.tar.gz
CURRENT_UID=$(id -u):$(id -g) docker compose exec -T db mysql -u root --password="PASSWORD" taxonomy < ./taxonomy_to_import.sql
rm taxonomy4.tar.gz

echo "Installation complete."

# sleep 50000 || true

#function complete procedure for tests
exec_test () {    
    #install selenium,pip,geckodriver,clone oq-moon and execute tests with nose 

    sudo apt-get -y install python3-pip python3-venv
    python3 -m venv ../venv
    . ../venv/bin/activate
    pip install --upgrade pip
    # FIXME: will became pyproject.toml dependency
    pip install pytest
    wget "https://ftp.openquake.org/common/selenium-deps-2026"
    GEM_FIREFOX_VERSION="$(dpkg-query --show -f '${Version}' firefox)"
    . selenium-deps-2026
    wget "https://ftp.openquake.org/mirror/mozilla/geckodriver-v${GEM_GECKODRIVER_VERSION}-linux64.tar.gz"
    tar zxvf "geckodriver-v${GEM_GECKODRIVER_VERSION}-linux64.tar.gz"
    sudo cp geckodriver /usr/local/bin
    # FIXME: it is temporarily because selenium will became pyproject.toml dependency (with pytest)
    export GEM_SELENIUM_VERSION=4.46.0
    pip install -U selenium==${GEM_SELENIUM_VERSION}
    pip install requests

    cp $HOME/$GEM_GIT_PACKAGE/openquake/taxonomy/test/config/moon_config.py.tmpl $HOME/$GEM_GIT_PACKAGE/openquake/taxonomy/test/config/moon_config.py
    github_key="$(ssh-keyscan -t rsa github.com)"
    if ! grep -q "$github_key" $HOME/.ssh/known_hosts; then
        echo "$github_key" >> $HOME/.ssh/known_hosts
    fi
    
    git clone -b "$BRANCH_ID" --depth=1  $GEM_GIT_REPO/oq-moon.git || git clone --depth=1 $GEM_GIT_REPO/oq-moon.git
    export DISPLAY=:1
    export PYTHONPATH=oq-moon:$HOME/$GEM_GIT_PACKAGE:$HOME/$GEM_GIT_PACKAGE/openquake/taxonomy/test/config
    # python3 -m openquake.moon.nose_runner --failurecatcher prod -s -v --with-xunit --xunit-file=xunit-platform-prod.xml $HOME/$GEM_GIT_PACKAGE/openquake/taxonomy/test
    # sleep 40000 || true

    pytest --tb=short -vs  $HOME/$GEM_GIT_PACKAGE/openquake/taxonomy/test
}
 
if [ "$NO_EXEC_TEST" != "notest" ] ; then
    exec_test
fi

do_logs () {
    cd $HOME/$GEM_GIT_PACKAGE
    CURRENT_UID=$(id -u):$(id -g) docker compose logs > $HOME/$GEM_GIT_PACKAGE/docker.log
}

do_logs
