-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25a


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema cloud09
--

CREATE DATABASE IF NOT EXISTS cloud09;
USE cloud09;

--
-- Definition of table `cusreg`
--

DROP TABLE IF EXISTS `cusreg`;
CREATE TABLE `cusreg` (
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `confiempass` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cusreg`
--

/*!40000 ALTER TABLE `cusreg` DISABLE KEYS */;
INSERT INTO `cusreg` (`username`,`email`,`password`,`confiempass`,`mobile`) VALUES 
 ('spiro','spirosolution@gmail.com','123456','123456','7502614113');
/*!40000 ALTER TABLE `cusreg` ENABLE KEYS */;


--
-- Definition of table `fileupload`
--

DROP TABLE IF EXISTS `fileupload`;
CREATE TABLE `fileupload` (
  `productid` longtext NOT NULL,
  `productname` longtext NOT NULL,
  `cost` longtext NOT NULL,
  `netweight` longtext NOT NULL,
  `expirydate` varchar(45) NOT NULL,
  `maxpieces` longtext NOT NULL,
  `customsname` longtext CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `company` longtext NOT NULL,
  `country` longtext NOT NULL,
  `filekey` longtext NOT NULL,
  `filename` longtext NOT NULL,
  `filesize` longtext NOT NULL,
  `filetype` longtext NOT NULL,
  `filecontent` longtext NOT NULL,
  `Ownername` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fileupload`
--

/*!40000 ALTER TABLE `fileupload` DISABLE KEYS */;
INSERT INTO `fileupload` (`productid`,`productname`,`cost`,`netweight`,`expirydate`,`maxpieces`,`customsname`,`company`,`country`,`filekey`,`filename`,`filesize`,`filetype`,`filecontent`,`Ownername`) VALUES 
 ('82','apple','100','300','2018/07/13 16:08:05','1000',0x616E75,'anushya enterprises','india','24299F','img1.jpg','0','image/jpeg','D:\\siva\\itjcc09\\WebContent\\local\\img1.jpg','rajesh@gmail.com'),
 ('82','apple','100','300','2018/07/13 16:18:56','1000',0x616E75,'anushya enterprises','india','D3DF4B','img2.jpg','0','image/jpeg','D:\\siva\\itjcc09\\WebContent\\local\\img2.jpg','rajesh@gmail.com'),
 ('82','apple','100','300','2018/07/13 16:21:40','1000',0x616E75,'anushya enterprises','india','9B7B28','Capture.PNG','0','image/png','D:\\siva\\itjcc09\\WebContent\\local\\Capture.PNG','rajesh@gmail.com'),
 ('82','apple','100','300','2018/07/13 16:23:07','1000',0x616E75,'anushya enterprises','india','9B7B28','drop box.txt','0','text/plain','D:\\siva\\itjcc09\\WebContent\\local\\drop box.txt','rajesh@gmail.com'),
 ('82','apple','100','300','2018/07/13 16:25:09','1000',0x616E75,'anushya enterprises','india','9B7B28','drop box.txt','0','text/plain','D:\\siva\\itjcc09\\WebContent\\local\\drop box.txt','rajesh@gmail.com'),
 ('82','apple','100','300','2018/07/13 16:25:59','1000',0x616E75,'anushya enterprises','india','621255','encryption.txt','102','text/plain','D:\\siva\\itjcc09\\WebContent\\local\\encryption.txt','rajesh@gmail.com'),
 ('82','apple','100','300','2018/07/13 16:28:34','1000',0x616E75,'anushya enterprises','india','621255','vcxv.txt','0','text/plain','D:\\siva\\itjcc09\\WebContent\\local\\vcxv.txt','rajesh@gmail.com'),
 ('82','apple','100','300','2018/07/13 16:48:41','1000',0x616E75,'anushya enterprises','india','65FAA5','bachground.txt','0','text/plain','D:\\siva\\itjcc09\\WebContent\\local\\bachground.txt','dharanya@gmail.com'),
 ('82','apple','100','300','2018/07/13 16:59:07','1000',0x616E75,'anushya enterprises','india','65FAA5','aes encryption and decryption coding.txt','0','text/plain','D:\\siva\\itjcc09//WebContent//local//aes encryption and decryption coding.txt','dharanya@gmail.com'),
 ('82','apple','100','300','2018/07/13 17:05:42','1000',0x616E75,'anushya enterprises','india','CB94F6','bachground fill.txt','0','text/plain','D:\\siva\\itjcc09//WebContent//local//bachground fill.txt','dharanya@gmail.com'),
 ('82','apple','100','300','2018/07/13 17:11:38','1000',0x616E75,'anushya enterprises','india','4D1FE6','bachground.txt','0','text/plain','D:\\siva\\itjcc09//WebContent//local//bachground.txt','dharanya@gmail.com'),
 ('82','apple','100','300','2018/07/13 17:15:02','1000',0x616E75,'anushya enterprises','india','4D1FE6','table css.txt','0','text/plain','D:\\siva\\itjcc09//WebContent//local//table css.txt','dharanya@gmail.com'),
 ('82','apple','100','300','2018/07/13 17:16:08','1000',0x616E75,'anushya enterprises','india','4D1FE6','vedio background.txt','0','text/plain','D:\\siva\\itjcc09//WebContent//local//vedio background.txt','dharanya@gmail.com'),
 ('82','apple','100','300','2018/07/13 17:21:15','1000',0x616E75,'anushya enterprises','india','4D1FE6','aes encryption and decryption coding.txt','0','text/plain','D:\\siva\\itjcc09//WebContent//local//aes encryption and decryption coding.txt','dharanya@gmail.com');
/*!40000 ALTER TABLE `fileupload` ENABLE KEYS */;


--
-- Definition of table `inbox`
--

DROP TABLE IF EXISTS `inbox`;
CREATE TABLE `inbox` (
  `ownername` varchar(45) NOT NULL,
  `message` varchar(45) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `sender` varchar(45) NOT NULL,
  `request` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inbox`
--

/*!40000 ALTER TABLE `inbox` DISABLE KEYS */;
INSERT INTO `inbox` (`ownername`,`message`,`filename`,`sender`,`request`) VALUES 
 ('admin@gmail.com','i will send you for my porducts','iPhone-X.png','rajesh@gmail.com','Request'),
 ('spirosolution@gmail.com','send you','iPhone-X.png','admin@gmail.com','Request'),
 ('spiroprojects@gmail.com','hello','cloudBid.jpg','dharanya@gmail.com','Request'),
 ('spirosolutions','iji90','cloudBid.jpg','admin@gmail.com','Request');
/*!40000 ALTER TABLE `inbox` ENABLE KEYS */;


--
-- Definition of table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `confirmpass` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` (`username`,`email`,`password`,`confirmpass`,`mobile`) VALUES 
 ('dharanya','dharanya@gmail.com','dharanya126','dharanya126','9566123728'),
 ('rajesh','rajesh@gmail.com','123456','123456','7502614113');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;


--
-- Definition of table `request_file`
--

DROP TABLE IF EXISTS `request_file`;
CREATE TABLE `request_file` (
  `filename1` varchar(45) NOT NULL,
  `privatekey1` varchar(45) NOT NULL,
  `Ownername` varchar(45) NOT NULL,
  `filerequest1` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_file`
--

/*!40000 ALTER TABLE `request_file` DISABLE KEYS */;
INSERT INTO `request_file` (`filename1`,`privatekey1`,`Ownername`,`filerequest1`) VALUES 
 ('iPhone-X.png','********','admin@gmail.com','Update'),
 ('iPhone-X.png','********','spirosolution@gmail.com','Update'),
 ('cloudBid.jpg','********','admin@gmail.com','Update'),
 ('cloudBid.jpg','********','spirosolution@gmail.com','Update');
/*!40000 ALTER TABLE `request_file` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
