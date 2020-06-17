#!/usr/bin/env bash

echo '======= Install node.sh ======'
if [ -f /home/ubuntu/.features/node ]
then
    echo "node already installed."
    exit 0
fi

touch /home/ubuntu/.features/node
chown -Rf ubuntu:ubuntu /home/ubuntu/.features

curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.35.2/install.sh -o /home/ubuntu/install_nvm.sh

chown -f ubuntu:ubuntu /home/ubuntu/install_nvm.sh
su - ubuntu -c 'sh /home/ubuntu/install_nvm.sh'

rm -rf /home/ubuntu/install_nvm.sh

echo 'export NVM_DIR="/home/ubuntu/.nvm"' >> /home/ubuntu/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm' >> /home/ubuntu/.zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> /home/ubuntu/.zshrc

su - ubuntu -c 'source /home/ubuntu/.zshrc && nvm install 10'

npm

npm install -g neovim
