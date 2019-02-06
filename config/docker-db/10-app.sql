CREATE DATABASE `db`;
GRANT SELECT ON db.* TO 'waki'@'%' IDENTIFIED BY 'waki';
FLUSH PRIVILEGES;
USE db;
DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
  `id` int(11) DEFAULT NULL,
  `text` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `data` VALUES (1,'Hello world!\n');
