FROM debian:buster

RUN  apt update -y && apt upgrade -y \
&& apt install mariadb-server -y \
&& apt install mariadb-client -y

COPY conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/database.sql /database.sql

RUN chmod a+x /database.sql
RUN mysql_install_db && service mysql start && sleep 10 \
&& mysql -uroot < /database.sql \
&& mysqladmin -uroot shutdown

EXPOSE 3306

CMD ["mysqld"]