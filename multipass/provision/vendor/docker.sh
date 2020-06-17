#!/usr/bin/env bash

echo '======= Install docker.sh ======'

if [ -f /home/ubuntu/.features/docker ]
then
    echo "docker already installed."
    exit 0
fi

touch /home/ubuntu/.features/docker
chown -Rf ubuntu:ubuntu /home/ubuntu/.features

# Install docker-ce
apt install -y docker.io
systemctl enable --now docker

# Enable ubuntu user to run docker commands
usermod -aG docker ubuntu
