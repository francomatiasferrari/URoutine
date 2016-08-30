# SQL Manager Lite for MySQL 5.5.3.46192
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : urutine_db


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `urutine_db`
    CHARACTER SET 'utf8'
    COLLATE 'utf8_general_ci';

USE `urutine_db`;

#
# Structure for the `personas` table : 
#

CREATE TABLE `personas` (
  `id_usu` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `apellido` VARCHAR(20) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mail` VARCHAR(50) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `usu` VARCHAR(20) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pass` VARCHAR(20) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `foto` VARCHAR(100) COLLATE utf8_general_ci DEFAULT NULL,
  `fec_nac` DATE DEFAULT NULL,
  `estado_adm` TINYINT(1) NOT NULL,
  `estado_cuenta` INTEGER(11) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`id_usu`) USING BTREE
) ENGINE=InnoDB
AUTO_INCREMENT=7 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `rutinas` table : 
#

CREATE TABLE `rutinas` (
  `id_usu` INTEGER(11) NOT NULL,
  `nro_rutina` INTEGER(11) NOT NULL,
  `fec_creacion` DATE NOT NULL,
  PRIMARY KEY (`id_usu`, `nro_rutina`) USING BTREE,
  KEY `id_usu` (`id_usu`) USING BTREE,
  CONSTRAINT `rutinas_fk1` FOREIGN KEY (`id_usu`) REFERENCES `personas` (`id_usu`)
) ENGINE=InnoDB
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT='InnoDB free: 11264 kB; (`id_usu`) REFER `urutine_db/personas`(`id_usu`)';

#
# Structure for the `dias_rutinas` table : 
#

CREATE TABLE `dias_rutinas` (
  `id_usu` INTEGER(11) NOT NULL,
  `nro_rutina` INTEGER(11) NOT NULL,
  `nro_dia` INTEGER(11) NOT NULL,
  PRIMARY KEY (`id_usu`, `nro_rutina`, `nro_dia`) USING BTREE,
  KEY `id_usu` (`id_usu`, `nro_rutina`) USING BTREE,
  CONSTRAINT `dias_rutinas_fk1` FOREIGN KEY (`id_usu`, `nro_rutina`) REFERENCES `rutinas` (`id_usu`, `nro_rutina`)
) ENGINE=InnoDB
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT='InnoDB free: 11264 kB; (`id_usu` `nro_rutina`) REFER `urutine_db/rutinas`(`id_us';

#
# Structure for the `grupos_m` table : 
#

