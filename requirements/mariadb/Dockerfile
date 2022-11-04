FROM debian:buster
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install mariadb-server -y

EXPOSE 3306

COPY tools/start.sh /root
COPY conf/my.cnf /etc/mysql

ENTRYPOINT ["sh", "/root/start.sh"]