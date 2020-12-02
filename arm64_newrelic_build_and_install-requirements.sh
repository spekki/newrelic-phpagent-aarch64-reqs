#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

#Install GO

sudo snap install go --classic

sudo apt-get autoremove -y

sudo apt-get install -y libbz2-dev
sudo apt-get install -y libpcre3 libpcre3-dev
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libedit-dev
sudo apt-get install -y libjpeg-turbo8-dev
sudo apt-get install -y libmcrypt-dev
sudo apt-get install -y libpng-dev
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y libreadline-dev
sudo apt-get install -y libtidy-dev
sudo apt-get install -y libltdl-dev
sudo apt-get install -y libxml2-dev
sudo apt-get install -y libxslt-dev
sudo apt-get install -y libssl-dev
#headers

sudo apt-get install -y freetds-dev
sudo apt-get install -y libfreetype6-dev
sudo apt-get install -y apache2-dev
sudo apt-get install -y libmemcached-dev

sudo apt install -y mariadb-server
sudo apt install -y mariadb-client
sudo apt install -y libmariadb-dev
sudo apt install -y libmariadb-dev-compat
sudo apt-get install -y libmariadbclient18

sudo apt-get install libpam0g-dev -y

# PHP 7.4 not needed as ansible installs this with correct/required version numbering already
# Uncomment correct line if php installation needed

sudo apt-get update
sudo apt -y install software-properties-common
#sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update

sudo apt-get install -y postgresql-server-dev-10

#sudo apt-get install -y php7.4
sudo apt-get install -y libpq-dev

sudo apt-get install -y libsqlite3-dev

git clone https://github.com/newrelic/newrelic-php-agent.git ~/newrelic-php-agent
make 

sudo cp ./bin/daemon /usr/bin/newrelic-daemon

#Do rest by hand for now (ansible)
