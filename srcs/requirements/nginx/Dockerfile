FROM debian:buster

RUN apt update -y && apt upgrade -y \
&& apt install -y nginx \
                openssl \
&& mkdir -p /etc/nginx/ssl \
&& openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=sleleu.42.fr/UID=sleleu" \
&& mkdir -p /var/run/nginx \
&& chown -R www-data:www-data /var/www/html

COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]