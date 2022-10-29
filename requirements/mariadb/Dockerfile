FROM debian:buster

COPY tools/start.sh /root

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y vim
RUN apt-get install -y mariadb-server mariadb-common mariadb-client

CMD bash root/start.sh