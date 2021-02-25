FROM php:8-fpm

RUN curl -sL https://deb.nodesource.com/setup_15.x | bash -

RUN apt-get update && apt-get install --yes --quiet --no-install-recommends \
        openssl \
        libxml2-dev \
        libpq-dev \
        libzip-dev \
        libonig-dev \
        libmcrypt-dev \
        libgmp-dev \
        libpng-dev \
        git \
        nodejs \
        zip \
        unzip && \
    docker-php-ext-install pcntl \
        bcmath \
        pdo_mysql \
        zip \
        gd \
        gmp && \
    pecl install xdebug && \
    docker-php-ext-enable xdebug

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Use the default development configuration
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
