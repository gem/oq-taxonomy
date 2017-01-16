#!/bin/bash

branch_id="$1"
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

#copy gloss.sql to temp lxc
sudo cp -R $GEM_GIT_PACKAGE/gloss.sql /tmp

#install mysql-server and create db
echo mysql-server mysql-server/root_password password PASSWORD | sudo debconf-set-selections
echo mysql-server mysql-server/root_password_again password PASSWORD | sudo debconf-set-selections
export DEBIAN_FRONTEND=noninteractive
sudo -E apt-get -q -y install mysql-server
echo "create database gloss" | mysql -u root --password=PASSWORD

#Import sql to mysql
mysql -u root --password=PASSWORD gloss < /tmp/gloss.sql

#copy folder $GEM_GIT_PACKAGE from home lxc to /var/www/html
sudo cp -R $GEM_GIT_PACKAGE/* $GEM_GIT_PACKAGE/.htaccess /var/www/html

#set permissions /var/www/html
sudo chown -R www-data.www-data /var/www/html
cd /var/www/html
sudo wget https://github.com/joomla/joomla-cms/releases/download/3.6.5/Joomla_3.6.5-Stable-Full_Package.zip
sudo apt-get install unzip
sudo unzip Joomla_3.6.5-Stable-Full_Package.zip
sudo cp -Rf /home/ubuntu/oq-taxonomy/templates/protostar/index.php /var/www/html/templates/protostar/
sudo cp -Rf /home/ubuntu/oq-taxonomy/templates/protostar/css/template.css /var/www/html/templates/protostar/css/
sudo cp -Rf /home/ubuntu/oq-taxonomy/components/com_finder/views/search/tmpl/default.php /var/www/html/components/com_finder/views/search/tmpl/
sudo cp -Rf /home/ubuntu/oq-taxonomy/components/com_content/views/article/tmpl/default.php /var/www/html/components/com_content/views/article/tmpl/
sudo cp -Rf /home/ubuntu/oq-taxonomy/administrator/templates/isis/css/template.css /var/www/html/administrator/templates/isis/css/
sudo cp -Rf /home/ubuntu/oq-taxonomy/administrator/templates/isis/images/joomla.png /var/www/html/administrator/templates/isis/images/
sudo cp -Rf /home/ubuntu/oq-taxonomy/configuration.php /var/www/html/
sudo cp -Rf /home/ubuntu/oq-taxonomy/glossary-term /var/www/html/
sudo cp -Rf /home/ubuntu/oq-taxonomy/images/headers /var/www/html/images/
sudo rm -rf /var/www/html/installation

# deleted index.html from /var/www/html
sudo rm /var/www/html/index.html
sleep 40000

#install selenium,pip 
sudo apt-get -y install python-pip
sudo pip install --upgrade pip
sudo pip install nose
sudo pip install -U selenium==3.0.1
wget http://ftp.openquake.org/mirror/mozilla/geckodriver-latest-linux64.tar.gz ; tar zxvf geckodriver-latest-linux64.tar.gz ; sudo cp geckodriver /usr/local/bin

cp $GEM_GIT_PACKAGE/openquake/taxonomy/test/config/moon_config.py.tmpl $GEM_GIT_PACKAGE/openquake/taxonomy/test/config/moon_config.py
git clone -b "$branch_id" --depth=1  $GEM_GIT_REPO/oq-moon.git || git clone --depth=1 $GEM_GIT_REPO/oq-moon.git

export DISPLAY=:1
export PYTHONPATH=oq-moon:$GEM_GIT_PACKAGE:$GEM_GIT_PACKAGE/openquake/taxonomy/test/config
python -m openquake.moon.nose_runner --failurecatcher prod -s -v --with-xunit --xunit-file=xunit-platform-prod.xml $GEM_GIT_PACKAGE/openquake/taxonomy/test || true
# sleep 40000 || true

