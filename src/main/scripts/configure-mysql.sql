## Use to run mysql db docker image, optional if you're not using a local mysqldb
# docker run --name mysqldb -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -d mysql

# connect to mysql and run as root user
# Create Databases
CREATE DATABASE dondon_dev;
CREATE DATABASE dondon_prod;

# Create database service accounts
CREATE USER 'dondon_dev_user'@'localhost' IDENTIFIED BY 'dondon';
CREATE USER 'dondon_prod_user'@'localhost' IDENTIFIED BY 'dondon';
CREATE USER 'dondon_dev_user'@'%' IDENTIFIED BY 'dondon';
CREATE USER 'dondon_prod_user'@'%' IDENTIFIED BY 'dondon';

# Database grants
GRANT SELECT ON dondon_dev.* to 'dondon_dev_user'@'localhost';
GRANT INSERT ON dondon_dev.* to 'dondon_dev_user'@'localhost';
GRANT DELETE ON dondon_dev.* to 'dondon_dev_user'@'localhost';
GRANT UPDATE ON dondon_dev.* to 'dondon_dev_user'@'localhost';
GRANT SELECT ON dondon_prod.* to 'dondon_prod_user'@'localhost';
GRANT INSERT ON dondon_prod.* to 'dondon_prod_user'@'localhost';
GRANT DELETE ON dondon_prod.* to 'dondon_prod_user'@'localhost';
GRANT UPDATE ON dondon_prod.* to 'dondon_prod_user'@'localhost';
GRANT SELECT ON dondon_dev.* to 'dondon_dev_user'@'%';
GRANT INSERT ON dondon_dev.* to 'dondon_dev_user'@'%';
GRANT DELETE ON dondon_dev.* to 'dondon_dev_user'@'%';
GRANT UPDATE ON dondon_dev.* to 'dondon_dev_user'@'%';
GRANT SELECT ON dondon_prod.* to 'dondon_prod_user'@'%';
GRANT INSERT ON dondon_prod.* to 'dondon_prod_user'@'%';
GRANT DELETE ON dondon_prod.* to 'dondon_prod_user'@'%';
GRANT UPDATE ON dondon_prod.* to 'dondon_prod_user'@'%';