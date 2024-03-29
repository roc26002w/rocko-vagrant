#!/usr/bin/env bash

echo '======= Install node.sh ======'
if [ -f ${HOME_PATH}/.features/node ]
then
    echo "node already installed."
    exit 0
fi

touch ${HOME_PATH}/.features/node
chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.features

CURRENT_VERSION="$(curl -s https://api.github.com/repos/nvm-sh/nvm/releases/latest | grep tag_name | cut -d ':' -f2 | cut -d '"' -f2)"

# curl -sL https://raw.githubusercontent.com/creationix/nvm/${CURRENT_VERSION}/install.sh -o ${HOME_PATH}/install_nvm.sh
# chown -f ${USER_NAME}:${USER_NAME} ${HOME_PATH}/install_nvm.sh
# su - ${USER_NAME} -c "sh ${HOME_PATH}/install_nvm.sh"

su - ${USER_NAME} -c "curl -sL https://raw.githubusercontent.com/creationix/nvm/${CURRENT_VERSION}/install.sh | bash"

echo "export NVM_DIR=\"${HOME_PATH}/.nvm\"" >> ${HOME_PATH}/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm' >> ${HOME_PATH}/.zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> ${HOME_PATH}/.zshrc

su - ${USER_NAME} -c "source ${HOME_PATH}/.zshrc && nvm install --lts && nvm use --lts"
su - ${USER_NAME} -c "source ${HOME_PATH}/.zshrc && npm install -g neovim"
