#!/usr/bin/env bash

echo '======= Install init.sh ======'

mkdir ${HOME}/.features

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

mkdir ${HOME}/code

# auto gen ssh key
ssh-keygen -f ${HOME}/.ssh/id_rsa -t rsa -N ''

git config --global user.email "${GIT_USER_EMAIL}"
git config --global user.name "${GIT_USER_NAME}"
