GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY 'abcd';
FLUSH PRIVILEGES;
CREATE DATABASE IF NOT EXISTS db_wordpress;
CREATE USER IF NOT EXISTS 'sleleu'@'%' IDENTIFIED BY 'abcd';
GRANT ALL PRIVILEGES ON db_wordpress.* TO 'sleleu'@'%';
FLUSH PRIVILEGES;