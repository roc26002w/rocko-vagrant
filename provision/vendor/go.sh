#!/usr/bin/env bash

echo '======= Install go v1.14.2 ======'
if [ -f ${HOME_PATH}/.features/go ]
then
    echo "go already installed."
    exit 0
fi

touch ${HOME_PATH}/.features/go
chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.features

#
# snap install go --classic
#

# install new release go
wget -qO- "https://golang.org/dl/$(curl https://go.dev/VERSION\?m\=text).linux-$(dpkg --print-architecture).tar.gz"  | tar -zxvf - -C /tmp
mv /tmp/go /usr/local
export PATH=$PATH:/usr/local/go/bin

# check version
go version
