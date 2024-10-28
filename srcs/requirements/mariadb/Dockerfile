FROM    debian:bullseye

RUN     apt-get update -y && apt-get upgrade -y && apt-get install mariadb-server mariadb-client -y && \
        mkdir -p /var/run/mysqld && \
        chown -R mysql:mysql /var/run/mysqld && chown -R mysql:mysql /etc/mysql/

COPY    tools/createdb.sh /tmp/
COPY    tools/init.sql /tmp/
COPY    tools/config.cnf /etc/mysql

RUN     chown -R mysql:mysql /tmp/ && \
        chown -R mysql:mysql /etc/mysql

USER    mysql

EXPOSE 3306

ENTRYPOINT ["sh", "/tmp/createdb.sh"]
