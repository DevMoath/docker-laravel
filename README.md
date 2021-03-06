# Docker Compose Laravel

docker-compose for local development

## How to Install

To install `docker-composer.yml` and its config in exists project just run this command.

```shell
curl --silent --location --fail https://raw.githubusercontent.com/DevMoath/docker-compose-laravel/master/install.sh | bash
```

> NOTE: make sure you don't have `docker-composer.yml` file and `docker` directory in your project

## Containers

-   nginx:1-alpine
-   mysql:8
-   postgres:13
-   php:8-fpm or php:7.4-fpm (includes node-16 and composer 2)
-   redis:6-alpine
-   mailhog:latest

## Usage

Before you start, `docker-compose.yml` uses these env variables for ports binding and database info:

| Variable                       | Default     |
| ------------------------------ | ----------- |
| NGINX_PORT                     | 80          |
| FORWARD_MYSQL_DB_PORT          | 3306        |
| DB_PASSWORD                    | secret      |
| DB_DATABASE                    | laravel     |
| MYSQL_DB_VOLUME                | ~/.mysql8/  |
| FORWARD_PGSQL_DB_PORT          | 5432        |
| PGSQL_DB_VOLUME                | ~/.pgsql13/ |
| COMPOSER_HOME                  | /tmp        |
| MAILHOG_VOLUME                 | ~/.mailhog/ |
| FORWARD_MAILHOG_PORT           | 1025        |
| FORWARD_MAILHOG_DASHBOARD_PORT | 8025        |
| FORWARD_REDIS_PORT             | 6379        |

Feel free to change it as you need then run the containers:

```shell
docker compose up --detach --build
```

You can run `composer`, `artisan`, `node`, or `npm` commands like this:

```shell
docker compose exec php composer <COMMAND>

docker compose exec php php artisan <COMMAND>

docker compose exec php npm <COMMAND>

docker compose exec php node <COMMAND>
```

and if you want to login to a container you can use this command:

```shell
docker compose exec <CONTAINER_NAME> bash
```

## Useful Resources to Learn docker and docker-compose

-   [Docker videos playlist](https://www.youtube.com/playlist?list=PLWXM1Hj1xHDZOjLQdz687d8GA8YQ7fpvX)
