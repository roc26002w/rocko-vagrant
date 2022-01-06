#!/usr/bin/env bash

echo '======= Install helm ======'
if [ -f ${HOME_PATH}/.features/helm ]
then
    echo "helm already installed."
    exit 0
fi

touch ${HOME_PATH}/.features/helm
chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.features

# install helm
snap install helm --classic
