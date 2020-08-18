SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema 
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema 
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `` DEFAULT CHARACTER SET utf8 ;
USE `` ;

-- -----------------------------------------------------
-- Table ``.`commerce`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ``.`commerce` (
  `Markets` INT NOT NULL AUTO_INCREMENT,
  `Companies` VARCHAR(45) NOT NULL COMMENT '		',
  `Cities` VARCHAR(45) NOT NULL,
  `Customers` VARCHAR(45) NOT NULL,
  `Annual Profits` INT UNSIGNED NOT NULL,
  `Year` INT NOT NULL,
  PRIMARY KEY (`Markets`, `Companies`, `Cities`, `Customers`, `Annual Profits`, `Year`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = DEFAULT;


-- -----------------------------------------------------
-- Table ``.`Marketing`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ``.`Marketing` (
  `Valuable Areas of markets` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Company ID` INT NOT NULL,
  `High Density populated cities` VARCHAR(45) NOT NULL,
  `Names` VARCHAR(45) NOT NULL,
  `Income` INT NOT NULL,
  `Date` INT NOT NULL,
  PRIMARY KEY (`Valuable Areas of markets`, `Company ID`, `High Density populated cities`, `Names`, `Income`, `Date`),
  UNIQUE INDEX `Company ID_UNIQUE` (`Company ID` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table ``.`New customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ``.`New customers` (
  `Countries` INT UNSIGNED NOT NULL,
  `Numbers` INT NOT NULL,
  `Profits` INT NOT NULL,
  `Area Code` INT NOT NULL,
  PRIMARY KEY (`Countries`, `Numbers`, `Profits`, `Area Code`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table ``.`Annual perfomance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ``.`Annual perfomance` (
  `Amount of income` INT NOT NULL AUTO_INCREMENT,
  `Expectation` INT NOT NULL,
  `Profit loss` INT NOT NULL,
  PRIMARY KEY (`Amount of income`, `Expectation`, `Profit loss`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table ``.`commerce_has_commerce`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ``.`commerce_has_commerce` (
  `commerce_Markets` INT NOT NULL,
  `commerce_Companies` VARCHAR(45) NOT NULL,
  `commerce_Cities` VARCHAR(45) NOT NULL,
  `commerce_Customers` VARCHAR(45) NOT NULL,
  `commerce_Annual Profits` INT UNSIGNED NOT NULL,
  `commerce_Year` INT NOT NULL,
  `commerce_Markets1` INT NOT NULL,
  `commerce_Companies1` VARCHAR(45) NOT NULL,
  `commerce_Cities1` VARCHAR(45) NOT NULL,
  `commerce_Customers1` VARCHAR(45) NOT NULL,
  `commerce_Annual Profits1` INT UNSIGNED NOT NULL,
  `commerce_Year1` INT NOT NULL,
  PRIMARY KEY (`commerce_Markets`, `commerce_Companies`, `commerce_Cities`, `commerce_Customers`, `commerce_Annual Profits`, `commerce_Year`, `commerce_Markets1`, `commerce_Companies1`, `commerce_Cities1`, `commerce_Customers1`, `commerce_Annual Profits1`, `commerce_Year1`),
  INDEX `fk_commerce_has_commerce_commerce1_idx` (`commerce_Markets1` ASC, `commerce_Companies1` ASC, `commerce_Cities1` ASC, `commerce_Customers1` ASC, `commerce_Annual Profits1` ASC, `commerce_Year1` ASC) VISIBLE,
  INDEX `fk_commerce_has_commerce_commerce_idx` (`commerce_Markets` ASC, `commerce_Companies` ASC, `commerce_Cities` ASC, `commerce_Customers` ASC, `commerce_Annual Profits` ASC, `commerce_Year` ASC) VISIBLE,
  CONSTRAINT `fk_commerce_has_commerce_commerce`
    FOREIGN KEY (`commerce_Markets` , `commerce_Companies` , `commerce_Cities` , `commerce_Customers` , `commerce_Annual Profits` , `commerce_Year`)
    REFERENCES ``.`commerce` (`Markets` , `Companies` , `Cities` , `Customers` , `Annual Profits` , `Year`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_commerce_has_commerce_commerce1`
    FOREIGN KEY (`commerce_Markets1` , `commerce_Companies1` , `commerce_Cities1` , `commerce_Customers1` , `commerce_Annual Profits1` , `commerce_Year1`)
    REFERENCES ``.`commerce` (`Markets` , `Companies` , `Cities` , `Customers` , `Annual Profits` , `Year`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = DEFAULT;


-- -----------------------------------------------------
-- Table ``.`commerce_has_commerce_has_New customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ``.`commerce_has_commerce_has_New customers` (
  `commerce_has_commerce_commerce_Markets` INT NOT NULL,
  `commerce_has_commerce_commerce_Companies` VARCHAR(45) NOT NULL,
  `commerce_has_commerce_commerce_Cities` VARCHAR(45) NOT NULL,
  `commerce_has_commerce_commerce_Customers` VARCHAR(45) NOT NULL,
  `commerce_has_commerce_commerce_Annual Profits` INT UNSIGNED NOT NULL,
  `commerce_has_commerce_commerce_Year` INT NOT NULL,
  `commerce_has_commerce_commerce_Markets1` INT NOT NULL,
  `commerce_has_commerce_commerce_Companies1` VARCHAR(45) NOT NULL,
  `commerce_has_commerce_commerce_Cities1` VARCHAR(45) NOT NULL,
  `commerce_has_commerce_commerce_Customers1` VARCHAR(45) NOT NULL,
  `commerce_has_commerce_commerce_Annual Profits1` INT UNSIGNED NOT NULL,
  `commerce_has_commerce_commerce_Year1` INT NOT NULL,
  `New customers_Countries` INT UNSIGNED NOT NULL,
  `New customers_Numbers` INT NOT NULL,
  `New customers_Profits` INT NOT NULL,
  `New customers_Area Code` INT NOT NULL,
  PRIMARY KEY (`commerce_has_commerce_commerce_Markets`, `commerce_has_commerce_commerce_Companies`, `commerce_has_commerce_commerce_Cities`, `commerce_has_commerce_commerce_Customers`, `commerce_has_commerce_commerce_Annual Profits`, `commerce_has_commerce_commerce_Year`, `commerce_has_commerce_commerce_Markets1`, `commerce_has_commerce_commerce_Companies1`, `commerce_has_commerce_commerce_Cities1`, `commerce_has_commerce_commerce_Customers1`, `commerce_has_commerce_commerce_Annual Profits1`, `commerce_has_commerce_commerce_Year1`, `New customers_Countries`, `New customers_Numbers`, `New customers_Profits`, `New customers_Area Code`),
  INDEX `fk_commerce_has_commerce_has_New customers_New customers1_idx` (`New customers_Countries` ASC, `New customers_Numbers` ASC, `New customers_Profits` ASC, `New customers_Area Code` ASC) VISIBLE,
  INDEX `fk_commerce_has_commerce_has_New customers_commerce_has_com_idx` (`commerce_has_commerce_commerce_Markets` ASC, `commerce_has_commerce_commerce_Companies` ASC, `commerce_has_commerce_commerce_Cities` ASC, `commerce_has_commerce_commerce_Customers` ASC, `commerce_has_commerce_commerce_Annual Profits` ASC, `commerce_has_commerce_commerce_Year` ASC, `commerce_has_commerce_commerce_Markets1` ASC, `commerce_has_commerce_commerce_Companies1` ASC, `commerce_has_commerce_commerce_Cities1` ASC, `commerce_has_commerce_commerce_Customers1` ASC, `commerce_has_commerce_commerce_Annual Profits1` ASC, `commerce_has_commerce_commerce_Year1` ASC) VISIBLE,
  CONSTRAINT `fk_commerce_has_commerce_has_New customers_commerce_has_comme1`
    FOREIGN KEY (`commerce_has_commerce_commerce_Markets` , `commerce_has_commerce_commerce_Companies` , `commerce_has_commerce_commerce_Cities` , `commerce_has_commerce_commerce_Customers` , `commerce_has_commerce_commerce_Annual Profits` , `commerce_has_commerce_commerce_Year` , `commerce_has_commerce_commerce_Markets1` , `commerce_has_commerce_commerce_Companies1` , `commerce_has_commerce_commerce_Cities1` , `commerce_has_commerce_commerce_Customers1` , `commerce_has_commerce_commerce_Annual Profits1` , `commerce_has_commerce_commerce_Year1`)
    REFERENCES ``.`commerce_has_commerce` (`commerce_Markets` , `commerce_Companies` , `commerce_Cities` , `commerce_Customers` , `commerce_Annual Profits` , `commerce_Year` , `commerce_Markets1` , `commerce_Companies1` , `commerce_Cities1` , `commerce_Customers1` , `commerce_Annual Profits1` , `commerce_Year1`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_commerce_has_commerce_has_New customers_New customers1`
    FOREIGN KEY (`New customers_Countries` , `New customers_Numbers` , `New customers_Profits` , `New customers_Area Code`)
    REFERENCES ``.`New customers` (`Countries` , `Numbers` , `Profits` , `Area Code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = DEFAULT;


-- -----------------------------------------------------
-- Table ``.`Marketing_has_New customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ``.`Marketing_has_New customers` (
  `Marketing_Valuable Areas of markets` INT UNSIGNED NOT NULL,
  `Marketing_Company ID` INT NOT NULL,
  `Marketing_High Density populated cities` VARCHAR(45) NOT NULL,
  `Marketing_Names` VARCHAR(45) NOT NULL,
  `Marketing_Income` INT NOT NULL,
  `Marketing_Date` INT NOT NULL,
  `New customers_Countries` INT UNSIGNED NOT NULL,
  `New customers_Numbers` INT NOT NULL,
  `New customers_Profits` INT NOT NULL,
  `New customers_Area Code` INT NOT NULL,
  PRIMARY KEY (`Marketing_Valuable Areas of markets`, `Marketing_Company ID`, `Marketing_High Density populated cities`, `Marketing_Names`, `Marketing_Income`, `Marketing_Date`, `New customers_Countries`, `New customers_Numbers`, `New customers_Profits`, `New customers_Area Code`),
  INDEX `fk_Marketing_has_New customers_New customers1_idx` (`New customers_Countries` ASC, `New customers_Numbers` ASC, `New customers_Profits` ASC, `New customers_Area Code` ASC) VISIBLE,
  INDEX `fk_Marketing_has_New customers_Marketing1_idx` (`Marketing_Valuable Areas of markets` ASC, `Marketing_Company ID` ASC, `Marketing_High Density populated cities` ASC, `Marketing_Names` ASC, `Marketing_Income` ASC, `Marketing_Date` ASC) VISIBLE,
  CONSTRAINT `fk_Marketing_has_New customers_Marketing1`
    FOREIGN KEY (`Marketing_Valuable Areas of markets` , `Marketing_Company ID` , `Marketing_High Density populated cities` , `Marketing_Names` , `Marketing_Income` , `Marketing_Date`)
    REFERENCES ``.`Marketing` (`Valuable Areas of markets` , `Company ID` , `High Density populated cities` , `Names` , `Income` , `Date`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Marketing_has_New customers_New customers1`
    FOREIGN KEY (`New customers_Countries` , `New customers_Numbers` , `New customers_Profits` , `New customers_Area Code`)
    REFERENCES ``.`New customers` (`Countries` , `Numbers` , `Profits` , `Area Code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table ``.`Marketing_has_New customers_has_Annual perfomance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ``.`Marketing_has_New customers_has_Annual perfomance` (
  `Marketing_has_New customers_Marketing_Valuable Areas of markets` INT UNSIGNED NOT NULL,
  `Marketing_has_New customers_Marketing_Company ID` INT NOT NULL,
  `Marketing_has_New customers_Marketing_High Density populated cities` VARCHAR(45) NOT NULL,
  `Marketing_has_New customers_Marketing_Names` VARCHAR(45) NOT NULL,
  `Marketing_has_New customers_Marketing_Income` INT NOT NULL,
  `Marketing_has_New customers_Marketing_Date` INT NOT NULL,
  `Marketing_has_New customers_New customers_Countries` INT UNSIGNED NOT NULL,
  `Marketing_has_New customers_New customers_Numbers` INT NOT NULL,
  `Marketing_has_New customers_New customers_Profits` INT NOT NULL,
  `Marketing_has_New customers_New customers_Area Code` INT NOT NULL,
  `Annual perfomance_Amount of income` INT NOT NULL,
  `Annual perfomance_Expectation` INT NOT NULL,
  `Annual perfomance_Profit loss` INT NOT NULL,
  PRIMARY KEY (`Marketing_has_New customers_Marketing_Valuable Areas of markets`, `Marketing_has_New customers_Marketing_Company ID`, `Marketing_has_New customers_Marketing_High Density populated cities`, `Marketing_has_New customers_Marketing_Names`, `Marketing_has_New customers_Marketing_Income`, `Marketing_has_New customers_Marketing_Date`, `Marketing_has_New customers_New customers_Countries`, `Marketing_has_New customers_New customers_Numbers`, `Marketing_has_New customers_New customers_Profits`, `Marketing_has_New customers_New customers_Area Code`, `Annual perfomance_Amount of income`, `Annual perfomance_Expectation`, `Annual perfomance_Profit loss`),
  INDEX `fk_Marketing_has_New customers_has_Annual perfomance_Annual_idx` (`Annual perfomance_Amount of income` ASC, `Annual perfomance_Expectation` ASC, `Annual perfomance_Profit loss` ASC) VISIBLE,
  INDEX `fk_Marketing_has_New customers_has_Annual perfomance_Market_idx` (`Marketing_has_New customers_Marketing_Valuable Areas of markets` ASC, `Marketing_has_New customers_Marketing_Company ID` ASC, `Marketing_has_New customers_Marketing_High Density populated cities` ASC, `Marketing_has_New customers_Marketing_Names` ASC, `Marketing_has_New customers_Marketing_Income` ASC, `Marketing_has_New customers_Marketing_Date` ASC, `Marketing_has_New customers_New customers_Countries` ASC, `Marketing_has_New customers_New customers_Numbers` ASC, `Marketing_has_New customers_New customers_Profits` ASC, `Marketing_has_New customers_New customers_Area Code` ASC) VISIBLE,
  CONSTRAINT `fk_Marketing_has_New customers_has_Annual perfomance_Marketin1`
    FOREIGN KEY (`Marketing_has_New customers_Marketing_Valuable Areas of markets` , `Marketing_has_New customers_Marketing_Company ID` , `Marketing_has_New customers_Marketing_High Density populated cities` , `Marketing_has_New customers_Marketing_Names` , `Marketing_has_New customers_Marketing_Income` , `Marketing_has_New customers_Marketing_Date` , `Marketing_has_New customers_New customers_Countries` , `Marketing_has_New customers_New customers_Numbers` , `Marketing_has_New customers_New customers_Profits` , `Marketing_has_New customers_New customers_Area Code`)
    REFERENCES ``.`Marketing_has_New customers` (`Marketing_Valuable Areas of markets` , `Marketing_Company ID` , `Marketing_High Density populated cities` , `Marketing_Names` , `Marketing_Income` , `Marketing_Date` , `New customers_Countries` , `New customers_Numbers` , `New customers_Profits` , `New customers_Area Code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Marketing_has_New customers_has_Annual perfomance_Annual p1`
    FOREIGN KEY (`Annual perfomance_Amount of income` , `Annual perfomance_Expectation` , `Annual perfomance_Profit loss`)
    REFERENCES ``.`Annual perfomance` (`Amount of income` , `Expectation` , `Profit loss`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table ``.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ``.`table1` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table ``.`table2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ``.`table2` (
)
ENGINE = InnoDB;

USE `` ;

-- -----------------------------------------------------
-- Placeholder table for view ``.`view1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ``.`view1` (`id` INT);

-- -----------------------------------------------------
--  routine1
-- -----------------------------------------------------

DELIMITER $$
USE ``$$
$$

DELIMITER ;

-- -----------------------------------------------------
-- View ``.`view1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS ``.`view1`;
USE ``;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
