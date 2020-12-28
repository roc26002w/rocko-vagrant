#!/usr/bin/env bash
echo '======= Install tmux.sh ======'

if [ -f ${HOME_PATH}/.features/tmux ]
then
    echo "tmux already installed."
    exit 0
fi

touch ${HOME_PATH}/.features/tmux

# Install tmux
apt-get install tmux

# setting tmux theme
git clone https://github.com/gpakosz/.tmux.git ${HOME_PATH}/.tmux

ln -fs ${HOME_PATH}/.config/rocko-vim/tmux/.tmux.conf ${HOME_PATH}/.tmux.conf

cp ${HOME_PATH}/.tmux/.tmux.conf.local ${HOME_PATH}/

git clone https://github.com/tmux-plugins/tpm ${HOME_PATH}/.tmux/plugins/tpm

chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/
