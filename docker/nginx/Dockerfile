FROM nginx:alpine

RUN set -x ; \
    addgroup -g 82 -S www-data ; \
    adduser -u 82 -D -S -G www-data www-data && exit 0 ; exit 1

COPY ./docker/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./docker/nginx/general.conf /etc/nginx/general.conf
COPY ./docker/nginx/php_fastcgi.conf /etc/nginx/php_fastcgi.conf
COPY ./docker/nginx/security.conf /etc/nginx/security.conf
COPY ./docker/nginx/default.conf /etc/nginx/conf.d/default.conf
