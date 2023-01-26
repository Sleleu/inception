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
&& wget https://fr.wordpress.org/wordpress-6.1.1-fr_FR.tar.gz -P /var/www/html \
&& cd /var/www/html \
&& tar -xzf wordpress-6.1.1-fr_FR.tar.gz \
&& rm wordpress-6.1.1-fr_FR.tar.gz

COPY /conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY /conf/wp-config.php /var/www/html/wordpress/wp-config.php
COPY /conf/script.sh /script.sh

RUN chmod a+x /script.sh

EXPOSE 9000

ENTRYPOINT ["/script.sh"]

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
