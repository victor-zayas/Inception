#!/bin/sh

sed -i 's|DB_NAME|'${DB_NAME}'|g' /tmp/init.sql
sed -i 's|DB_USER|'${DB_USER}'|g' /tmp/init.sql
sed -i 's|DB_PASSWORD|'${DB_PASSWORD}'|g' /tmp/init.sql
sed -i 's|DB_ROOT_PASSWORD|'${DB_ROOT_PASSWORD}'|g' /tmp/init.sql

if [ -d "/var/lib/mysql/$DB_NAME" ]

then
  echo "Database exists."
  mysqld_safe

else
  mysql_install_db
  mysqld --init-file="/tmp/init.sql"

fi

mysqld --user=mysql --console