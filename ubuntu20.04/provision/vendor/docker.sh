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
apt install -y docker.io
systemctl enable --now docker

# Enable vagrant user to run docker commands
usermod -aG docker vagrant
