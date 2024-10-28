# Selecting the image
FROM debian:bullseye

# Update and install necessary packages and remove the cache in order to make the image smaller
RUN apt-get update && \
    apt-get install -y nginx openssl && \
    rm -fr /var/lib/apt/lists/*

# Generate openssl key and certificate
RUN openssl genrsa -out /etc/nginx/server.key && \
    openssl req -new -key /etc/nginx/server.key -subj "/CN=empenadas" -out /etc/nginx/server.csr && \
    openssl x509 -req -days 365 -in /etc/nginx/server.csr -signkey /etc/nginx/server.key -out /etc/nginx/server.crt
RUN openssl genrsa -out /etc/nginx/server.key && \
    openssl req -new -key /etc/nginx/server.key -subj "/CN=empenadas" -out /etc/nginx/server.csr && \
    openssl x509 -req -days 365 -in /etc/nginx/server.csr -signkey /etc/nginx/server.key -out /etc/nginx/server.crt

# Set nginx configuration
COPY ./tools/conf/nginx.conf /etc/nginx/nginx.conf

# Expose ports
EXPOSE 443

ENTRYPOINT nginx -g "daemon off;"
