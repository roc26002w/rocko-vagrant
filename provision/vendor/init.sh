#!/usr/bin/env bash

echo '======= Install init.sh ======'

apt-get update

apt-get install -y curl \
                   htop \
                   silversearcher-ag \
                   tig \
                   exuberant-ctags \
                   zsh-common \
                   zsh-doc \
                   zip \
                   git \
                   git-lfs \
                   icdiff \
                   unzip

if [[ ! -d "${HOME_PATH}/code" ]]
then
  su - ${USER_NAME} -c "mkdir ${HOME_PATH}/code"
fi

if [[ ! -d "${HOME_PATH}/.features" ]]
then
  su - ${USER_NAME} -c "mkdir ${HOME_PATH}/.features"
fi
# auto gen ssh key
su - ${USER_NAME} -c "ssh-keygen -f ${HOME_PATH}/.ssh/id_rsa -t rsa -N ''"

su - ${USER_NAME} -c "git config --global user.email \"${GIT_USER_MAIL}\""
su - ${USER_NAME} -c "git config --global user.name \"${GIT_USER_NAME}\""
