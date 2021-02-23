FROM nginx:1-alpine

COPY ./docker/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./docker/nginx/general.conf /etc/nginx/general.conf
COPY ./docker/nginx/php_fastcgi.conf /etc/nginx/php_fastcgi.conf
COPY ./docker/nginx/security.conf /etc/nginx/security.conf
COPY ./docker/nginx/default.conf /etc/nginx/conf.d/default.conf
