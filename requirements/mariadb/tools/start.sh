#!/bin/bash
chown -R mysql:mysql /var/lib/mysql

service mysql start --datadir=/var/lib/mysql
mkdir -p /var/run/mysqld
touch /var/run/mysqld/mysqlf.pid

echo "CREATE DATABASE $MARIADB_DATABASE;" | mariadb -u root --skip-password
echo "CREATE USER '$MARIADB_USER'@'%' IDENTIFIED by '$MARIADB_PASSWORD';" | mariadb -u root --skip-password
echo "GRANT ALL PRIVILEGES ON $MARIADB_DATABASE.* TO $MARIADB_USER@'%';" | mariadb -u root --skip-password
echo "FLUSH PRIVILEGES;" | mariadb -u root --skip-password
mysqladmin -u root password $MARIADB_ROOT_PASSWORD

service mysql stop --datadir=/var/lib/mysql
chown -R mysql:mysql /var/run/mysqld
mysqld_safe --datadir=/var/lib/mysql