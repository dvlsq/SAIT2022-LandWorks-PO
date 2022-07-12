CREATE TABLE IF NOT EXISTS `users` (
  `userid` INT NOT NULL,
  `username` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`userid`));