#!/usr/bin/env bash

echo '======= Install go v1.14.2 ======'
if [ -f /home/ubuntu/.features/go ]
then
    echo "go already installed."
    exit 0
fi

touch /home/ubuntu/.features/go
chown -Rf ubuntu:ubuntu /home/ubuntu/.features

# install go
wget -qO- https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz  | tar -zxvf - -C /tmp/

mv /tmp/go /usr/local
