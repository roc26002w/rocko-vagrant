echo '======= Install python.sh ======'
if [ -f /home/ubuntu/.features/python ]
then
    echo "python already installed."
    exit 0
fi

touch /home/ubuntu/.features/python
chown -Rf ubuntu:ubuntu /home/ubuntu/.features

apt-get install -y software-properties-common

add-apt-repository ppa:python-ppa/stable

apt-get update

apt-get install -y python3-dev \
                   python3-pip \
                   python-msgpack \
                   build-essential \
                   libssl-dev \
                   libffi-dev

mkdir /home/ubuntu/.env
mkdir /home/ubuntu/.env/python

apt-get install -y python3-venv

python3 -m venv /home/ubuntu/.env/python
source /home/ubuntu/.env/python/bin/activate
pip install neovim

chown -R ubuntu:ubuntu /home/ubuntu/.env

