#!/usr/bin/env bash

echo '======= Install docker-compose.sh ======'


apt install -y docker-compose

#Install docker-compose official git repository
# curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# chmod +x /usr/local/bin/docker-compose