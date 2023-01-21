#!/bin/bash

sleep 10s

chown -R www-data /var/www/wordpress
chmod -R 775 /var/www/wordpress

mkdir -p /run/php/
touch /run/php/php7.3-fpm.pid

# curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# chmod +x wp-cli.phar
# mv wp-cli.phar /usr/local/bin/wp

# cd /var/www/wordpress

# wp core install --allow-root --url=sleleu.42.fr --title=wordpress --admin_user=root --admin_password=abcd --admin_email=root@student.42
# wp user create sleleu sleleu@student.42.fr --user_pass=abcd --role=author --allow-root
# wp theme install inspiro --activate --allow-root
# wp plugin install redis-cache --activate --allow-root
# wp plugin update --all --allow-root
# wp plugin activate redis-cache --allow-root

# wp redis enable --force --allow-root

/usr/sbin/php-fpm7.3 -F

# Essayer sans le wp-config.php