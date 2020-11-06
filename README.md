# Docker Laravel [![Twitter](https://img.shields.io/twitter/url?style=social&url=https://github.com/DevMoath/docker-laravel)](https://twitter.com/intent/tweet?text=Docker%20Laravel%20@DevMoath%20https://github.com/DevMoath/docker-laravel)

[![Release](https://img.shields.io/github/v/release/devmoath/docker-laravel?style=for-the-badge)](https://github.com/DevMoath/docker-laravel/releases)
[![GitHub issues](https://img.shields.io/github/issues/DevMoath/docker-laravel.svg?style=for-the-badge&logo=appveyor)](https://github.com/DevMoath/docker-laravel/issues)
[![GitHub stars](https://img.shields.io/github/stars/DevMoath/docker-laravel.svg?style=for-the-badge&logo=appveyor)](https://github.com/DevMoath/docker-laravel/stargazers)
[![GitHub pull requests](https://img.shields.io/github/issues-pr-raw/DevMoath/docker-laravel?style=for-the-badge&logo=appveyor)](https://github.com/DevMoath/docker-laravel/pulls)
[![GitHub forks](https://img.shields.io/github/forks/DevMoath/docker-laravel?style=for-the-badge)](https://github.com/DevMoath/docker-laravel/network/members)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge&logo=appveyor)](https://github.com/DevMoath/docker-laravel/blob/master/LICENSE)

## Table of Contents

- [Overview](#overview)
- [docker-compose containers](#docker-compose-containers)
- [Project Structure](#project-structure)
- [Usage](#usage)
- [Credits](#credits)
- [Useful Resources](#useful-resources)
- [License](#license)

## Overview

Dockerfile to containerize your laravel applications, and docker-compose for local development 

## docker-compose containers

docker-compose contains these main containers: 
* nginx
* mysql
* php
* redis
* elasticsearch

And these helper containers: 
* composer
* npm
* artisan

## Project Structure

```
.
├── Dockerfile
├── LICENSE.md
├── README.md
├── docker
│   ├── entrypoint.sh
│   ├── nginx
│   │   ├── Dockerfile
│   │   ├── default.conf
│   │   ├── laravel.conf
│   │   └── nginx.conf
│   └── php
│       ├── Dockerfile
│       ├── artisan-cron
│       ├── laravel.conf
│       └── www.conf
└── docker-compose.yml

3 directories, 13 files
```

## Usage

Before you start, `docker-compose.yml` uses these env variables for ports binding and database info:

| Variable           | Default   |
|--------------------|-----------|
| NGINX_PORT         | 8081      |
| DB__PORT           | 6604      |
| DB_NAME            | laravel   |
| DB_USER            | developer |
| DB_PASS            | secret    |
| DB_ROOT_PASS       | secret    |
| DB_VOLUME          | ~/mysql/  |
| PHP_PORT           | 9000      |
| REDIS_PORT         | 6379      |
| ELASTICSEARCH_PORT | 9200      |

Feel free to change it as you need then run all containers:

```shell script
docker-compose up -d --build
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

* [A much better local Laravel dev environment with Docker](https://youtu.be/I980aPL-NRM)
* [docker-compose-laravel](https://github.com/aschmelyun/docker-compose-laravel)
* [Running Scheduled Laravel Tasks with Docker](https://youtu.be/2UTHJpBRGpY)
* [laravel-scheduled-tasks-docker](https://github.com/aschmelyun/laravel-scheduled-tasks-docker)

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
