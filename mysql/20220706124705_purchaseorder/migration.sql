CREATE TABLE IF NOT EXISTS `schema_po`.`purchaseorder` (
  `purchaseid` INT NOT NULL,
  `userid` INT NOT NULL,
  `vendorid` INT NOT NULL,
  `companyid` INT NOT NULL,
  `orderdate` DATETIME NOT NULL,
  `deliverydate` DATETIME NOT NULL,
  `shippingmethod` VARCHAR(100) NOT NULL,
  `notes` VARCHAR(100) NULL,
  PRIMARY KEY (`purchaseid`),
  INDEX `userid_fk_idx` (`userid` ASC) VISIBLE,
  INDEX `vendorid_fk_idx` (`vendorid` ASC) VISIBLE,
  INDEX `companyid_idx` (`companyid` ASC) VISIBLE,
  CONSTRAINT `userid_fk`
    FOREIGN KEY (`userid`)
    REFERENCES `schema_po`.`users` (`userid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `vendorid_fk`
    FOREIGN KEY (`vendorid`)
    REFERENCES `schema_po`.`vendor` (`vendorid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `companyid`
    FOREIGN KEY (`companyid`)
    REFERENCES `schema_po`.`company` (`companyid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)