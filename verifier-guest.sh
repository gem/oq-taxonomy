#!/bin/bash

#display each command before executing it
set -x

#go to home lxc
cd ~

#apt-get update/upgrade
sudo apt-get -y update
sudo apt-get -y upgrade
 
#install apache and addictions php
sudo apt-get -y install apache2 libapache2-mod-php7.0 php7.0-mysql php7.0-gd php7.0-mcrypt php7.0-mbstring php7.0-zip php7.0-xml

#activated mod_rewrite 
sudo a2enmod rewrite

#add override all for /var/www/html
sudo cp /etc/apache2/apache2.conf /etc/apache2/apache2.conf.glossary
sudo sed -i 's@\(<Directory /var/www/>\)@<Directory /var/www/html/>\n    Options Indexes FollowSymLinks\n    AllowOverride all\n    Require all granted\n</Directory>\n\n\1@g' /etc/apache2/apache2.conf

#support mysqli
sudo phpenmod mysqli

#restart apache
sudo service apache2 restart

#install git and ca-certificates
sudo apt-get -y install git ca-certificates

#copy gloss.sql to temp lxc
sudo cp -R glossary/gloss.sql /tmp

#install mysql-server and create db
echo mysql-server mysql-server/root_password password PASSWORD | sudo debconf-set-selections
echo mysql-server mysql-server/root_password_again password PASSWORD | sudo debconf-set-selections
export DEBIAN_FRONTEND=noninteractive
sudo -E apt-get -q -y install mysql-server
echo "create database gloss" | mysql -u root --password=PASSWORD

#Import sql to mysql
mysql -u root --password=PASSWORD gloss < /tmp/gloss.sql

#copy folder glossary from home lxc to /var/www/html
sudo cp -R glossary/* glossary/.htaccess /var/www/html

#set permissions /var/www/html
sudo chown -R www-data.www-data /var/www/html

#install selenium,pip 
sudo apt-get -y install python-pip wget
sudo pip install --upgrade pip
sudo pip install nose
sudo pip install -U selenium==3.0.1
wget http://ftp.openquake.org/mirror/mozilla/geckodriver-latest-linux64.tar.gz ; tar zxvf geckodriver-latest-linux64.tar.gz ; sudo cp geckodriver /usr/local/bin
export PYTHONPATH=$PWD/oq-moon:$PWD/glossary:$PWD/glossary/openquake/taxonomy/test/config
cp $PWD/glossary/openquake/taxonomy/test/config/moon_config.py.tmpl $PWD/glossary/openquake/taxonomy/test/config/moon_config.py
export DISPLAY=:1
git clone -b moon --depth=1  https://github.com/gem/oq-moon.git || git clone --depth=1  https://github.com/gem/oq-moon.git

# deleted index.html from /var/www/html
sudo rm /var/www/html/index.html

python -m openquake.moon.nose_runner --failurecatcher dev -v --with-xunit --xunit-file=xunit-platform-prod.xml $(pwd)/glossary/openquake/taxonomy/test || true

# python -m openquake.moon.nose_runner --failurecatcher dev -v --with-xunit --xunit-file=xunit-platform-prod.xml $(pwd)/glossary/openquake/taxonomy/test/base_test.py:TaxonomyTest.insert_term_test || true

# sleep 40000 || true
