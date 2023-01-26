#!/bin/bash

chown -R www-data:www-data /var/www/html/*
chmod -R 755 /var/www/html/*

mkdir -p /run/php/
touch /run/php/php7.3-fpm.pid

# Wait for the database
sleep 10

# script wp-cli
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
cd /var/www/html/wordpress
wp core install \
    --allow-root \
    --url=${SITE_URL} \
    --title=${SITE_TITLE} \
    --admin_user=${WP_ADMIN_LOGIN} \
    --admin_password=${WP_ADMIN_PASSWORD} \
    --admin_email=${WP_ADMIN_EMAIL}
wp user create \
    ${WP_USER} \
    ${WP_EMAIL} \
    --user_pass=${WP_PASSWORD}


exec "$@"
