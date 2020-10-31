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
        fileinfo \
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

# clear cache to reduce image size
RUN rm -rf /var/lib/apt/lists/*

# copy app to /var/www/html and cd to it
COPY . /var/www/html
WORKDIR /var/www/html

# copy composer file from composer image
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# copy crontab config
COPY docker/php/artisan-cron /etc/cron.d/artisan-cron

# give it the right premissions
RUN chmod 0644 /etc/cron.d/artisan-cron

# run it
RUN crontab /etc/cron.d/artisan-cron

# remove default site
RUN rm /etc/nginx/sites-enabled/default

# copy defualt nginx config
COPY docker/nginx/default.conf /etc/nginx/conf.d/default.conf

# copy php fpm config
COPY docker/php/www.conf /usr/local/etc/php-fpm.d/www.conf

# Setup permissions
RUN chown -R www-data:www-data .
RUN chmod -R 775 .

RUN chmod +x docker/entrypoint.sh

CMD ["sh", "docker/entrypoint.sh"]

EXPOSE 80
