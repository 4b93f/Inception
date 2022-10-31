FROM debian:buster

COPY tools/start.sh /root
COPY conf/wp-config.php /wordpress/wp-config.php
COPY conf/php.ini /etc/php/7.3/fpm
COPY conf/www.conf /etc/php/7.3/fpm
COPY conf/php-fpm.conf /etc/php/7.3/fpm

EXPOSE 9000

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y vim
RUN apt-get install -y wget php7.3-fpm php7.3-mbstring php7.3-mysql php7.3-gd

RUN mkdir -p /run/php
RUN wget https://wordpress.org/latest.tar.gz
RUN tar xvf latest.tar.gz
RUN rm latest.tar.gz

CMD bash root/start.sh
