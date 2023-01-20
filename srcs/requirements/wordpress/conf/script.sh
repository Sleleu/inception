#!/bin/bash

sleep 10s

chown -R www-data /var/www/wordpress
chmod -R 775 /var/www/wordpress

mkdir -p /run/php/
touch /run/php/php7.3-fpm.pid

/usr/sbin/php-fpm7.3 -F