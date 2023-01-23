FROM debian:buster

RUN apt update -y && apt upgrade -y \
&& apt install -y php7.3 \
    php-fpm \
    php-mysql \
    php-cgi \
    php-pdo \
    php-cli \
    mariadb-client \
    wget \
    curl \
    bash \
&& wget https://fr.wordpress.org/wordpress-6.1.1-fr_FR.tar.gz -P /var/www \
&& cd /var/www \
&& tar -xzf wordpress-6.1.1-fr_FR.tar.gz \
&& rm wordpress-6.1.1-fr_FR.tar.gz \
&& chown -R root:root /var/www/wordpress

COPY /conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY /conf/wp-config.php /var/www/wordpress/wp-config.php
COPY /conf/script.sh /var/www

RUN chmod a+x /var/www/script.sh
# tester si ca creer bien le fichier dans le container et qu'il le considere en prio
# sinon rm /var/www/wordpress/wp-config-sample.php avant

EXPOSE 9000


ENTRYPOINT ["/var/www/script.sh"]

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
