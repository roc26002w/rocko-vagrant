#!/usr/bin/env bash

echo '======= Install init.sh ======'

mkdir ${HOME_PATH}/.features

apt-get update

apt-get install -y curl \
                   htop \
                   silversearcher-ag \
                   tig \
                   ctags \
                   zsh \
                   git \
                   git-lfs \
                   unzip

mkdir ${HOME_PATH}/code
chown -R ${USER_NAME}:${USER_NAME} ${HOME_PATH}/code

# auto gen ssh key
ssh-keygen -f ${HOME}/.ssh/id_rsa -t rsa -N ''

git config --global user.email "${GIT_USER_EMAIL}"
git config --global user.name "${GIT_USER_NAME}"
