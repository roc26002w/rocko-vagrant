#!/usr/bin/env bash

echo '======= Install microk8s ======'
if [ -f /home/ubuntu/.features/microk8s ]
then
    echo "microk8s already installed."
    exit 0
fi

touch /home/ubuntu/.features/microk8s
chown -Rf ubuntu:ubuntu /home/ubuntu/.features

# install microk8s

snap install microk8s --classic

microk8s status --wait-ready

microk8s stop
