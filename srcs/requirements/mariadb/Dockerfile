FROM debian:buster

RUN  apt update -y && apt upgrade -y \
&& apt install mariadb-server -y \
&& apt install mariadb-client -y

COPY conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/database.sql /database.sql

RUN service mysql start && mysql < /database.sql && rm -rfd /database.sql

EXPOSE 3306

CMD ["/usr/bin/mysqld_safe"]