FROM debian:buster




RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y vim


# Download WordPress and untar it
RUN wget https://wordpress.org/latest.tar.gz
RUN tar xvf latest.tar.gz
RUN rm latest.tar.gz

COPY conf/wp-config.php /wordpress/wp-config.php

# start openrc
RUN openrc
RUN touch /run/openrc/softlevel

# Copy installing script and make it executable
COPY tools/run.sh /
COPY conf/www.conf /etc/php7/php-fpm.d
RUN chmod +x ./run.sh

ENTRYPOINT [ "./run.sh" ]