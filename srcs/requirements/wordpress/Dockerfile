# Selecting the image
FROM debian:bullseye
 
# Update and install necessary packages and remove the cache in order to make the image smaller
RUN apt-get update

RUN apt-get install -y php
RUN apt-get install -y php-fpm
RUN apt-get install -y php-mysql
RUN apt-get install -y php-cgi
RUN apt-get install -y php-cli
RUN apt-get install -y php-pdo
RUN apt-get install -y php-gd
RUN apt-get install -y php-mbstring
RUN apt-get install -y curl

RUN rm -fr /var/lib/apt/lists/*

#   apt-get install -y php php-fpm php-mysql php-cgi php-cli php-pdo php-gd php-mbstring curl && \
#    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/www/html    
RUN chown -R www-data:www-data /var/www/html

# Expose ports
EXPOSE 9000

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
