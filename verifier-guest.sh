#!/bin/bash

BRANCH_ID="$1"
DB_PASSWORD="$2"
NO_EXEC_TEST="$3"
HOST_SMTP="$4"

#display each command before executing it
set -x
. .gem_init.sh

#apt-get update/upgrade
sudo apt-get -y update
sudo apt-get -y upgrade

#install apache and addictions php
sudo apt-get -y install apache2 libapache2-mod-php7.0 php7.0-mysql php7.0-gd php7.0-mcrypt php7.0-mbstring php7.0-zip php7.0-xml

#activated mod_rewrite 
sudo a2enmod rewrite

#add override all for /var/www/html
sudo cp /etc/apache2/apache2.conf /etc/apache2/apache2.conf.$GEM_GIT_PACKAGE
sudo sed -i 's@\(<Directory /var/www/>\)@<Directory /var/www/html/>\n    Options Indexes FollowSymLinks\n    AllowOverride all\n    Require all granted\n</Directory>\n\n\1@g' /etc/apache2/apache2.conf

#support mysqli
sudo phpenmod mysqli

#restart apache
sudo service apache2 restart

#install git and ca-certificates
sudo apt-get -y install git ca-certificates wget

#
#for help on this procedure visit https://help.ubuntu.com/community/Joomla
#
#download and unzip new version cms for official repo 
#
NUM_VER="3.6.5"
sudo wget https://github.com/joomla/joomla-cms/releases/download/${NUM_VER}/Joomla_${NUM_VER}-Stable-Full_Package.zip
sudo apt-get install unzip
sudo unzip -o Joomla_${NUM_VER}-Stable-Full_Package.zip -d /var/www/html

#install mysql-server and create db
echo mysql-server mysql-server/root_password password "$DB_PASSWORD" | sudo debconf-set-selections
echo mysql-server mysql-server/root_password_again password "$DB_PASSWORD" | sudo debconf-set-selections
export DEBIAN_FRONTEND=noninteractive
sudo -E apt-get -q -y install mysql-server
echo "drop database IF EXISTS taxonomy" | mysql -u root --password="$DB_PASSWORD"
echo "create database taxonomy" | mysql -u root --password="$DB_PASSWORD"
#Import sql to mysql
mysql -u root --password="$DB_PASSWORD" taxonomy < $HOME/$GEM_GIT_PACKAGE/taxonomy.sql

#copy folder $GEM_GIT_PACKAGE from home lxc to /var/www/html
sudo cp -R $HOME/$GEM_GIT_PACKAGE/html/* $HOME/$GEM_GIT_PACKAGE/html/.htaccess /var/www/html

#rename conf and insert variable used
if [ ! -f html/configuration.php ] ; then
    NEW_SALT=$(cat /dev/urandom | tr -dc "[:alnum:]" | fold -w 16 | head -n 1)
    sudo "sed \"s/\(^[ 	]\+public \$secret = '\)[^']\+\(';\)/\1${NEW_SALT}\2/g;\
              s/\(^[ 	]\+public \$smtphost = '\)[^']\+\(';\)/\1${HOST_SMTP}\2/g;\" <$HOME/oq-taxonomy/configuration.php.tmpl >/var/www/html/configuration.php"
fi

#delete setup installation and zip downloaded
sudo rm -rf /var/www/html/installation
sudo rm Joomla_${NUM_VER}-Stable-Full_Package.zip

#set permissions /var/www/html
sudo chown -R www-data.www-data /var/www/html

# deleted index.html from /var/www/html
sudo rm /var/www/html/index.html
sudo rm -rf /var/www/html/images/sampledata
sudo rm -rf /var/www/html/images/banners
sudo rm -rf /var/www/html/images/headers

# sleep 40000
cd ~

#function complete procedure for tests
exec_test () {    
    #install selenium,pip,geckodriver,clone oq-moon and execute tests with nose 
    sudo apt-get -y install python-pip
    sudo pip install --upgrade pip
    sudo pip install nose
    sudo pip install -U selenium==3.0.1
    wget http://ftp.openquake.org/mirror/mozilla/geckodriver-latest-linux64.tar.gz ; tar zxvf geckodriver-latest-linux64.tar.gz ; sudo cp geckodriver /usr/local/bin

    cp $GEM_GIT_PACKAGE/openquake/taxonomy/test/config/moon_config.py.tmpl $GEM_GIT_PACKAGE/openquake/taxonomy/test/config/moon_config.py
    git clone -b "$BRANCH_ID" --depth=1  $GEM_GIT_REPO/oq-moon.git || git clone --depth=1 $GEM_GIT_REPO/oq-moon.git

    export DISPLAY=:1
    export PYTHONPATH=oq-moon:$GEM_GIT_PACKAGE:$GEM_GIT_PACKAGE/openquake/taxonomy/test/config
    python -m openquake.moon.nose_runner --failurecatcher prod -s -v --with-xunit --xunit-file=xunit-platform-prod.xml $GEM_GIT_PACKAGE/openquake/taxonomy/test || true
    # sleep 40000 || true
}

if [ "$NO_EXEC_TEST" != "notest" ] ; then
    exec_test
fi
