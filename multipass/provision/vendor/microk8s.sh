#!/usr/bin/env bash

echo '======= Install microk8s ======'
if [ -f ${HOME_PATH}/.features/microk8s ]
then
    echo "microk8s already installed."
    exit 0
fi

touch ${HOME_PATH}/.features/microk8s
chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.features

# install microk8s

snap install microk8s --classic

microk8s status --wait-ready

microk8s stop
