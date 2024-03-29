#!/usr/bin/env bash

echo '======= Install php.sh ======'
if [ -f ${HOME_PATH}/.features/php ]
then
    echo "php already installed."
    exit 0
fi

NEEDRESTART_MODE=a
DEBIAN_FRONTEND=noninteractive

apt-add-repository ppa:ondrej/php -y

# Update Package Lists
apt-get update

# Install Generic PHP packages
apt-get install -yqq --allow-change-held-packages \
php-imagick php-memcached php-redis php-xdebug php-dev

# PHP 8.3
apt-get install -yqq --allow-change-held-packages \
php8.3 php8.3-bcmath php8.3-bz2 php8.3-cgi php8.3-cli php8.3-common php8.3-curl php8.3-dba php8.3-dev \
php8.3-enchant php8.3-fpm php8.3-gd php8.3-gmp php8.3-imap php8.3-interbase php8.3-intl php8.3-ldap \
php8.3-mbstring php8.3-mysql php8.3-odbc php8.3-opcache php8.3-pgsql php8.3-phpdbg php8.3-pspell php8.3-readline \
php8.3-snmp php8.3-soap php8.3-sqlite3 php8.3-sybase php8.3-tidy php8.3-xml php8.3-xsl php8.3-zip

# PHP 8.2
apt-get install -yqq --allow-change-held-packages \
php8.2 php8.2-bcmath php8.2-bz2 php8.2-cgi php8.2-cli php8.2-common php8.2-curl php8.2-dba php8.2-dev \
php8.2-enchant php8.2-fpm php8.2-gd php8.2-gmp php8.2-imap php8.2-interbase php8.2-intl php8.2-ldap \
php8.2-mbstring php8.2-mysql php8.2-odbc php8.2-opcache php8.2-pgsql php8.2-phpdbg php8.2-pspell php8.2-readline \
php8.2-snmp php8.2-soap php8.2-sqlite3 php8.2-sybase php8.2-tidy php8.2-xml php8.2-xsl php8.2-zip php8.2-xdebug

# PHP 8.1
apt-get install -yqq --allow-change-held-packages \
php8.1 php8.1-bcmath php8.1-bz2 php8.1-cgi php8.1-cli php8.1-common php8.1-curl php8.1-dba php8.1-dev \
php8.1-enchant php8.1-fpm php8.1-gd php8.1-gmp php8.1-imap php8.1-interbase php8.1-intl php8.1-ldap \
php8.1-mbstring php8.1-mysql php8.1-odbc php8.1-opcache php8.1-pgsql php8.1-phpdbg php8.1-pspell php8.1-readline \
php8.1-snmp php8.1-soap php8.1-sqlite3 php8.1-sybase php8.1-tidy php8.1-xml php8.1-xsl php8.1-zip php8.1-xdebug

# PHP 8.0
apt-get install -yqq --allow-change-held-packages \
php8.0 php8.0-bcmath php8.0-bz2 php8.0-cgi php8.0-cli php8.0-common php8.0-curl php8.0-dba php8.0-dev \
php8.0-enchant php8.0-fpm php8.0-gd php8.0-gmp php8.0-imap php8.0-interbase php8.0-intl php8.0-ldap \
php8.0-mbstring php8.0-mysql php8.0-odbc php8.0-opcache php8.0-pgsql php8.0-phpdbg php8.0-pspell php8.0-readline \
php8.0-snmp php8.0-soap php8.0-sqlite3 php8.0-sybase php8.0-tidy php8.0-xml php8.0-xsl php8.0-zip php8.0-xdebug

# PHP 7.4
apt-get install -yqq --allow-change-held-packages \
php7.4 php7.4-bcmath php7.4-bz2 php7.4-cgi php7.4-cli php7.4-common php7.4-curl php7.4-dba php7.4-dev \
php7.4-enchant php7.4-fpm php7.4-gd php7.4-gmp php7.4-imap php7.4-interbase php7.4-intl php7.4-json php7.4-ldap \
php7.4-mbstring php7.4-mysql php7.4-odbc php7.4-opcache php7.4-pgsql php7.4-phpdbg php7.4-pspell php7.4-readline \
php7.4-snmp php7.4-soap php7.4-sqlite3 php7.4-sybase php7.4-tidy php7.4-xml php7.4-xmlrpc php7.4-xsl php7.4-zip  \
php7.4-xdebug

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Set Some PHP CLI Settings
sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.4/cli/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.4/cli/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.4/cli/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.4/cli/php.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/8.0/cli/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/8.0/cli/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/8.0/cli/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/8.0/cli/php.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/8.1/cli/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/8.1/cli/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/8.1/cli/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/8.1/cli/php.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/8.2/cli/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/8.2/cli/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/8.2/cli/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/8.2/cli/php.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/8.3/cli/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/8.3/cli/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/8.3/cli/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/8.3/cli/php.ini

# add pcov extentsions
# install php7.4 extentsions
pecl -d php_suffix=7.4 install pcov
pecl uninstall -r pcov
echo "extension=\"/usr/lib/php/20190902/pcov.so\"" > pcov.ini
cp pcov.ini /etc/php/7.4/mods-available/


# install php8.0 extentsions
pecl -d php_suffix=8.0 install pcov
pecl uninstall -r pcov
echo "extension=\"/usr/lib/php/20200930/pcov.so\"" > pcov.ini
cp pcov.ini /etc/php/8.0/mods-available/


# install php8.1 extentsions
pecl -d php_suffix=8.1 install pcov
pecl uninstall -r pcov
echo "extension=\"/usr/lib/php/20210902/pcov.so\"" > pcov.ini
cp pcov.ini /etc/php/8.1/mods-available/


# install php8.2 extentsions
pecl -d php_suffix=8.2 install pcov
pecl uninstall -r pcov
echo "extension=\"/usr/lib/php/20220829/pcov.so\"" > pcov.ini
cp pcov.ini /etc/php/8.2/mods-available/

rm pcov.ini

# enable xdebug
# phpenmod xdebug

# disable xdebug
# phpdismod xdebug

# enable pcov
# phpenmod pcov

# disable pcov
# phpdismod pcov

# set php7.4 to default
update-alternatives --set php /usr/bin/php8.2

touch ${HOME_PATH}/.features/php
chown -Rf ubuntu:ubuntu ${HOME_PATH}/.features
