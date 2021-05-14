#!/usr/bin/env zsh

set -e

BASE_URL="https://raw.githubusercontent.com/DevMoath/docker-compose-laravel/master"

if [[ -e docker-compose.yml || -e docker ]]; then
    echo 'it seems you have "docker-compose.yml" file or "docker" directory, make sure you delete/rename it'
    exit 1
fi

curl -fsSL "${BASE_URL}/docker-compose.yml" > docker-compose.yml

mkdir -p docker/nginx

curl -fsSL "${BASE_URL}/docker/nginx/default.conf" > docker/nginx/default.conf

curl -fsSL "${BASE_URL}/docker/nginx/general.conf" > docker/nginx/general.conf

curl -fsSL "${BASE_URL}/docker/nginx/nginx.conf" > docker/nginx/nginx.conf

curl -fsSL "${BASE_URL}/docker/nginx/php_fastcgi.conf" > docker/nginx/php_fastcgi.conf
