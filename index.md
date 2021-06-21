# Docker Compose Laravel

![PHP version](https://img.shields.io/badge/PHP-8--FPM%20%7C%207.4--FPM-blue?style=for-the-badge)
![Composer version](https://img.shields.io/badge/Composer-2-blue?style=for-the-badge)
![Node version](https://img.shields.io/badge/node-15-blue?style=for-the-badge)
![MySQL version](https://img.shields.io/badge/mysql-8-blue?style=for-the-badge)
![Nginx version](https://img.shields.io/badge/nginx-1--alpine-blue?style=for-the-badge)
![Redis version](https://img.shields.io/badge/redis-6--alpine-blue?style=for-the-badge)

docker-compose for local development

## How to Install

To install `docker-composer.yml` and its config in exists project just run this command.

```shell
/usr/local/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/DevMoath/docker-compose-laravel/master/install.sh)"
```

> NOTE: make sure you don't have `docker-composer.yml` file and `docker` directory in your project

## Containers

* nginx
* mysql
* pgsql (commented by default)
* php
* redis
* horizon (will restart every 60 seconds to read new changes)

## Usage

Before you start, `docker-compose.yml` uses these env variables for ports binding and database info:

| Variable              | Default     |
|-----------------------|-------------|
| NGINX_PORT            | 80          |
| FORWARD_MYSQL_DB_PORT | 3306        |
| DB_PASSWORD           | secret      |
| DB_DATABASE           | laravel     |
| MYSQL_DB_VOLUME       | ~/.mysql8/  |
| FORWARD_PGSQL_DB_PORT | 5432        |
| PGSQL_DB_VOLUME       | ~/.pgsql13/ |
| COMPOSER_HOME         | /tmp        |
| REDIS_PORT            | 6379        |

Feel free to change it as you need then run the containers:

```shell
docker compose up --detach --build
```

You can run `composer`, `artisan`, or `npm` commands like this:

```shell
docker compose exec php composer <COMMAND>

docker compose exec php php artisan <COMMAND>

docker compose exec php npm <COMMAND>
```

## Useful Resources

* [Docker videos playlist](https://www.youtube.com/playlist?list=PLWXM1Hj1xHDZOjLQdz687d8GA8YQ7fpvX)
