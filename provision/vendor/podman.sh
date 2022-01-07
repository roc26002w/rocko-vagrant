#!/usr/bin/env bash

echo '======= Install podman.sh ======'

if [ -f ${HOME_PATH}/.features/podman ]
then
    echo "podman already installed."
    exit 0
fi

# Install podman
apt install -y podman

touch ${HOME_PATH}/.features/podman
chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.features
