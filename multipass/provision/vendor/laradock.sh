#!/usr/bin/env bash

echo '======= Install laradock ======'
if [ -f /home/ubuntu/.features/laradock ]
then
    echo "laradock already installed."
    exit 0
fi

touch /home/ubuntu/.features/laradock

chown -Rf ubuntu:ubuntu /home/ubuntu/.features

# install laradock

git clone https://github.com/laradock/laradock.git /home/ubuntu/code/laradock

cp /home/ubuntu/code/laradock/env-example /home/ubuntu/code/laradock/.env

chown ubuntu:ubuntu -R /home/ubuntu/code/laradock
