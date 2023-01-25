#!/bin/sh

mysql -e "GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY 'abcd';"
mysql -e "FLUSH PRIVILEGES;"
mysql -e "CREATE DATABASE IF NOT EXISTS db_wordpress;"
mysql -e "CREATE USER IF NOT EXISTS 'sleleu'@'%' IDENTIFIED BY 'abcd';"
mysql -e "GRANT ALL PRIVILEGES ON db_wordpress.* TO 'sleleu'@'%';"
mysql -e "FLUSH PRIVILEGES;"

exec "$@"