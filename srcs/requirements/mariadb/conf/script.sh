#!/bin/bash

envsubst < /database.sql > /database_new.sql

mysqld --user=root --bootstrap < database_new.sql

rm -f database_new.sql && rm -f database.sql

exec mysqld --user=root $@
