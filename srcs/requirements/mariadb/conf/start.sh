chown -R mariadb /var/lib/mariadb

sed -i "s/^bind-address\s*=.*$/#bind-address = 127.0.0.1/" /etc/mariadb/mariadb.conf.d/50-server.cnf
sed -i "s/skip-networking/#skip-networking/g" /etc/mariadb/mariadb.conf.d/50-server.cnf

# Configurar puerto en my.cnf
sed -i "s/#\?port\s*=.*/port=3306/" /etc/mariadb/mariadb.conf.d/50-server.cnf

/etc/init.d/mariadb restart
chmod +x /tmp/setup.sh
service mariadb restart