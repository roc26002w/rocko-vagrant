#!/usr/bin/env bash

echo '======= Install node.sh ======'
if [ -f /home/vagrant/.features/node ]
then
    echo "node already installed."
    exit 0
fi

touch /home/vagrant/.features/node
chown -Rf vagrant:vagrant /home/vagrant/.features

curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.35.2/install.sh -o /home/vagrant/install_nvm.sh

chown -f vagrant:vagrant /home/vagrant/install_nvm.sh
su - vagrant -c 'sh /home/vagrant/install_nvm.sh'

rm -rf /home/vagrant/install_nvm.sh

echo 'export NVM_DIR="/home/vagrant/.nvm"' >> /home/vagrant/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm' >> /home/vagrant/.zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> /home/vagrant/.zshrc

su - vagrant -c 'source /home/vagrant/.zshrc && nvm install 10'
