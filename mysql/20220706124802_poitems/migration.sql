CREATE TABLE `po_items` (
  `poitemsid` INT NOT NULL,
  `purchaseid` INT NOT NULL,
  `itemsid` INT NOT NULL,
  `quantity` INT NOT NULL,
  `linetotal` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`poitemsid`),
  INDEX `purchaseid_fk_idx` (`purchaseid` ASC) VISIBLE,
  INDEX `itemsid_idx` (`itemsid` ASC) VISIBLE,
  CONSTRAINT `purchaseid_fk`
    FOREIGN KEY (`purchaseid`)
    REFERENCES `purchaseorder` (`purchaseid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `itemsid`
    FOREIGN KEY (`itemsid`)
    REFERENCES `items` (`itemsid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);