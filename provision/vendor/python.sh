echo '======= Install python.sh ======'
if [ -f ${HOME_PATH}/.features/python ]
then
    echo "python already installed."
    exit 0
fi

NEEDRESTART_MODE=a
DEBIAN_FRONTEND=noninteractive

touch ${HOME_PATH}/.features/python
chown -Rf ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.features

apt-get install -yqq software-properties-common

add-apt-repository ppa:deadsnakes/ppa -yqq

apt-get update

apt-get install -yqq python3-dev \
                   python3-pip \
                   python-msgpack \
                   build-essential \
                   libssl-dev \
                   libffi-dev

mkdir ${HOME_PATH}/.env
mkdir ${HOME_PATH}/.env/python

apt-get install -yqq python3-venv

python3 -m venv ${HOME_PATH}/.env/python
source ${HOME_PATH}/.env/python/bin/activate

chown -R ${USER_NAME}:${USER_NAME} ${HOME_PATH}/.env

su ${USER_NAME} -c "source ~/.zshrc && pip install neovim"
