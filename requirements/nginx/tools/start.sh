#!/bin/bash

openssl req -x509 -nodes -days 30 -subj "/C=FR/ST=PAYS/L=VILLE/O=42/OU=S19/CN=4b93f" -newkey rsa:4096 -keyout /etc/nginx/ssl/nginx-selfsigned.key -out /etc/nginx/ssl/nginx-selfsigned.crt;
#service nginx restart
nginx -g "daemon off;"