#!/bin/bash

chown -R www-data:www-data /var/www/html/*
chmod -R 755 /var/www/html/*

mkdir -p /run/php/
touch /run/php/php7.3-fpm.pid

# Wait for the database

# script wp-cli
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
cd /var/www/html/wordpress
wp core install \
    --allow-root \
    --url=sleleu.42.fr \
    --title=Inception \
    --admin_user=sleleu \
    --admin_password=abcd \
    --admin_email=sleleu@student.42.fr
wp user create \
    user \
    user@student.42.fr \
    --allow-root \
    --user_pass=abcdef


exec "$@"
