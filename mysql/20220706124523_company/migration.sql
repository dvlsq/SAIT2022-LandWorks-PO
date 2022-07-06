CREATE TABLE IF NOT EXISTS `schema_po`.`company` (
  `companyid` INT NOT NULL,
  `companyname` VARCHAR(100) NOT NULL,
  `address` VARCHAR(100) NOT NULL,
  `city` VARCHAR(100) NOT NULL,
  `province` VARCHAR(100) NOT NULL,
  `postalcode` VARCHAR(100) NOT NULL,
  `country` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `contactnumber` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`companyid`));