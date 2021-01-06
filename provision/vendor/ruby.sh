#!/usr/bin/env bash

echo '======= Install ruby.sh ======'
if [ -f ${HOME_PATH}/.features/ruby ]
then
    echo "ruby already installed."
    exit 0
fi

# install rbenv dependency
apt-get install -y libreadline-dev zlib1g-dev

# install rbenv
su ${USER_NAME} -c "git clone https://github.com/rbenv/rbenv.git ${HOME_PATH}/.rbenv"
su ${USER_NAME} -c "cd ${HOME_PATH}/.rbenv && src/configure && make -C src"
su ${USER_NAME} -c "mkdir -p \"$(rbenv root)\"/plugins"
su ${USER_NAME} -c "git clone https://github.com/rbenv/ruby-build.git \"$(rbenv root)\"/plugins/ruby-build"
su ${USER_NAME} -c "${HOME_PATH}/.rbenv/bin/rbenv init"
su ${USER_NAME} -c "${HOME_PATH}/.rbenv/bin/rbenv install 2.6.3"
su ${USER_NAME} -c "${HOME_PATH}/.rbenv/bin/rbenv global 2.6.3"

su ${USER_NAME} -c "gem install neovim"

touch ${HOME_PATH}/.features/ruby
chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.features
