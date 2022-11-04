FROM debian:buster
RUN apt-get update -y 
RUN apt-get upgrade -y

RUN apt-get install nginx -y openssl

COPY conf/nginx.conf /etc/nginx/sites-enabled/default.conf
COPY tools/start.sh /root

RUN mkdir -p /etc/nginx/ssl
RUN chmod 700 /etc/nginx/ssl

ENTRYPOINT ["sh", "/root/start.sh"]
