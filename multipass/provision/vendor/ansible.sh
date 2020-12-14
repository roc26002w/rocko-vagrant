#!/usr/bin/env bash
echo '======= Install ansible.sh ======'

if [ -f /home/ubuntu/.features/ansible ]
then
    echo "ansible already installed."
    exit 0
fi

touch /home/ubuntu/.features/ansible

# Install ansible
apt-get install -y ansible

# Install python ansible
su ubuntu -C "pip install ansible"

chown -Rf ubuntu:ubuntu /home/ubuntu/
