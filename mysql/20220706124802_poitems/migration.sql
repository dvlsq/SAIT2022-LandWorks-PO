CREATE TABLE IF NOT EXISTS `schema_po`.`po_items` (
  `poitemsid` INT NOT NULL,
  `purchaseid` INT NOT NULL,
  `itemsid` INT NOT NULL,
  `quantity` INT NOT NULL,
  `linetotal` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`poitemsid`),
  INDEX `purchaseid_fk_idx` (`purchaseid` ASC) VISIBLE,
  INDEX `itemsid_fk_idx` (`itemsid` ASC) VISIBLE,
  CONSTRAINT `purchaseid_fk`
    FOREIGN KEY (`purchaseid`)
    REFERENCES `schema_po`.`purchaseorder` (`purchaseid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `itemsid_fk`
    FOREIGN KEY (`itemsid`)
    REFERENCES `schema_po`.`items` (`itemsid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)