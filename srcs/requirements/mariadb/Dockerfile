FROM debian:buster

RUN  apt update -y && apt upgrade -y \
&& apt install mariadb-server -y

EXPOSE 3306

COPY conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/database.sql /database.sql

RUN service mysql start && mysql < /database.sql && rm -rfd /database.sql

CMD ["/usr/bin/mysqld_safe"]