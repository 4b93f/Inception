FROM debian:buster

RUN apt-get update -y
RUN apt-get install -y vim
RUN apt-get upgrade -y
RUN apt-get install -y nginx
RUN apt-get install -y openssl

RUN mkdir /etc/nginx/ssl
RUN chmod 700 /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 30 -subj "/C=BE/ST=Belgium/L=Brussels/O=42 Network/OU=s19/CN=yolo" -newkey rsa:4096 -keyout /etc/nginx/ssl/nginx-selfsigned.key -out /etc/nginx/ssl/nginx-selfsigned.crt;

# COPY tools/nginx.conf etc/nginx/conf.d/
# CMD nginx -g "daemon off;"