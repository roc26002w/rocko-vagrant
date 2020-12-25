#!/usr/bin/env bash

echo '======= Install init.sh ======'


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

su - ${USER_NAME} -c "mkdir ${HOME_PATH}/code"
su - ${USER_NAME} -c "mkdir ${HOME_PATH}/.features"
# auto gen ssh key
su - ${USER_NAME} -c "ssh-keygen -f ${HOME_PATH}/.ssh/id_rsa -t rsa -N ''"

su - ${USER_NAME} -c "git config --global user.email \"${GIT_USER_EMAIL}\""
su - ${USER_NAME} -c "git config --global user.name \"${GIT_USER_NAME}\""
