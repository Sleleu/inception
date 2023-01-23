#!/bin/bash

chown -R www-data:www-data /var/www/*
chmod -R 775 /var/www/*

mkdir -p /run/php/
touch /run/php/php7.3-fpm.pid