CREATE TABLE `grupos_m` (
  `cod_grupom` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre_gm` VARCHAR(20) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`cod_grupom`) USING BTREE
) ENGINE=InnoDB
AUTO_INCREMENT=7 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT='InnoDB free: 11264 kB';

#
# Structure for the `ejercicios` table : 
#

CREATE TABLE `ejercicios` (
  `cod_ejer` INTEGER(11) NOT NULL AUTO_INCREMENT,
  `nombre_ej` VARCHAR(20) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `descripcion` VARCHAR(200) COLLATE utf8_general_ci DEFAULT NULL,
  `foto1` VARCHAR(100) COLLATE utf8_general_ci DEFAULT NULL,
  `foto2` VARCHAR(100) COLLATE utf8_general_ci DEFAULT NULL,
  `fec_aceptacion` DATE DEFAULT NULL,
  `fec_prop` DATE NOT NULL,
  `fec_recha` DATE DEFAULT NULL,
  `id_usu` INTEGER(11) DEFAULT NULL,
  `id_usuAdmin` INTEGER(11) DEFAULT NULL,
  `cod_grupom` INTEGER(11) NOT NULL,
  PRIMARY KEY (`cod_ejer`) USING BTREE,
  KEY `id_usu` (`id_usu`) USING BTREE,
  KEY `ejercicios_fk2` (`id_usuAdmin`) USING BTREE,
  KEY `ejercicios_fk3` (`cod_grupom`) USING BTREE,
  CONSTRAINT `ejercicios_fk1` FOREIGN KEY (`id_usu`) REFERENCES `personas` (`id_usu`),
  CONSTRAINT `ejercicios_fk2` FOREIGN KEY (`id_usuAdmin`) REFERENCES `personas` (`id_usu`),
  CONSTRAINT `ejercicios_fk3` FOREIGN KEY (`cod_grupom`) REFERENCES `grupos_m` (`cod_grupom`)
) ENGINE=InnoDB
AUTO_INCREMENT=9 CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT='InnoDB free: 11264 kB; (`id_usu`) REFER `urutine_db/personas`(`id_usu`); (`id_us';

#
# Structure for the `series` table : 
#

CREATE TABLE `series` (
  `id_usu` INTEGER(11) NOT NULL,
  `fec` DATE NOT NULL,
  `nro_rutina` INTEGER(11) NOT NULL,
  `cod_ejer` INTEGER(11) NOT NULL,
  `nro_serie` INTEGER(11) NOT NULL,
  `rep` INTEGER(11) DEFAULT NULL,
  `peso` INTEGER(11) DEFAULT NULL,
  `nro_dia` INTEGER(11) DEFAULT NULL,
  PRIMARY KEY (`id_usu`, `fec`, `nro_rutina`, `cod_ejer`, `nro_serie`) USING BTREE,
  KEY `series_fk1` (`id_usu`, `nro_rutina`, `nro_dia`) USING BTREE,
  KEY `series_fk2` (`cod_ejer`) USING BTREE,
  CONSTRAINT `series_fk1` FOREIGN KEY (`id_usu`, `nro_rutina`, `nro_dia`) REFERENCES `dias_rutinas` (`id_usu`, `nro_rutina`, `nro_dia`),
  CONSTRAINT `series_fk2` FOREIGN KEY (`cod_ejer`) REFERENCES `ejercicios` (`cod_ejer`)
) ENGINE=InnoDB
CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'
COMMENT='InnoDB free: 11264 kB; (`id_usu` `nro_rutina` `nro_dia`) REFER `urutine_db/dias_';

#
# Data for the `personas` table  (LIMIT 0,500)
#

INSERT INTO `personas` (`id_usu`, `nombre`, `apellido`, `mail`, `usu`, `pass`, `foto`, `fec_nac`, `estado_adm`, `estado_cuenta`) VALUES
  (1,'franco','ferrari','francomatiasferrari@gmail.com','francomatiasferrari','1234',NULL,'1994-07-01',0,00000000000),
  (2,'carlos','flury','car.flury@gmail.com','florycar','1234',NULL,'1994-08-26',0,00000000000),
  (3,'tomas','makek','tom.makek@gmail.com','tomas','5678',NULL,'1995-02-05',1,00000000001),
  (4,'juani','ferreyra','elflaco@gmail.com','flaco','1234',NULL,'1993-11-22',1,00000000000),
  (5,'sebastian','lescoul','seba.facha@gmail.com','facha','1234',NULL,'1992-04-12',0,00000000000),
  (6,'Rosco','Rosquete','rc_sexy@mail.com','123','123',NULL,'1944-01-01',0,00000000000);
COMMIT;

#
# Data for the `rutinas` table  (LIMIT 0,500)
#

INSERT INTO `rutinas` (`id_usu`, `nro_rutina`, `fec_creacion`) VALUES
  (1,1,'2016-04-08'),
  (1,2,'2016-05-08'),
  (2,1,'2016-09-20'),
  (5,1,'2016-08-10');
COMMIT;

#
# Data for the `dias_rutinas` table  (LIMIT 0,500)
#

INSERT INTO `dias_rutinas` (`id_usu`, `nro_rutina`, `nro_dia`) VALUES
  (1,1,1),
  (1,1,2),
  (1,1,3),
  (1,2,1),
  (1,2,2),
  (2,1,1),
  (2,1,2),
  (2,1,3),
  (5,1,1);
COMMIT;

#
# Data for the `grupos_m` table  (LIMIT 0,500)
#

INSERT INTO `grupos_m` (`cod_grupom`, `nombre_gm`) VALUES
  (1,'espalda'),
  (2,'pecho'),
  (3,'biceps'),
  (4,'triceps'),
  (5,'piernas'),
  (6,'hombros');
COMMIT;

#
# Data for the `ejercicios` table  (LIMIT 0,500)
#

INSERT INTO `ejercicios` (`cod_ejer`, `nombre_ej`, `descripcion`, `foto1`, `foto2`, `fec_aceptacion`, `fec_prop`, `fec_recha`, `id_usu`, `id_usuAdmin`, `cod_grupom`) VALUES
  (1,'sentadillas','agacharse y pararse',NULL,NULL,'2016-04-08','2016-04-08',NULL,1,3,5),
  (2,'prensa','trabajo con maquinaria. Cuadriceps',NULL,NULL,'2016-04-08','2016-04-08',NULL,2,3,5),
  (3,'dominadas','levantarse colgado de una barra',NULL,NULL,'2016-04-08','2016-04-08',NULL,1,4,1),
  (4,'paloma','con mancuernas',NULL,NULL,'2016-04-08','2016-04-08',NULL,5,3,6),
  (5,'pecho plano','pecho con barra en recostado en banca',NULL,NULL,'2016-04-08','2016-04-08',NULL,2,3,2),
  (6,'biceps W','biceps con barra W',NULL,NULL,'2016-04-08','2016-08-04',NULL,4,4,3),
  (7,'serrucho','levantar mancuerna a una mano desde el piso',NULL,NULL,NULL,'2016-05-20',NULL,2,3,1),
  (8,'subida al banco','subir con una pierna a un banco sosteniendo peso',NULL,NULL,'2016-05-20','2016-05-10','2016-05-24',1,4,5);
COMMIT;

#
# Data for the `series` table  (LIMIT 0,500)
#

INSERT INTO `series` (`id_usu`, `fec`, `nro_rutina`, `cod_ejer`, `nro_serie`, `rep`, `peso`, `nro_dia`) VALUES
  (1,'2016-04-08',1,1,1,10,50,1),
  (1,'2016-04-08',1,1,2,10,50,1),
  (1,'2016-04-08',1,1,3,10,50,1),
  (1,'2016-04-08',1,2,1,10,60,1),
  (1,'2016-04-08',1,2,2,10,60,1),
  (1,'2016-04-08',1,2,3,10,60,1),
  (1,'2016-04-10',1,5,1,8,30,2),
  (1,'2016-04-10',1,5,2,8,30,2),
  (1,'2016-04-10',1,5,3,8,30,2),
  (1,'2016-04-10',1,5,4,8,30,2),
  (1,'2016-04-10',1,6,1,8,10,2),
  (1,'2016-04-10',1,6,2,8,10,2),
  (1,'2016-04-10',1,6,3,8,10,2),
  (1,'2016-04-10',1,6,4,8,10,2),
  (1,'2016-04-12',1,3,1,3,0,3),
  (1,'2016-04-12',1,3,2,3,0,3),
  (1,'2016-04-12',1,3,3,3,0,3),
  (1,'2016-04-12',1,3,4,3,0,3),
  (1,'2016-04-12',1,4,1,8,10,3),
  (1,'2016-04-12',1,4,2,8,10,3),
  (1,'2016-04-12',1,4,3,8,10,3),
  (1,'2016-04-12',1,4,4,8,10,3),
  (1,'2016-04-14',1,1,1,10,60,1),
  (1,'2016-04-14',1,1,2,10,65,1),
  (1,'2016-04-14',1,1,3,10,65,1),
  (1,'2016-04-14',1,2,1,10,60,1),
  (1,'2016-04-14',1,2,2,10,60,1),
  (1,'2016-04-14',1,2,3,10,65,1),
  (1,'2016-04-16',1,5,1,8,30,2),
  (1,'2016-04-16',1,5,2,8,30,2),
  (1,'2016-04-16',1,5,3,8,35,2),
  (1,'2016-04-16',1,5,4,8,35,2),
  (1,'2016-04-16',1,6,1,8,10,2),
  (1,'2016-04-16',1,6,2,8,10,2),
  (1,'2016-04-16',1,6,3,8,10,2),
  (1,'2016-04-16',1,6,4,8,10,2),
  (1,'2016-04-18',1,3,1,5,0,3),
  (1,'2016-04-18',1,3,2,5,0,3),
  (1,'2016-04-18',1,3,3,5,0,3),
  (1,'2016-04-18',1,3,4,5,0,3),
  (1,'2016-04-18',1,4,1,8,10,3),
  (1,'2016-04-18',1,4,2,8,10,3),
  (1,'2016-04-18',1,4,3,8,10,3),
  (1,'2016-04-18',1,4,4,8,10,3),
  (1,'2016-04-20',1,1,1,10,65,1),
  (1,'2016-04-20',1,1,2,10,65,1),
  (1,'2016-04-20',1,1,3,10,65,1),
  (1,'2016-04-20',1,2,1,10,60,1),
  (1,'2016-04-20',1,2,2,10,65,1),
  (1,'2016-04-20',1,2,3,10,65,1),
  (1,'2016-04-22',1,5,1,8,30,2),
  (1,'2016-04-22',1,5,2,8,35,2),
  (1,'2016-04-22',1,5,3,8,35,2),
  (1,'2016-04-22',1,5,4,8,40,2),
  (1,'2016-04-22',1,6,1,8,10,2),
  (1,'2016-04-22',1,6,2,8,10,2),
  (1,'2016-04-22',1,6,3,8,15,2),
  (1,'2016-04-22',1,6,4,8,15,2),
  (1,'2016-04-25',1,3,1,5,0,3),
  (1,'2016-04-25',1,3,2,5,0,3),
  (1,'2016-04-25',1,3,3,5,0,3),
  (1,'2016-04-25',1,3,4,5,0,3),
  (1,'2016-04-25',1,4,1,8,10,3),
  (1,'2016-04-25',1,4,2,8,10,3),
  (1,'2016-04-25',1,4,3,8,10,3),
  (1,'2016-04-25',1,4,4,8,12,3),
  (1,'2016-05-08',2,1,1,10,70,1),
  (1,'2016-05-08',2,1,2,10,70,1),
  (1,'2016-05-08',2,1,3,10,70,1),
  (1,'2016-05-08',2,2,1,10,65,1),
  (1,'2016-05-08',2,2,2,10,65,1),
  (1,'2016-05-08',2,2,3,10,65,1),
  (1,'2016-05-09',2,5,1,8,40,1),
  (1,'2016-05-09',2,5,2,8,40,1),
  (1,'2016-05-09',2,5,3,10,40,1),
  (1,'2016-05-09',2,5,4,10,40,1),
  (1,'2016-05-10',2,6,1,8,15,1),
  (1,'2016-05-10',2,6,2,8,15,1),
  (1,'2016-05-10',2,6,3,10,15,1),
  (1,'2016-05-10',2,6,4,10,15,1),
  (1,'2016-05-11',2,3,1,6,0,2),
  (1,'2016-05-11',2,3,2,6,0,2),
  (1,'2016-05-11',2,3,3,7,0,2),
  (1,'2016-05-11',2,4,1,8,12,2),
  (1,'2016-05-11',2,4,2,8,12,2),
  (1,'2016-05-11',2,4,3,8,12,2),
  (1,'2016-05-12',2,7,1,8,10,2),
  (1,'2016-05-12',2,7,2,8,10,2),
  (1,'2016-05-12',2,7,3,8,10,2),
  (1,'2016-05-12',2,7,4,8,10,2);
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;