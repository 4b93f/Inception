#!/bin/bash
wp plugin update --all --allow-root

wp core download --allow-root
wp core install --url=$WORDPRESS_URL --title=$WORDPRESS_TITLE --admin_user=$WORDPRESS_ADMIN_USER --admin_password=$WORDPRESS_ADMIN_PWD --admin_email=$WORDPRESS_ADMIN_EMAIL --allow-root
wp user create $CORRECTOR_USER $CORRECTOR_USER_EMAIL --role=editor --user_pass=$CORRECTOR_USER_PWD --allow-root
wp theme install twentynineteen --allow-root 
wp theme activate twentynineteen --allow-root

php-fpm7.3 --nodaemonize