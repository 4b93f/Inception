#!/bin/bash
wp plugin update --all --allow-root

wp core download --allow-root
wp core install --url=localhost --title=Example --admin_user=supervisor --admin_password=strongpassword --admin_email=info@example.com --allow-root
wp user create $CORRECTOR_USER $CORRECTOR_USER_EMAIL --role=editor --user_pass=$CORRECTOR_USER_PWD --allow-root
wp theme install twentynineteen --allow-root 
wp theme activate twentynineteen --allow-root

php-fpm7.3 --nodaemonize