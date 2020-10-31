#!/bin/sh
set -e

# generate app key
php artisan key:generate

# optimize the app
php artisan cache:clear
php artisan config:cache
php artisan view:cache
php artisan event:cache

# migrate database, **NOTE**: make sure to setup your database connection Or it will fail here
# php artisan migrate --force

# restart nginx
service nginx restart

# run supervisord in the background
/usr/bin/supervisord &

# run cron in the background
cron -f &

# run php-fpm server
php-fpm
