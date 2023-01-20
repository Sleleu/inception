CREATE DATABASE db_wordpress;
CREATE USER 'sleleu'@'localhost' IDENTIFIED BY 'abcd';
GRANT ALL PRIVILEGES ON db_wordpress.* TO 'sleleu'@'%' IDENTIFIED BY 'sleleu';
ALTER USER 'root'@'localhost' IDENTIFIED BY '';
FLUSH PRIVILEGES;
