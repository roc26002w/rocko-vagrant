#!/usr/bin/env bash

echo '======= Install laradock ======'
if [ -f /home/vagrant/.features/laradock ]
then
    echo "laradock already installed."
    exit 0
fi

touch /home/vagrant/.features/laradock

chown -Rf vagrant:vagrant /home/vagrant/.features

# install laradock

git clone https://github.com/laradock/laradock.git /home/vagrant/code/laradock

cp /home/vagrant/code/laradock/env-example /home/vagrant/code/laradock/.env

chown vagrant:vagrant -R /home/vagrant/code/laradock
