#!/bin/bash

chown -R www-data:www-data /var/www/html/*
chmod -R 775 /var/www/html/*

mkdir -p /run/php/
touch /run/php/php7.3-fpm.pid

exec "$@"
