FROM php:7.4-fpm

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
RUN docker-php-ext-install bcmath \
        ctype \
        json \
        mbstring \
        pdo \
        tokenizer \
        xml \
        pdo_mysql \
        pdo_pgsql \
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
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

ADD docker/php/laravel.conf /usr/local/etc/php-fpm.d/www.conf

RUN groupadd -g 1000 laravel
RUN useradd laravel -g laravel

RUN mkdir -p /var/www/html

RUN chown laravel:laravel /var/www/html

WORKDIR /var/www/html
