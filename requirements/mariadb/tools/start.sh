#!/bin/bash
chown -R mysql:mysql /var/lib/mysql

service mysql start

echo "CREATE DATABASE $MARIADB_DATABASE;" | mysql -u root --skip-password
echo "CREATE USER '$MARIADB_USER'@'locahost' IDENTIFIED BY '$MARIADB_PASSWORD';" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON wordpress.* TO '$MARIADB_USER'@'localhost' IDENTIFIED BY '$MARIADB_PASSWORD' WITH GRANT OPTION;" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password
chown -R mysql:mysql /var/run/mysqld

mysqld_safe --datadir="/var/lib/mysql"