FROM debian:buster

RUN  apt update -y && apt upgrade -y \
&& apt install -y mariadb-client \
                mariadb-server \
                gettext 

COPY conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/database.sql /database.sql
COPY conf/script.sh /script.sh

RUN chmod a+x /database.sql && chmod a+x /script.sh
RUN mysql_install_db && service mysql start \
&& mysql -uroot < /database.sql \
&& mysqladmin -uroot shutdown

EXPOSE 3306

CMD ["mysqld_safe"]