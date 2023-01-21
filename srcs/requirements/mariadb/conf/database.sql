CREATE DATABASE db_wordpress;
CREATE USER 'sleleu'@'localhost' IDENTIFIED BY 'abcd';
GRANT ALL PRIVILEGES ON db_wordpress.* TO 'sleleu'@'%' IDENTIFIED BY 'abcd';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'abcd';