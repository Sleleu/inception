#!/bin/bash

if [ ! -d /var/lib/mysql/db_wordpress ]
then

mysql_install_db
service mysql start

mysql -uroot < /database.sql

service mysql stop

fi

exec "$@"
