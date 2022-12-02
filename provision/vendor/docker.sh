#!/usr/bin/env bash

echo '======= Install docker.sh ======'

if [ -f ${HOME_PATH}/.features/docker ]
then
    echo "docker already installed."
    exit 0
fi

# Install docker-ce
apt install -y docker.io
systemctl enable --now docker

# Enable user to run docker commands
usermod -aG docker ${USER_NAME}

touch ${HOME_PATH}/.features/docker
chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.features
