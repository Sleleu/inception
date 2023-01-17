FROM debian:buster

RUN  apt update -y && apt upgrade -y \
&& apt install mariadb-server -y

EXPOSE 3306

COPY conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/script.sh /script.sh

RUN chmod a+x /script.sh

ENTRYPOINT ["/script.sh"]