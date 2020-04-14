#!/usr/bin/env bash

echo '======= Install go v1.14.2 ======'
if [ -f /home/vagrant/.features/go ]
then
    echo "go already installed."
    exit 0
fi

touch /home/vagrant/.features/go
chown -Rf vagrant:vagrant /home/vagrant/.features

# install go
wget -qO- https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz  | tar xvz - -C /tmp/

mv /tmp/go /usr/local
