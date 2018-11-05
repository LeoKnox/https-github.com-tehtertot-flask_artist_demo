-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema art_works
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `art_works` ;

-- -----------------------------------------------------
-- Schema art_works
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `art_works` DEFAULT CHARACTER SET utf8 ;
USE `art_works` ;

-- -----------------------------------------------------
-- Table `art_works`.`artists`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `art_works`.`artists` ;

CREATE TABLE IF NOT EXISTS `art_works`.`artists` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(60) NULL,
  `birthday` DATE NULL,
  `deathday` DATE NULL,
  `created_at` TIMESTAMP NULL DEFAULT now(),
  `updated_at` TIMESTAMP NULL DEFAULT now() on update now(),
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
