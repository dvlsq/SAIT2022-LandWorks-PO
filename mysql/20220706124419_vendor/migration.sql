CREATE TABLE IF NOT EXISTS `vendor` (
  `vendorid` INT NOT NULL,
  `vendorname` VARCHAR(100) NOT NULL,
  `contactperson` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `city` VARCHAR(100) NOT NULL,
  `province` VARCHAR(100) NOT NULL,
  `postalcode` VARCHAR(100) NOT NULL,
  `country` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `contactnumber` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`vendorid`));