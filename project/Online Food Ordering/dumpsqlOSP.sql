/*
SQLyog Enterprise - MySQL GUI v8.02 RC
MySQL - 5.5.24-log : Database - trainingsummer
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`trainingsummer` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `trainingsummer`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `admid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(25) NOT NULL,
  `phno` varchar(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`admid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`admid`,`name`,`email`,`password`,`phno`,`gender`,`address`) values (1,'puneet','puneetk1998@gmail.com','123','9780440718','Male','93-a upkar nagar factory area patiala');

/*Table structure for table `blog` */

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `blogid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(25) NOT NULL,
  `description` mediumtext NOT NULL,
  `cusid` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `dateofadding` date NOT NULL,
  PRIMARY KEY (`blogid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `blog` */

insert  into `blog`(`blogid`,`title`,`description`,`cusid`,`active`,`dateofadding`) values (13,'Minimalist Baker','Few things are more disappointing than finding what seems like the perfect recipe only to click and learn that it has more than 20 ingredients, several of which you\'ve never heard of. True to its name, Minimalist Baker keeps things simple by sticking to 10 ingredients or less and limiting cook time to 30 minutes tops. Bonus: The recipes are anything but boring! From General Tso\'s tofu stir fry (pictured) to spicy buffalo chickpea wraps to toasted coconut pancakes, the culinary duo (John and Kate) really know how to pack tons of flavor into simple and oh-so-delicious dishes.',4,1,'2017-10-16');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `custid` int(11) NOT NULL,
  `menuitemid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `price` decimal(9,2) NOT NULL,
  `total` decimal(9,2) NOT NULL,
  `tempid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `itemname` varchar(25) NOT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cusid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(25) NOT NULL,
  `phno` varchar(11) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cusid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`cusid`,`name`,`email`,`password`,`phno`,`gender`,`address`,`active`) values (3,'Puneet kumar   ','puneetk1998@gmail.com','123','9054335633','1','93-a upkar nagar factory area patiala.           ',1),(8,'Sakhi','sakhibala@gmail.com','123','8298789012','2','',1),(9,'Esha','guptaesha123@gmail.com','123','876754534','2','23 urban estate phase 2',1),(10,'Taruna','taruna@gmail.com','1234','865787697','2','23 Anand nagar B',1),(12,'Taruna','taruna@gmail.com','1234','865787697','2','23 Anand nagar B',1),(13,'karan','karan@gmail.com','111','9988732287','1','YPS colony',1);

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `fedid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(23) NOT NULL,
  `description` mediumtext NOT NULL,
  `resid` int(11) NOT NULL,
  `cusid` int(11) NOT NULL,
  PRIMARY KEY (`fedid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`fedid`,`title`,`description`,`resid`,`cusid`) values (5,'Good Quality','Quality of food is good. Delivery at time.',1,3),(6,'price','prices are little high.',1,3);

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `menuitemid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `type` varchar(25) NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `resid` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`menuitemid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `menu` */

insert  into `menu`(`menuitemid`,`name`,`type`,`price`,`active`,`resid`,`description`) values (1,'pasta white','italian','200.00',1,1,'white sauce pasta with green vegetable'),(3,'pizza','Italian','110.00',1,1,'pizza with extra cheeze and topings'),(4,'Aloo Tiki','Burger','25.00',1,5,'Aloo tike with dahi and masalea'),(5,'Veg Burger','Burger','40.00',1,5,'Burger with mayonise and salad'),(6,'Chicken Burger','Burger','60.00',1,5,'Burger with crunchy chicken'),(7,'Onion Pizza','Pizza','80.00',1,5,''),(8,'Capcicum pizza','Pizza','80.00',1,5,''),(9,'Samosa','Indian','10.00',1,5,''),(10,'Manchurian','chinese','50.00',1,5,''),(11,'White Sauce Pasta','Italian','110.00',1,5,''),(12,'Red Sauce Pasta','Italian','90.00',1,5,''),(13,'Onion and capcicum pizza','pizza','60.00',1,6,''),(14,'sweet corn pizza','pizza','70.00',1,6,''),(15,'Extra cheese pizza','pizza','150.00',1,6,''),(16,'Farm pizza','Pizza','200.00',1,6,''),(17,'Simple burger','burger','30.00',1,7,''),(18,'Veg Spicy burger','burger','40.00',1,7,''),(19,'Simple Kulcha','kulcha','20.00',1,7,''),(20,'Aloo paties','paties','10.00',1,7,''),(21,'Cream sandwich','sandwich','35.00',1,7,''),(22,'momos','chinese','20.00',1,7,''),(23,'Coffe','Beverages','30.00',1,7,''),(24,'cold drink','beverages','20.00',1,7,''),(25,'Mango Shake','Beverages','40.00',1,7,'');

