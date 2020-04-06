#!/usr/bin/env bash

echo '======= Install docker.sh ======'

if [ -f /home/vagrant/.features/docker ]
then
    echo "docker already installed."
    exit 0
fi

touch /home/vagrant/.features/docker
chown -Rf vagrant:vagrant /home/vagrant/.features

# Install docker-ce
curl -fsSL https://get.docker.com | bash -s

# Enable vagrant user to run docker commands
usermod -aG docker vagrant
