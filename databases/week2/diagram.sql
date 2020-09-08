CREATE DATABASE diagram_db
USE diagram_db
-- -----------------------------------------------------
-- Table`Products`
-- -----------------------------------------------------
CREATE TABLE Products (
  `product_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `item is stock` VARCHAR(45) NOT NULL,
  `description` MEDIUMTEXT NULL,
  `Status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`product_id`);


-- -----------------------------------------------------
-- Table `Orders`
-- -----------------------------------------------------
CREATE TABLE Orders (
  `Orders` INT NOT NULL AUTO_INCREMENT,
  `item` VARCHAR(45) NULL,
  `quantity` INT NOT NULL,
  `color` VARCHAR(45) NULL,
  `Products_product_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Orders`),
  INDEX `fk_Orders_Products1_idx` (`Products_product_id` ASC) VISIBLE,
  CONSTRAINT `fk_Orders_Products1`
    FOREIGN KEY (`Products_product_id`)
    REFERENCES `mydb`.`Products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `customers`
-- -----------------------------------------------------
CREATE TABLE customers (
  `customer_id` INT NOT NULL,
  `Address` VARCHAR(45) NULL,
  `Phone number` INT NOT NULL AUTO_INCREMENT,
  `City` VARCHAR(45) NOT NULL,
  `Job title` VARCHAR(45) NULL,
  `Orders_Orders` INT NOT NULL,
  PRIMARY KEY (`customer_id`, `Orders_Orders`),
  UNIQUE INDEX `customer_id_UNIQUE` (`customer_id` ASC) VISIBLE,
  INDEX `fk_customers_Orders_idx` (`Orders_Orders` ASC) VISIBLE,
  CONSTRAINT `fk_customers_Orders`
    FOREIGN KEY (`Orders_Orders`)
    REFERENCES `mydb`.`Orders` (`Orders`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


