FROM debian:buster

RUN apt-get update -y
RUN apt-get install -y vim
RUN apt-get upgrade -y
RUN apt-get install -y nginx
RUN apt-get install -y openssl

EXPOSE 443
EXPOSE 80
RUN mkdir /etc/nginx/ssl
RUN chmod 700 /etc/nginx/ssl

COPY conf/default /etc/nginx/sites-available
COPY tools/start.sh /root

CMD bash root/start.sh