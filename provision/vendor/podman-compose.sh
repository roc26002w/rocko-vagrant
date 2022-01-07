#!/usr/bin/env bash

echo '======= Install podman-compose.sh ======'

if [ -f ${HOME_PATH}/.features/podman-compose ]
then
    echo "podman-compose already installed."
    exit 0
fi

#Install podman-compose
pip3 install podman-compose

touch ${HOME_PATH}/.features/podman-compose
chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.features
