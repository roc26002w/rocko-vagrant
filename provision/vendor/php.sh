#!/usr/bin/env bash

echo '======= Install php.sh ======'
if [ -f /home/vagrant/.features/php ]
then
    echo "php 7.4 already installed."
    exit 0
fi

touch /home/vagrant/.features/php
chown -Rf vagrant:vagrant /home/vagrant/.features

apt-add-repository ppa:ondrej/php -y

# Update Package Lists
apt-get update

# Install Generic PHP packages
apt-get install -y --allow-change-held-packages \
php-imagick php-memcached php-redis php-xdebug php-dev

# PHP 7.4
apt-get install -y --allow-change-held-packages \
php7.4 php7.4-bcmath php7.4-bz2 php7.4-cgi php7.4-cli php7.4-common php7.4-curl php7.4-dba php7.4-dev \
php7.4-enchant php7.4-fpm php7.4-gd php7.4-gmp php7.4-imap php7.4-interbase php7.4-intl php7.4-json php7.4-ldap \
php7.4-mbstring php7.4-mysql php7.4-odbc php7.4-opcache php7.4-pgsql php7.4-phpdbg php7.4-pspell php7.4-readline \
php7.4-snmp php7.4-soap php7.4-sqlite3 php7.4-sybase php7.4-tidy php7.4-xml php7.4-xmlrpc php7.4-xsl php7.4-zip

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Set Some PHP CLI Settings
sudo sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.4/cli/php.ini
sudo sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.4/cli/php.ini
sudo sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.4/cli/php.ini
sudo sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.4/cli/php.ini
