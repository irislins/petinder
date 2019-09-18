SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE DATABASE IF NOT EXISTS `petinder` DEFAULT CHARACTER SET utf8 ;
USE `petinder` ;

CREATE TABLE IF NOT EXISTS `petinder`.`USUARIO` (
  `cod` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `senha` CHAR(10) NOT NULL,
  `animais` TINYINT NOT NULL,
  `moradia` ENUM('casa', 'apartamento') NOT NULL,
  `info_adic` VARCHAR(255) NULL,
  PRIMARY KEY (`cod`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `petinder`.`ADMIN` (
  `cod` INT NOT NULL AUTO_INCREMENT,
  `qt_animais` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `email` VARCHAR(100) NOT NULL,
  `senha` CHAR(10) NOT NULL,
  PRIMARY KEY (`cod`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `petinder`.`MENSAGEM` (
  `cod` INT NOT NULL AUTO_INCREMENT,
  `data_hora` DATETIME NOT NULL,
  `texto` VARCHAR(255) NOT NULL,
  `USUARIO_cod` INT NOT NULL,
  `ADMIN_cod` INT NOT NULL,
  PRIMARY KEY (`cod`),
  INDEX `fk_MENSAGEM_USUARIO_idx` (`USUARIO_cod` ASC),
  INDEX `fk_MENSAGEM_ADMIN1_idx` (`ADMIN_cod` ASC),
  CONSTRAINT `fk_MENSAGEM_USUARIO`
    FOREIGN KEY (`USUARIO_cod`)
    REFERENCES `petinder`.`USUARIO` (`cod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_MENSAGEM_ADMIN1`
    FOREIGN KEY (`ADMIN_cod`)
    REFERENCES `petinder`.`ADMIN` (`cod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `petinder`.`ANIMAL` (
  `cod` INT NOT NULL AUTO_INCREMENT,
  `tamanho` ENUM('medio', 'pequeno', 'grande') NOT NULL,
  `sexo` ENUM('M', 'F') NOT NULL,
  `idade` TINYINT(2) NOT NULL,
  `info_adic` VARCHAR(255) NULL,
  `nome` VARCHAR(45) NOT NULL,
  `ADMIN_cod` INT NOT NULL,
  PRIMARY KEY (`cod`),
  INDEX `fk_ANIMAL_ADMIN1_idx` (`ADMIN_cod` ASC),
  CONSTRAINT `fk_ANIMAL_ADMIN1`
    FOREIGN KEY (`ADMIN_cod`)
    REFERENCES `petinder`.`ADMIN` (`cod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `petinder`.`IMG_ANIMAL` (
  `cod` INT NOT NULL AUTO_INCREMENT,
  `local` VARCHAR(45) NOT NULL,
  `ANIMAL_cod` INT NOT NULL,
  PRIMARY KEY (`cod`),
  INDEX `fk_IMG_ANIMAL_ANIMAL1_idx` (`ANIMAL_cod` ASC),
  CONSTRAINT `fk_IMG_ANIMAL_ANIMAL1`
    FOREIGN KEY (`ANIMAL_cod`)
    REFERENCES `petinder`.`ANIMAL` (`cod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `petinder`.`RACA` (
  `cod` INT NOT NULL AUTO_INCREMENT,
  `nome` INT NOT NULL,
  PRIMARY KEY (`cod`))
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Akita',2),
 INSERT INTO RACA values('american staffordshire terrier',2),
 INSERT INTO RACA values('Basset hound',2),
 INSERT INTO RACA values('Beagle',2),
 INSERT INTO RACA values('Bichon Frisé',2),
 INSERT INTO RACA values('Border Collie',2),
 INSERT INTO RACA values('Boston Terrier',2),
 INSERT INTO RACA values('Boxer',2),
 INSERT INTO RACA values('Buldogue Francês',2),
 INSERT INTO RACA values('Buldogue Inglês',2),
 INSERT INTO RACA values('Bull Terrier',2),
 INSERT INTO RACA values('Cane Corso',2),
 INSERT INTO RACA values('Cavalier Charles Spaniel',2),
 INSERT INTO RACA values('Chihuahua',2),
 INSERT INTO RACA values('Chow Chow',2),
 INSERT INTO RACA values('Cocker Spaniel Inglês',2),
 INSERT INTO RACA values('Dachshund',2),
 INSERT INTO RACA values('Dálmata',2),
 INSERT INTO RACA values('Doberman',2),
 INSERT INTO RACA values('Dogo Argentino',2),
 INSERT INTO RACA values('Dogue Alemão',2),
 INSERT INTO RACA values('Fila Brasileiro',2),
 INSERT INTO RACA values('Golden Retriever',2),
 INSERT INTO RACA values('Husky Siberiano',2),
 INSERT INTO RACA values('Jack Russel Terrier',2),
 INSERT INTO RACA values('Labrador Retriever',2),
 INSERT INTO RACA values('Lhasa Apso',2),
 INSERT INTO RACA values('Lulu da Pomerânia',2),
 INSERT INTO RACA values('Maltês',2),
 INSERT INTO RACA values('Mastiff Inglês',2),
 INSERT INTO RACA values('Mastim Tiberiano',2),
 INSERT INTO RACA values('Pastor Alemão',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),
 INSERT INTO RACA values('Sem Raça Definida',2),

ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `petinder`.`ESPECIE` (
  `cod` INT NOT NULL AUTO_INCREMENT,
  `nome` INT NOT NULL
  `ANIMAL_cod` INT NOT NULL,
  `RACA_cod` INT NOT NULL,
  PRIMARY KEY (`cod`),
  INDEX `fk_ESPECIE_ANIMAL1_idx` (`ANIMAL_cod` ASC),
  INDEX `fk_ESPECIE_RACA1_idx` (`RACA_cod` ASC),
  CONSTRAINT `fk_ESPECIE_ANIMAL1`
    FOREIGN KEY (`ANIMAL_cod`)
    REFERENCES `petinder`.`ANIMAL` (`cod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ESPECIE_RACA1`
    FOREIGN KEY (`RACA_cod`)
    REFERENCES `petinder`.`RACA` (`cod`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