/*Table structure for table `orderdetails` */

DROP TABLE IF EXISTS `orderdetails`;

CREATE TABLE `orderdetails` (
  `tempid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menuitemid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(9,2) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `total` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`tempid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `orderdetails` */

insert  into `orderdetails`(`tempid`,`menuitemid`,`quantity`,`price`,`orderid`,`total`) values (1,1,3,'200.00',7,'600.00'),(2,2,2,'131324.00',7,'262648.00'),(3,1,2,'200.00',8,'400.00'),(4,2,1,'131324.00',8,'131324.00'),(5,1,2,'200.00',9,'400.00'),(6,1,2,'200.00',10,'400.00'),(7,3,3,'110.00',10,'330.00'),(8,1,4,'200.00',11,'800.00'),(9,3,3,'110.00',11,'330.00'),(10,4,3,'25.00',12,'75.00'),(11,6,2,'60.00',12,'120.00'),(12,7,2,'80.00',12,'160.00'),(13,6,3,'60.00',12,'180.00'),(14,7,3,'80.00',12,'240.00'),(15,7,1,'80.00',12,'80.00'),(16,8,1,'80.00',12,'80.00'),(17,6,2,'60.00',13,'120.00'),(18,6,2,'60.00',14,'120.00'),(19,7,3,'80.00',14,'240.00'),(20,15,1,'150.00',15,'150.00'),(21,13,1,'60.00',15,'60.00'),(22,5,2,'40.00',16,'80.00'),(23,6,1,'60.00',16,'60.00');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orderid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cusid` int(11) NOT NULL,
  `totalamount` decimal(9,2) NOT NULL,
  `orderstatus` varchar(15) NOT NULL DEFAULT 'pending',
  `datetimeoforder` date NOT NULL,
  `address` varchar(1000) NOT NULL,
  `modeofpayment` varchar(20) NOT NULL,
  `resid` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `orders` */

insert  into `orders`(`orderid`,`cusid`,`totalamount`,`orderstatus`,`datetimeoforder`,`address`,`modeofpayment`,`resid`) values (4,3,'310632.64','Delivered','2017-10-16','93-a upkar nagar factory area patiala.          ','COD',NULL),(5,3,'310632.64','Delivered','2017-10-16','93-a upkar nagar factory area patiala.          ','COD',NULL),(6,3,'310632.64','Delivered','2017-10-16','93-a upkar nagar factory area patiala.          ','COD',NULL),(7,3,'310632.64','Delivered','2017-10-16','93-a upkar nagar factory area patiala.          ','COD',NULL),(8,3,'155434.32','Delivered','2017-10-16','93-a upkar nagar factory area patiala.          ','COD',NULL),(9,3,'472.00','Delivered','2017-10-16','93-a upkar nagar factory area patiala.          ','COD',NULL),(10,3,'861.40','Delivered','2017-10-21','93-a upkar nagar factory area patiala.          ','COD',NULL),(11,3,'1333.40','Delivered','2017-10-21','93-a upkar nagar factory area patiala.           ','COD',NULL),(12,3,'418.90','Delivered','2017-10-25','93-a upkar nagar factory area patiala.           ','COD',5),(13,3,'141.60','Delivered','2017-10-25','93-a upkar nagar factory area patiala.           ','COD',5),(14,3,'424.80','pending','2017-10-25','93-a upkar nagar factory area patiala.           ','COD',5),(15,3,'247.80','pending','2017-10-25','93-a upkar nagar factory area patiala.           ','COD',6),(16,3,'165.20','pending','2017-10-25','93-a upkar nagar factory area patiala.           ','COD',5);

/*Table structure for table `restaurant` */

DROP TABLE IF EXISTS `restaurant`;

CREATE TABLE `restaurant` (
  `resid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(25) NOT NULL,
  `phno` varchar(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`resid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `restaurant` */

insert  into `restaurant`(`resid`,`name`,`email`,`password`,`phno`,`address`,`active`) values (5,'Kohli Sweet','kohlisweet12@gmail.com','virat','9855344455','Shop No - 32, 33, Main Road, Tripuri Town, Patiala - 147004',1),(6,'Dominik Pizza','dominikpizza@gmail.com','pizza','9803080111','Dominick Pizza, old janhj ghar, Tripuri Town, Patiala - 147004',1),(7,'Burger Point','burgerpoint@gmail.com','urban','7888589924','Urban estate,phase 2,patiala',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
