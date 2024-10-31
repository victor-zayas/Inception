#!/bin/sh

if [ -d "/var/run/mysqld" ]; then
	echo "mysqld exists, skipping creation"
else
	echo "mysqld not found, creating...."
	mkdir -p var/run/mysqld
	chown -R mysql:mysql /var/run/mysqld
	chmod 777 /var/run/mysqld
fi

service mysql start

#service mysql restart

#kill $(cat /var/run/mysqld/mysqld.pid)


mysqld