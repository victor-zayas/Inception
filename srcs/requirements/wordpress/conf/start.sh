#!/bin/sh

mkdir -p /var/www/html/

cd /var/www/html

chmod -R 755 /var/www/html

chown -R www-data:www-data /var/www/html

wp core download --locale=es_ES --allow-root

wp  config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=mariadb:3306 --locale=es_ES --allow-root --skip-check

wp core install   --url=127.0.0.1 --title="Los helechos son plantas pteridofitas, cuyas características morfológicas más sobresalientes son sus frondes, usualmente pinadas y con prefoliación circinada." --admin_name=${WP_ADMIN_USER} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email="vzayas-s@student.42urduliz.com" --skip-email --allow-root

wp  theme install https://downloads.wordpress.org/theme/photobrust.1.0.1.zip --allow-root
wp  theme activate photobrust --allow-root

# --path=/var/www/html