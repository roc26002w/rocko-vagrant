#!/usr/bin/env bash
echo '======= Install ansible.sh ======'

if [ -f ${HOME_PATH}/.features/ansible ]
then
    echo "ansible already installed."
    exit 0
fi

touch ${HOME_PATH}/.features/ansible

# Install ansible
apt-get install -y ansible

# Install python ansible
su ${USER_NAME} -c "pip install ansible"

chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/
