#!/usr/bin/env bash

echo '======= Install laradock ======'
if [ -f ${HOME_PATH}/.features/laradock ]
then
    echo "laradock already installed."
    exit 0
fi


# install laradock
git clone https://github.com/laradock/laradock.git ${HOME_PATH}/code/laradock
cp ${HOME_PATH}/code/laradock/env-example ${HOME_PATH}/code/laradock/.env
chown ${USER_NAME}:${USER_NAME} -R ${HOME_PATH}/code/laradock

touch ${HOME_PATH}/.features/laradock
chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.features
