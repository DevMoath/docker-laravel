#!/usr/bin/env zsh

set -e

BASE_URL="https://raw.githubusercontent.com/DevMoath/docker-compose-laravel/master"
GREEN="\e[32m"
NO_COLOR="\e[0m"
NEW_LINE="\n"
RED='\033[0;31m'

if [[ -e docker-compose.yml || -e docker ]]; then
    print "${NEW_LINE}${RED}it seems you have 'docker-compose.yml' file or 'docker' directory, make sure you delete/rename it${NO_COLOR}${NEW_LINE}"
    exit 1
fi

print "${NEW_LINE}${GREEN}Download docker-compose.yml file${NO_COLOR}${NEW_LINE}"

curl -fsSL "${BASE_URL}/docker-compose.yml" > docker-compose.yml

print "${NEW_LINE}${GREEN}Create docker/nginx directory${NO_COLOR}${NEW_LINE}"

mkdir -p docker/nginx

print "${NEW_LINE}${GREEN}Download default.conf file${NO_COLOR}${NEW_LINE}"

curl -fsSL "${BASE_URL}/docker/nginx/default.conf" > docker/nginx/default.conf

print "${NEW_LINE}${GREEN}Download general.conf file${NO_COLOR}${NEW_LINE}"

curl -fsSL "${BASE_URL}/docker/nginx/general.conf" > docker/nginx/general.conf

print "${NEW_LINE}${GREEN}Download nginx.conf file${NO_COLOR}${NEW_LINE}"

curl -fsSL "${BASE_URL}/docker/nginx/nginx.conf" > docker/nginx/nginx.conf

print "${NEW_LINE}${GREEN}Download php_fastcgi.conf file${NO_COLOR}${NEW_LINE}"

curl -fsSL "${BASE_URL}/docker/nginx/php_fastcgi.conf" > docker/nginx/php_fastcgi.conf

print "${NEW_LINE}${GREEN}Done${NO_COLOR}${NEW_LINE}"
