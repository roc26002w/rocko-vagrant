#!/usr/bin/env bash

echo '======= Install docker.sh ======'

if [ -f ${HOME_PATH}/.features/docker ]
then
    echo "docker already installed."
    exit 0
fi

# Install docker-ce --old version
# apt install -y docker.io

# -- new install mehtod --
# remove depends if installed
# `for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done`
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do apt-get remove $pkg; done

# Add Docker's official GPG key:
apt-get update
apt-get install ca-certificates curl gnupg
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |  gpg --dearmor -o /etc/apt/keyrings/docker.gpg
chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
   tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update

apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

systemctl enable --now docker

# Enable user to run docker commands
usermod -aG docker ${USER_NAME}

touch ${HOME_PATH}/.features/docker
chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.features
