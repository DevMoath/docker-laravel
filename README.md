<h1>
    <p align="center">
        Docker Compose Laravel
        <a href="https://twitter.com/intent/tweet?text=Docker%20Compose%20Laravel%20@DevMoath%20https://github.com/DevMoath/docker-compose-laravel"><img src="https://img.shields.io/twitter/url?style=social&amp;url=https://github.com/DevMoath/docker-compose-laravel" alt="Twitter"></a>
    </p>
</h1>

<p align="center">
    <img src="https://img.shields.io/badge/PHP-8--fpm-blue?style=for-the-badge" alt="PHP version">
    <img src="https://img.shields.io/badge/Composer-2-blue?style=for-the-badge" alt="Composer version">
    <img src="https://img.shields.io/badge/node-15--alpine-blue?style=for-the-badge" alt="Node version">
    <img src="https://img.shields.io/badge/mysql-8-blue?style=for-the-badge" alt="MySQL version">
    <img src="https://img.shields.io/badge/nginx-1--alpine-blue?style=for-the-badge" alt="Nginx version">
    <img src="https://img.shields.io/badge/redis-6--alpine-blue?style=for-the-badge" alt="Redis version">
</p>

## Table of Contents

- [Overview](#overview)
- [Containers](#containers)
- [Usage](#usage)
- [Useful Resources](#useful-resources)

## Overview

docker-compose for local development

## Containers

* nginx
* mysql
* php
* redis
* horizon

## Usage

Before you start, `docker-compose.yml` uses these env variables for ports binding and database info:

| Variable         | Default         |
|------------------|-----------------|
| NGINX_PORT       | 8081            |
| DB_DATABASE      | `null`          |
| DB_DATABASE_TEST | `null`          |
| DB_USERNAME      | `null`          |
| DB_PASSWORD      | `null`          |
| DB_VOLUME        | ~/mysql/        |
| PHP_PORT         | 9001            |
| REDIS_PORT       | 6379            |

Feel free to change it as you need then run the containers:

```shell script
docker-compose up -d --build
```

You can run `composer`, `artisan`, or `npm` commands like this:

```shell script
docker-compose exec php composer <COMMAND>

docker-compose exec php php artisan <COMMAND>

docker-compose exec php npm <COMMAND>
```

## Useful Resources

* [Docker videos playlist](https://www.youtube.com/playlist?list=PLWXM1Hj1xHDZOjLQdz687d8GA8YQ7fpvX)
* [A much better local Laravel dev environment with Docker](https://youtu.be/I980aPL-NRM)
* [docker-compose-laravel](https://github.com/aschmelyun/docker-compose-laravel)
* [Running Scheduled Laravel Tasks with Docker](https://youtu.be/2UTHJpBRGpY)
* [laravel-scheduled-tasks-docker](https://github.com/aschmelyun/laravel-scheduled-tasks-docker)
