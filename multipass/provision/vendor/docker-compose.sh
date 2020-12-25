#!/usr/bin/env bash

echo '======= Install docker-compose.sh ======'

#Install docker-compose official git repository

CURRENT_VERSION="$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep tag_name | cut -d ':' -f2 | cut -d '"' -f2)"

curl -L "https://github.com/docker/compose/releases/download/${CURRENT_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
