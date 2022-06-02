#!/usr/bin/env bash
echo '======= Install ansible.sh ======'

if [ -f ${HOME_PATH}/.features/ansible ]
then
    echo "ansible already installed."
    exit 0
fi

touch ${HOME_PATH}/.features/ansible

# Install ansible
apt-get install -y software-properties-common

apt-add-repository ppa:ansible/ansible -y

apt-get update
apt-get upgrade

apt-get install -y ansible python3-argcomplete

activate-global-python-argcomplete3

# Install python ansible
su ${USER_NAME} -c "pip install ansible"

chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/
