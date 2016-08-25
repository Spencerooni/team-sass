
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment` (
  `department_id` tinyint(6) NOT NULL,
  `employee_id` char(5) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`department_id`,`start_date`,`employee_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `assignment_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  CONSTRAINT `assignment_ibfk_3` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
INSERT INTO `assignment` VALUES (1,'AM100','2015-09-10',NULL),(2,'TS102','2015-09-10','2016-08-10'),(3,'AF100','2015-01-02','2016-05-10'),(3,'TS102','2016-07-10','2016-08-10'),(4,'CH100','2013-07-12','2016-04-15'),(5,'DF101','2015-07-10',NULL),(6,'AF100','2014-01-02','2016-08-10'),(6,'AF100','2014-09-09','2016-03-19');
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` tinyint(4) NOT NULL,
  `name` enum('Enterprise','Evolve','Gov','Finance','Systems','R & D') DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `lead_id` char(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`lead_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Enterprise','We deliver online platforms for UK Government Departments','AM100'),(2,'Evolve','We help make healthcare delivery easier with our mobile-enabled healthcare platform','TS102'),(3,'Gov','Government Digital Service (GDS) is leading the digital transformation of government.','TS102'),(4,'Finance','responsible for providing financial advice and support to clients and colleagues to enable them to make sound business decisions','DF101'),(5,'Systems','We help make your life better','BB100'),(6,'R & D','The goal was to get people working together and get their creativity flowing','AF100');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employee_id` char(5) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(30) NOT NULL,
  `postcode` varchar(8) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `national_insurance` varchar(9) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `IBAN` varchar(34) NOT NULL,
  `BIC` varchar(9) NOT NULL,
  `start_salary` float NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('AF100','Aoife','Fin','7 Lough Derk Park','Carryduff','BT328HG','afafafaf@hotmail.co.uk','PA521922P','Aoife Rachel Fin','1717394709','POI183GQH',29000),('AM100','Annalisa','Misra','20 Cresent Hill, Fourwinds','Belfast','BT87YU','annalisa12095@hotmail.com','PA975547C','Annalisa Misra','0123456789','12345678',25000),('BB100','Barry','Ben','92832A Window River Drive','Portrush','BT817YV','barrybenbenlive.com','PA82734S','Barry Ben','87651232059','JUH086JKK',22000),('CH100','CLaire','Houston','97a Vauxhall Drive','Larne','BT611GH','clairebear@hotmail.co.uk','PA983312Y','Claire Houston','2698935021','HQZ439JRP',20000),('CO100','Catherine','Lynch','9832a Tear Street','Lisburn','BT138BZ','lynchcath@hotmail.com','PA18375H','Catherine Mary Lynch','1738193882','HGB182UYH',27500),('DF101','Daniel','Friend','43 Ballylenaghan Lane','Belfast','BT25SQ','daniel1234@gmail.com','DA976234D','Daniel Friend','34557843','GHB123HYG',22000),('RF100','Ryan','Fray','233 Whiteboard Lane','Moira','BT21OPS','ryanfrayryan@live.com','PA81938S','Ryan Daniel Fray','918239832981','BSG982JHH',26340),('TS102','Tom','S','123 Brick Lane','Carryduff','BT95AQ','toms9832@hotmail.com','QW927463C','Thomas S','5678908765','BSH432JHU',25000);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesEmployee`
--

DROP TABLE IF EXISTS `salesEmployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesEmployee` (
  `employee_id` char(5) NOT NULL,
  `commission_rate` int(11) NOT NULL,
  `total_sales` int(11) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  CONSTRAINT `salesEmployee_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesEmployee`
--

LOCK TABLES `salesEmployee` WRITE;
/*!40000 ALTER TABLE `salesEmployee` DISABLE KEYS */;
INSERT INTO `salesEmployee` VALUES ('AM100',0,NULL),('DF101',3,1),('RF100',4,8),('TS102',0,NULL);
/*!40000 ALTER TABLE `salesEmployee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-19 11:03:12
