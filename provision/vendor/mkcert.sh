#!/usr/bin/env bash

echo '======= Install mkcert ======'
if [ -f ${HOME_PATH}/.features/mkcert ]
then
    echo "mkcert already installed."
    exit 0
fi

touch ${HOME_PATH}/.features/mkcert
chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.features

# install mkcert
curl -JLO "https://dl.filippo.io/mkcert/latest?for=linux/amd64"
chmod +x mkcert-v*-linux-amd64
sudo cp mkcert-v*-linux-amd64 /usr/local/bin/mkcert
rm -rf mkcert-v*-linux-amd64
