#!/bin/bash
wp plugin update --all --allow-root

wp user create $WORDPRESS_USER $WORDPRESS_USER_EMAIL --role=editor --user_pass=$WORDPRESS_USER_PWD --allow-root

php-fpm7.3 --nodaemonize