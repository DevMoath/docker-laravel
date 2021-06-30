#!/usr/bin/env bash

set -e

BASE_URL="https://raw.githubusercontent.com/DevMoath/docker-compose-laravel/master"
RED="\033[1;31m"
GREEN="\033[1;32m"

if [[ -e docker-compose.yml || -e docker ]]; then
    echo -e "${RED}it seems you have 'docker-compose.yml' file or 'docker' directory, make sure you delete/rename it" >&2
    exit 1
fi

echo -e "${GREEN}Download docker-compose.yml file" >&2

curl -fsSL "${BASE_URL}/docker-compose.yml" > docker-compose.yml

echo -e "${GREEN}Create docker/nginx directory" >&2

mkdir -p docker/nginx

echo -e "${GREEN}Download default.conf file" >&2

curl -fsSL "${BASE_URL}/docker/nginx/default.conf" > docker/nginx/default.conf

echo -e "${GREEN}Download general.conf file" >&2

curl -fsSL "${BASE_URL}/docker/nginx/general.conf" > docker/nginx/general.conf

echo -e "${GREEN}Download nginx.conf file" >&2

curl -fsSL "${BASE_URL}/docker/nginx/nginx.conf" > docker/nginx/nginx.conf

echo -e "${GREEN}Download php_fastcgi.conf file" >&2

curl -fsSL "${BASE_URL}/docker/nginx/php_fastcgi.conf" > docker/nginx/php_fastcgi.conf

echo -e "${GREEN}Done" >&2
