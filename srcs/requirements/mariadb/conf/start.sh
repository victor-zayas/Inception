
sleep 5

chown -R mariadb /var/lib/mariadb

sed -i "s/^bind-address\s*=.*$/#bind-address = 0.0.0.0/" /etc/mariadb/mariadb.conf.d/50-server.cnf
sed -i "s/skip-networking/#skip-networking/g" /etc/mariadb/mariadb.conf.d/50-server.cnf

# Configurar puerto en my.cnf
sed -i "s/#\?port\s*=.*/port=3306/" /etc/mariadb/mariadb.conf.d/50-server.cnf

sleep 10
/etc/init.d/mariadb restart
chmod +x /mtg/setup.sh
service mariadb restart