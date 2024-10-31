FROM    debian:bullseye

RUN     apt-get update -y
RUN     apt-get upgrade -y

RUN     apt-get install -y mariadb-server
RUN     apt-get install mariadb-client -y
        

RUN     mkdir -p /var/run/mysqld && \
        chown -R mysql:mysql /var/run/mysqld && chown -R mysql:mysql /etc/mysql && \
        rm -rf /var/lib/apt/lists/*

COPY    tools/createdb.sh /tmp/
COPY    tools/init.sql /tmp/
COPY    tools/config.cnf /etc/mysql

RUN     chown -R mysql:mysql /tmp/ && \
        chown -R mysql:mysql /etc/mysql

ENTRYPOINT ["sh", "/tmp/createdb.sh"]

USER    mysql

EXPOSE 3306



CMD ["mysql", "--bind-address=0.0.0.0"]