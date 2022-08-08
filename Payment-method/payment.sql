/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.30-log : Database - payment
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`payment` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `payment`;

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `body` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `message` */

insert  into `message`(`id`,`email`,`subject`,`body`) values 
(1,'Zhaoyihui@gmail.com','Transaction ','Transaction error occurred');

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `id` int(11) DEFAULT NULL,
  `transactionAmount` int(11) DEFAULT NULL,
  `userName` varchar(100) DEFAULT NULL,
  `transactionDate` varchar(100) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transaction` */

insert  into `transaction`(`id`,`transactionAmount`,`userName`,`transactionDate`,`active`) values 
(1,500,'Zhaoyihui','Tue Apr 26 03:29:04 PKT 2022','Yes'),
(1,50,'Zhaoyihui','Tue Apr 26 03:42:00 PKT 2022','Yes');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userBalance` int(11) DEFAULT NULL,
  `userName` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `homeAddress` varchar(100) DEFAULT NULL,
  `postalCode` varchar(100) DEFAULT NULL,
  `contactTelephone` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `userAccount` varchar(100) DEFAULT NULL,
  `userPassword` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`userBalance`,`userName`,`gender`,`city`,`homeAddress`,`postalCode`,`contactTelephone`,`email`,`userAccount`,`userPassword`) values 
(350,'Zhaoyihui','Male','States','M-45 United States','4500','776655','Zhaoyihui@gmail.com','1122','1122');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
