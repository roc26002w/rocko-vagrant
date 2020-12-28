#!/usr/bin/env bash

echo '======= Install fzf.sh ======'
if [ -f ${HOME_PATH}/.features/fzf ]
then
    echo "fzf already installed."
    exit 0
fi

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ${HOME_PATH}/.fzf

chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.fzf

su ${USER_NAME} -c "${HOME_PATH}/.fzf/install --all"

touch ${HOME_PATH}/.features/fzf
chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.features
