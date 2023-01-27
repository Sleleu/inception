FROM debian:buster

RUN  apt update -y && apt upgrade -y \
&& apt install -y mariadb-client \
                mariadb-server \
                gettext

COPY conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/script.sh /script.sh
COPY conf/database.sql /database.sql

RUN mkdir /var/run/mysqld/ \
&& chmod a+x /script.sh

EXPOSE 3306

CMD ["/script.sh"]