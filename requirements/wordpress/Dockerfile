FROM debian:buster

#essentials
RUN apt-get update -y 
RUN apt-get upgrade -y
RUN apt-get install -y php7.3 php7.3-fpm php7.3-mysql curl

#Start ...
WORKDIR /tmp
COPY tools/start.sh /tmp
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/

EXPOSE 9000

#WP Cli and Core download ...
RUN mkdir -p /run/php
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
WORKDIR /var/www/html/wordpress
RUN wp core download --allow-root
RUN chown -R www-data:www-data /var/www/html

#RUN rm -rf /var/www/html/wordpress/wp-config-sample.php
#COPY conf/wp-config.php /var/www/html/wordpress

ENTRYPOINT ["sh", "/tmp/start.sh"]
