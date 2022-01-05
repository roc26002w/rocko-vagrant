#!/usr/bin/env bash

echo '======= Install helm3 ======'
if [ -f ${HOME_PATH}/.features/helm3 ]
then
    echo "helm3 already installed."
    exit 0
fi

touch ${HOME_PATH}/.features/helm3
chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.features

# install helm3
snap install helm3 --classic
