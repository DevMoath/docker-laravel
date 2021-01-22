FROM php:8-fpm

# install packages
RUN apt-get update && apt-get install -y \
        openssl \
        libxml2-dev \
        libpq-dev \
        libzip-dev \
        libonig-dev \
        libmcrypt-dev \
        libgmp-dev \
        libpng-dev \
        curl \
        git \
        zip \
        unzip \
        supervisor \
        nginx \
        nodejs \
        npm \
        cron

# install extensions
RUN docker-php-ext-install pcntl \
        bcmath \
        pdo_mysql \
        zip \
        gd \
        gmp

# install xdebug
RUN pecl install xdebug

# enable it
RUN docker-php-ext-enable xdebug

# clear cache
RUN rm -rf /var/lib/apt/lists/*

# copy composer file from composer image
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html
