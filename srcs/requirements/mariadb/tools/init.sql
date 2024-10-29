-- CREATE DATABASE IF NOT EXISTS 'DB_NAME' ;
-- CREATE USER IF NOT EXISTS 'DB_USER'@'%' IDENTIFIED BY 'DB_PASSWORD' ;
-- GRANT ALL PRIVILEGES ON 'DB_NAME'.* TO 'DB_USER'@'%' IDENTIFIED BY 'DB_PASSWORD' ;
-- FLUSH PRIVILEGES;
-- ALTER USER 'root'@'localhost' IDENTIFIED BY '1234' ;

CREATE DATABASE IF NOT EXISTS DB_NAME;
CREATE USER IF NOT EXISTS 'DB_USER'@'%' IDENTIFIED BY 'DB_PASSWORD';
GRANT ALL PRIVILEGES ON DB_NAME.* TO 'DB_USER'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY '1234';
