echo '======= Install python.sh ======'
if [ -f /home/vagrant/.features/python ]
then
    echo "python already installed."
    exit 0
fi

touch /home/vagrant/.features/python
chown -Rf vagrant:vagrant /home/vagrant/.features

apt-get install -y software-properties-common

add-apt-repository ppa:python-ppa/stable

apt-get update

apt-get install -y python3-dev \
                   python3-pip \
                   python3-venv \
                   python-msgpack \
                   build-essential \
                   libssl-dev \
                   libffi-dev

mkdir /home/vagrant/.env
mkdir /home/vagrant/.env/python
python3 -m venv /home/vagrant/.env/python
source /home/vagrant/.env/python/bin/activate

chown -R vagrant:vagrant /home/vagrant/.env
