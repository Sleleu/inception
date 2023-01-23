#!/bin/sh

mysql_install_db && service mysql start && sleep 10


exec mysqld_safe