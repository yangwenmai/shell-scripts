## gogs
#CREATE USER 'gogs'@'%' IDENTIFIED BY 'gogs_123456';
#GRANT ALL ON gogs.* TO 'gogs'@'%';
#FLUSH privileges;
#CREATE DATABASE IF NOT EXISTS `gogs`;

# drone
CREATE USER 'drone'@'%' IDENTIFIED BY 'drone_123456';
GRANT ALL ON drone.* TO 'drone'@'%';
FLUSH privileges;
CREATE DATABASE IF NOT EXISTS `drone`;
