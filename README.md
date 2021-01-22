<h1>
    <p align="center">
        Docker Compose Laravel
        <a href="https://twitter.com/intent/tweet?text=Docker%20Compose%20Laravel%20@DevMoath%20https://github.com/DevMoath/docker-compose-laravel"><img src="https://img.shields.io/twitter/url?style=social&amp;url=https://github.com/DevMoath/docker-compose-laravel" alt="Twitter"></a>
    </p>
</h1>

<p align="center">
    <img src="https://img.shields.io/badge/PHP-8--fpm-blue?style=for-the-badge" alt="PHP version">
    <img src="https://img.shields.io/badge/Composer-2-blue?style=for-the-badge" alt="Composer version">
    <a href="https://github.com/DevMoath/docker-compose-laravel/issues"><img src="https://img.shields.io/github/issues/DevMoath/docker-compose-laravel.svg?style=for-the-badge" alt="GitHub issues"></a>
    <a href="https://github.com/DevMoath/docker-compose-laravel/stargazers"><img src="https://img.shields.io/github/stars/DevMoath/docker-compose-laravel.svg?style=for-the-badge" alt="GitHub stars"></a>
    <a href="https://github.com/DevMoath/docker-compose-laravel/pulls"><img src="https://img.shields.io/github/issues-pr-raw/DevMoath/docker-compose-laravel?style=for-the-badge" alt="GitHub pull requests"></a>
    <a href="https://github.com/DevMoath/docker-compose-laravel/network/members"><img src="https://img.shields.io/github/forks/DevMoath/docker-compose-laravel?style=for-the-badge" alt="GitHub forks"></a>
    <a href="https://github.com/DevMoath/docker-compose-laravel/blob/master/LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge" alt="License: MIT"></a>
</p>

## Table of Contents

- [Overview](#overview)
- [docker-compose Containers](#docker-compose-containers)
- [Usage](#usage)
- [Credits](#credits)
- [Useful Resources](#useful-resources)
- [License](#license)

## Overview

docker-compose for local development

## docker-compose containers

docker-compose contains these main containers:

* nginx
* mysql
* php
* redis

And these helper containers:

* composer
* npm
* artisan

## Usage

Before you start, `docker-compose.yml` uses these env variables for ports binding and database info:

| Variable         | Default           |
|------------------|-------------------|
| NGINX_PORT       | 8081              |
| DB_DATABASE      | laravel           |
| DB_DATABASE_TEST | laravel_testing   |
| DB_VOLUME        | ~/mysql/          |
| PHP_PORT         | 9001              |
| REDIS_PORT       | 6379              |

Feel free to change it as you need then run site container:

```shell script
docker-compose up -d --build site
```

And you can run one of the helper containers:

* composer

```shell script
docker-compose run --rm composer <COMMAND>
```

* npm

```shell script
docker-compose run --rm npm <COMMAND>
```

* artisan

```shell script
docker-compose run --rm artisan <COMMAND>
```

## Credits

- [Moath](https://github.com/devmoath)
- [All Contributors](../../contributors)

## Useful Resources

* [Docker videos playlist](https://www.youtube.com/playlist?list=PLWXM1Hj1xHDZOjLQdz687d8GA8YQ7fpvX)
* [A much better local Laravel dev environment with Docker](https://youtu.be/I980aPL-NRM)
* [docker-compose-laravel](https://github.com/aschmelyun/docker-compose-laravel)
* [Running Scheduled Laravel Tasks with Docker](https://youtu.be/2UTHJpBRGpY)
* [laravel-scheduled-tasks-docker](https://github.com/aschmelyun/laravel-scheduled-tasks-docker)

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
