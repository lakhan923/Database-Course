-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: harjoitus
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(25) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Beverages','Soft drinks, coffees, teas, beers, and ales'),(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings'),(3,'Confections','Desserts, candies, and sweet breads'),(4,'Dairy Products','Cheeses'),(5,'Grains/Cereals','Breads, crackers, pasta, and cereal'),(6,'Meat/Poultry','Prepared meats'),(7,'Produce','Dried fruit and bean curd'),(8,'Seafood','Seaweed and fish'),(9,'Organic Produce','A variety of fresh and organic fruits and vegetables.'),(10,'Dairy Alternatives','Non-dairy substitutes such as almond milk, soy milk, and oat milk.'),(11,'Gluten-Free Goods','Products free from gluten including breads, pastas, and snacks.');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(50) DEFAULT NULL,
  `ContactName` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany'),(2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','México D.F.','5021','Mexico'),(3,'Antonio Moreno Taquería','Antonio Moreno','Mataderos 2312','México D.F.','5023','Mexico'),(4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK'),(5,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleå','S-958 22','Sweden'),(6,'Blauer See Delikatessen','Hanna Moos','Forsterstr. 57','Mannheim','68306','Germany'),(7,'Blondel père et fils','Frédérique Citeaux','24, place Kléber','Strasbourg','67000','France'),(8,'Bólido Comidas preparadas','Martín Sommer','C/ Araquil, 67','Madrid','28023','Spain'),(9,'Bon app\'\'','Laurence Lebihans','12, rue des Bouchers','Marseille','13008','France'),(10,'Bottom-Dollar Marketse','Elizabeth Lincoln','23 Tsawassen Blvd.','Tsawassen','T2F 8M4','Canada'),(11,'B\'\'s Beverages','Victoria Ashworth','Fauntleroy Circus','London','EC2 5NT','UK'),(12,'Cactus Comidas para llevar','Patricio Simpson','Cerrito 333','Buenos Aires','1010','Argentina'),(13,'Centro comercial Moctezuma','Francisco Chang','Sierras de Granada 9993','México D.F.','5022','Mexico'),(14,'Chop-suey Chinese','Yang Wang','Hauptstr. 29','Bern','3012','Switzerland'),(15,'Comércio Mineiro','Pedro Afonso','Av. dos Lusíadas, 23','São Paulo','05432-043','Brazil'),(16,'Consolidated Holdings','Elizabeth Brown','Berkeley Gardens 12 Brewery','London','WX1 6LT','UK'),(17,'Drachenblut Delikatessend','Sven Ottlieb','Walserweg 21','Aachen','52066','Germany'),(18,'Du monde entier','Janine Labrune','67, rue des Cinquante Otages','Nantes','44000','France'),(19,'Eastern Connection','Ann Devon','35 King George','London','WX3 6FW','UK'),(20,'Ernst Handel','Roland Mendel','Kirchgasse 6','Graz','8010','Austria'),(21,'Familia Arquibaldo','Aria Cruz','Rua Orós, 92','São Paulo','05442-030','Brazil'),(22,'FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','C/ Moralzarzal, 86','Madrid','28034','Spain'),(23,'Folies gourmandes','Martine Rancé','184, chaussée de Tournai','Lille','59000','France'),(24,'Folk och fä HB','Maria Larsson','Åkergatan 24','Bräcke','S-844 67','Sweden'),(25,'Frankenversand','Peter Franken','Berliner Platz 43','München','80805','Germany'),(26,'France restauration','Carine Schmitt','54, rue Royale','Nantes','44000','France'),(27,'Franchi S.p.A.','Paolo Accorti','Via Monte Bianco 34','Torino','10100','Italy'),(28,'Furia Bacalhau e Frutos do Mar','Lino Rodriguez','Jardim das rosas n. 32','Lisboa','1675','Portugal'),(29,'Galería del gastrónomo','Eduardo Saavedra','Rambla de Cataluña, 23','Barcelona','8022','Spain'),(30,'Godos Cocina Típica','José Pedro Freyre','C/ Romero, 33','Sevilla','41101','Spain'),(31,'Gourmet Lanchonetes','André Fonseca','Av. Brasil, 442','Campinas','04876-786','Brazil'),(32,'Great Lakes Food Market','Howard Snyder','2732 Baker Blvd.','Eugene','97403','USA'),(33,'GROSELLA-Restaurante','Manuel Pereira','5ª Ave. Los Palos Grandes','Caracas','1081','Venezuela'),(34,'Hanari Carnes','Mario Pontes','Rua do Paço, 67','Rio de Janeiro','05454-876','Brazil'),(35,'HILARIÓN-Abastos','Carlos Hernández','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal','5022','Venezuela'),(36,'Hungry Coyote Import Store','Yoshi Latimer','City Center Plaza 516 Main St.','Elgin','97827','USA'),(37,'Hungry Owl All-Night Grocers','Patricia McKenna','8 Johnstown Road','Cork','','Ireland'),(38,'Island Trading','Helen Bennett','Garden House Crowther Way','Cowes','PO31 7PJ','UK'),(39,'Königlich Essen','Philip Cramer','Maubelstr. 90','Brandenburg','14776','Germany'),(40,'La corne d\'\'abondance','Daniel Tonini','67, avenue de l\'\'Europe','Versailles','78000','France'),(41,'La maison d\'\'Asie','Annette Roulet','1 rue Alsace-Lorraine','Toulouse','31000','France'),(42,'Laughing Bacchus Wine Cellars','Yoshi Tannamuri','1900 Oak St.','Vancouver','V3F 2K1','Canada'),(43,'Lazy K Kountry Store','John Steel','12 Orchestra Terrace','Walla Walla','99362','USA'),(44,'Lehmanns Marktstand','Renate Messner','Magazinweg 7','Frankfurt a.M.','60528','Germany'),(45,'Let\'\'s Stop N Shop','Jaime Yorres','87 Polk St. Suite 5','San Francisco','94117','USA'),(46,'LILA-Supermercado','Carlos González','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','3508','Venezuela'),(47,'LINO-Delicateses','Felipe Izquierdo','Ave. 5 de Mayo Porlamar','I. de Margarita','4980','Venezuela'),(48,'Lonesome Pine Restaurant','Fran Wilson','89 Chiaroscuro Rd.','Portland','97219','USA'),(49,'Magazzini Alimentari Riuniti','Giovanni Rovelli','Via Ludovico il Moro 22','Bergamo','24100','Italy'),(50,'Maison Dewey','Catherine Dewey','Rue Joseph-Bens 532','Bruxelles','B-1180','Belgium'),(51,'Mère Paillarde','Jean Fresnière','43 rue St. Laurent','Montréal','H1J 1C3','Canada'),(52,'Morgenstern Gesundkost','Alexander Feuer','Heerstr. 22','Leipzig','4179','Germany'),(53,'North/South','Simon Crowther','South House 300 Queensbridge','London','SW7 1RZ','UK'),(54,'Océano Atlántico Ltda.','Yvonne Moncada','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires','1010','Argentina'),(55,'Old World Delicatessen','Rene Phillips','2743 Bering St.','Anchorage','99508','USA'),(56,'Ottilies Käseladen','Henriette Pfalzheim','Mehrheimerstr. 369','Köln','50739','Germany'),(57,'Paris spécialités','Marie Bertrand','265, boulevard Charonne','Paris','75012','France'),(58,'Pericles Comidas clásicas','Guillermo Fernández','Calle Dr. Jorge Cash 321','México D.F.','5033','Mexico'),(59,'Piccolo und mehr','Georg Pipps','Geislweg 14','Salzburg','5020','Austria'),(60,'Princesa Isabel Vinhoss','Isabel de Castro','Estrada da saúde n. 58','Lisboa','1756','Portugal'),(61,'Que Delícia','Bernardo Batista','Rua da Panificadora, 12','Rio de Janeiro','02389-673','Brazil'),(62,'Queen Cozinha','Lúcia Carvalho','Alameda dos Canàrios, 891','São Paulo','05487-020','Brazil'),(63,'QUICK-Stop','Horst Kloss','Taucherstraße 10','Cunewalde','1307','Germany'),(64,'Rancho grande','Sergio Gutiérrez','Av. del Libertador 900','Buenos Aires','1010','Argentina'),(65,'Rattlesnake Canyon Grocery','Paula Wilson','2817 Milton Dr.','Albuquerque','87110','USA'),(66,'Reggiani Caseifici','Maurizio Moroni','Strada Provinciale 124','Reggio Emilia','42100','Italy'),(67,'Ricardo Adocicados','Janete Limeira','Av. Copacabana, 267','Rio de Janeiro','02389-890','Brazil'),(68,'Richter Supermarkt','Michael Holz','Grenzacherweg 237','Genève','1203','Switzerland'),(69,'Romero y tomillo','Alejandra Camino','Gran Vía, 1','Madrid','28001','Spain'),(70,'Santé Gourmet','Jonas Bergulfsen','Erling Skakkes gate 78','Stavern','4110','Norway'),(71,'Save-a-lot Markets','Jose Pavarotti','187 Suffolk Ln.','Boise','83720','USA'),(72,'Seven Seas Imports','Hari Kumar','90 Wadhurst Rd.','London','OX15 4NB','UK'),(73,'Simons bistro','Jytte Petersen','Vinbæltet 34','København','1734','Denmark'),(74,'Spécialités du monde','Dominique Perrier','25, rue Lauriston','Paris','75016','France'),(75,'Split Rail Beer & Ale','Art Braunschweiger','P.O. Box 555','Lander','82520','USA'),(76,'Suprêmes délices','Pascale Cartrain','Boulevard Tirou, 255','Charleroi','B-6000','Belgium'),(77,'The Big Cheese','Liz Nixon','89 Jefferson Way Suite 2','Portland','97201','USA'),(78,'The Cracker Box','Liu Wong','55 Grizzly Peak Rd.','Butte','59801','USA'),(79,'Toms Spezialitäten','Karin Josephs','Luisenstr. 48','Münster','44087','Germany'),(80,'Tortuga Restaurante','Miguel Angel Paolino','Avda. Azteca 123','México D.F.','5033','Mexico'),(81,'Tradição Hipermercados','Anabela Domingues','Av. Inês de Castro, 414','São Paulo','05634-030','Brazil'),(82,'Trail\'\'s Head Gourmet Provisioners','Helvetius Nagy','722 DaVinci Blvd.','Kirkland','98034','USA'),(83,'Vaffeljernet','Palle Ibsen','Smagsløget 45','Århus','8200','Denmark'),(84,'Victuailles en stock','Mary Saveley','2, rue du Commerce','Lyon','69004','France'),(85,'Vins et alcools Chevalier','Paul Henriot','59 rue de l\'\'Abbaye','Reims','51100','France'),(86,'Die Wandernde Kuh','Rita Müller','Adenauerallee 900','Stuttgart','70563','Germany'),(87,'Wartian Herkku','Pirkko Koskitalo','Torikatu 38','Oulu','90110','Finland'),(88,'Wellington Importadora','Paula Parente','Rua do Mercado, 12','Resende','08737-363','Brazil'),(89,'White Clover Markets','Karl Jablonski','305 - 14th Ave. S. Suite 3B','Seattle','98128','USA'),(90,'Wilman Kala','Matti Karttunen','Keskuskatu 45','Helsinki','21240','Finland'),(91,'Wolski','Zbyszek','ul. Filtrowa 68','Walla','01-012','Poland'),(92,'Alfreds Delights','Maria Anders','23 Oak Street','Berlin','10115','Germany'),(93,'Bon Appétit','Laurent Bignon','12 Maple Lane','Paris','75001','France'),(94,'Folk & Co','Christina Berglund','56 Pine Ave','Stockholm','113 21','Sweden'),(95,'Antonio\'s Pasta','Antonio Moreno','67 Birch Road','Mexico City','03100','Mexico'),(96,'Tradição Hiper','Ana Trujillo','789 Elm Street','Rio de Janeiro','20030-021','Brazil');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL AUTO_INCREMENT,
  `LastName` varchar(15) DEFAULT NULL,
  `FirstName` varchar(15) DEFAULT NULL,
  `BirthDate` datetime DEFAULT NULL,
  `Photo` varchar(25) DEFAULT NULL,
  `Notes` varchar(1024) DEFAULT NULL,
  `OfficeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `fk_office` (`OfficeID`),
  CONSTRAINT `fk_office` FOREIGN KEY (`OfficeID`) REFERENCES `offices` (`OfficeID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Davolio','Nancy','1968-12-08 00:00:00','EmpID1.pic','Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of \'Toastmasters International\'.',NULL),(2,'Fuller','Andrew','1952-02-19 00:00:00','EmpID2.pic','Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.',NULL),(3,'Leverling','Janet','1963-08-30 00:00:00','EmpID3.pic','Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.',NULL),(4,'Peacock','Margaret','1958-09-19 00:00:00','EmpID4.pic','Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.',NULL),(5,'Buchanan','Steven','1955-03-04 00:00:00','EmpID5.pic','Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses \'Successful Telemarketing\' and \'International Sales Management\'. He is fluent in French.',NULL),(6,'Suyama','Michael','1963-07-02 00:00:00','EmpID6.pic','Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses \'Multi-Cultural Selling\' and \'Time Management for the Sales Professional\'. He is fluent in Japanese and can read and write French, Portuguese, and Spanish.',NULL),(7,'King','Robert','1960-05-29 00:00:00','EmpID7.pic','Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled \'Selling in Europe\', he was transferred to the London office.',NULL),(8,'Callahan','Laura','1958-01-09 00:00:00','EmpID8.pic','Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.',NULL),(9,'Dodsworth','Anne','1969-07-02 00:00:00','EmpID9.pic','Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.',NULL),(10,'West','Adam','1928-09-19 00:00:00','EmpID10.pic','An old chum.',NULL),(11,'Smith','John','1985-03-12 00:00:00','EmpID11.pic','John has been with the company for 5 years and specializes in marketing.',NULL),(12,'Doe','Jane','1990-07-24 00:00:00','EmpID12.pic','Jane is a recent hire and brings a fresh perspective from her previous role at a tech startup.',NULL),(13,'Brown','William','1980-11-30 00:00:00','EmpID13.pic','William is our senior sales representative with a consistent track record.',NULL),(14,'Johnson','Emily','1988-02-15 00:00:00','EmpID14.pic','Emily manages our customer relationships and has received multiple awards for her service.',NULL),(15,'Davis','Anna','1992-06-05 00:00:00','EmpID15.pic','Anna is part of our R&D team and has contributed to several innovative projects.',NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offices`
--

DROP TABLE IF EXISTS `offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offices` (
  `OfficeID` int(11) NOT NULL AUTO_INCREMENT,
  `OfficeName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `PostalCode` varchar(20) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Manager` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`OfficeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offices`
--

LOCK TABLES `offices` WRITE;
/*!40000 ALTER TABLE `offices` DISABLE KEYS */;
INSERT INTO `offices` VALUES (1,'Northoffice',NULL,NULL,NULL,NULL),(2,'Saint Louis office','Palm st 16','63107','Saint Louis','7'),(3,'Springfield office','1500 Knotts St','62703','Springfield','1'),(4,'Kansas City office','Beverly st 80','66204','Kansas City','8');
/*!40000 ALTER TABLE `offices` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_officename_before_insert
BEFORE INSERT ON offices
FOR EACH ROW 
BEGIN 
IF NEW.OfficeName LIKE 'office%' THEN
SIGNAL SQLSTATE '45000' 
SET MESSAGE_TEXT = 'OfficeName cannot begin with the word "office"';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER check_officename_before_update
BEFORE UPDATE ON offices
FOR EACH ROW
BEGIN
    
    IF NEW.OfficeName LIKE 'office%' THEN
        
        SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'OfficeName cannot begin with the word "office"';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetails` (
  `OrderDetailID` int(11) NOT NULL AUTO_INCREMENT,
  `OrderID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`OrderDetailID`),
  KEY `OrderID` (`OrderID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=729 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,10248,11,12),(2,10248,42,10),(3,10248,72,5),(4,10249,14,9),(5,10249,51,40),(6,10250,41,10),(7,10250,51,35),(8,10250,65,15),(9,10251,22,6),(10,10251,57,15),(11,10251,65,20),(12,10252,20,40),(13,10252,33,25),(14,10252,60,40),(15,10253,31,20),(16,10253,39,42),(17,10253,49,40),(18,10254,24,15),(19,10254,55,21),(20,10254,74,21),(21,10255,2,20),(22,10255,16,35),(23,10255,36,25),(24,10255,59,30),(25,10256,53,15),(26,10256,77,12),(27,10257,27,25),(28,10257,39,6),(29,10257,77,15),(30,10258,2,50),(31,10258,5,65),(32,10258,32,6),(33,10259,21,10),(34,10259,37,1),(35,10260,41,16),(36,10260,57,50),(37,10260,62,15),(38,10260,70,21),(39,10261,21,20),(40,10261,35,20),(41,10262,5,12),(42,10262,7,15),(43,10262,56,2),(44,10263,16,60),(45,10263,24,28),(46,10263,30,60),(47,10263,74,36),(48,10264,2,35),(49,10264,41,25),(50,10265,17,30),(51,10265,70,20),(52,10266,12,12),(53,10267,40,50),(54,10267,59,70),(55,10267,76,15),(56,10268,29,10),(57,10268,72,4),(58,10269,33,60),(59,10269,72,20),(60,10270,36,30),(61,10270,43,25),(62,10271,33,24),(63,10272,20,6),(64,10272,31,40),(65,10272,72,24),(66,10273,10,24),(67,10273,31,15),(68,10273,33,20),(69,10273,40,60),(70,10273,76,33),(71,10274,71,20),(72,10274,72,7),(73,10275,24,12),(74,10275,59,6),(75,10276,10,15),(76,10276,13,10),(77,10277,28,20),(78,10277,62,12),(79,10278,44,16),(80,10278,59,15),(81,10278,63,8),(82,10278,73,25),(83,10279,17,15),(84,10280,24,12),(85,10280,55,20),(86,10280,75,30),(87,10281,19,1),(88,10281,24,6),(89,10281,35,4),(90,10282,30,6),(91,10282,57,2),(92,10283,15,20),(93,10283,19,18),(94,10283,60,35),(95,10283,72,3),(96,10284,27,15),(97,10284,44,21),(98,10284,60,20),(99,10284,67,5),(100,10285,1,45),(101,10285,40,40),(102,10285,53,36),(103,10286,35,100),(104,10286,62,40),(105,10287,16,40),(106,10287,34,20),(107,10287,46,15),(108,10288,54,10),(109,10288,68,3),(110,10289,3,30),(111,10289,64,9),(112,10290,5,20),(113,10290,29,15),(114,10290,49,15),(115,10290,77,10),(116,10291,13,20),(117,10291,44,24),(118,10291,51,2),(119,10292,20,20),(120,10293,18,12),(121,10293,24,10),(122,10293,63,5),(123,10293,75,6),(124,10294,1,18),(125,10294,17,15),(126,10294,43,15),(127,10294,60,21),(128,10294,75,6),(129,10295,56,4),(130,10296,11,12),(131,10296,16,30),(132,10296,69,15),(133,10297,39,60),(134,10297,72,20),(135,10298,2,40),(136,10298,36,40),(137,10298,59,30),(138,10298,62,15),(139,10299,19,15),(140,10299,70,20),(141,10300,66,30),(142,10300,68,20),(143,10301,40,10),(144,10301,56,20),(145,10302,17,40),(146,10302,28,28),(147,10302,43,12),(148,10303,40,40),(149,10303,65,30),(150,10303,68,15),(151,10304,49,30),(152,10304,59,10),(153,10304,71,2),(154,10305,18,25),(155,10305,29,25),(156,10305,39,30),(157,10306,30,10),(158,10306,53,10),(159,10306,54,5),(160,10307,62,10),(161,10307,68,3),(162,10308,69,1),(163,10308,70,5),(164,10309,4,20),(165,10309,6,30),(166,10309,42,2),(167,10309,43,20),(168,10309,71,3),(169,10310,16,10),(170,10310,62,5),(171,10311,42,6),(172,10311,69,7),(173,10312,28,4),(174,10312,43,24),(175,10312,53,20),(176,10312,75,10),(177,10313,36,12),(178,10314,32,40),(179,10314,58,30),(180,10314,62,25),(181,10315,34,14),(182,10315,70,30),(183,10316,41,10),(184,10316,62,70),(185,10317,1,20),(186,10318,41,20),(187,10318,76,6),(188,10319,17,8),(189,10319,28,14),(190,10319,76,30),(191,10320,71,30),(192,10321,35,10),(193,10322,52,20),(194,10323,15,5),(195,10323,25,4),(196,10323,39,4),(197,10324,16,21),(198,10324,35,70),(199,10324,46,30),(200,10324,59,40),(201,10324,63,80),(202,10325,6,6),(203,10325,13,12),(204,10325,14,9),(205,10325,31,4),(206,10325,72,40),(207,10326,4,24),(208,10326,57,16),(209,10326,75,50),(210,10327,2,25),(211,10327,11,50),(212,10327,30,35),(213,10327,58,30),(214,10328,59,9),(215,10328,65,40),(216,10328,68,10),(217,10329,19,10),(218,10329,30,8),(219,10329,38,20),(220,10329,56,12),(221,10330,26,50),(222,10330,72,25),(223,10331,54,15),(224,10332,18,40),(225,10332,42,10),(226,10332,47,16),(227,10333,14,10),(228,10333,21,10),(229,10333,71,40),(230,10334,52,8),(231,10334,68,10),(232,10335,2,7),(233,10335,31,25),(234,10335,32,6),(235,10335,51,48),(236,10336,4,18),(237,10337,23,40),(238,10337,26,24),(239,10337,36,20),(240,10337,37,28),(241,10337,72,25),(242,10338,17,20),(243,10338,30,15),(244,10339,4,10),(245,10339,17,70),(246,10339,62,28),(247,10340,18,20),(248,10340,41,12),(249,10340,43,40),(250,10341,33,8),(251,10341,59,9),(252,10342,2,24),(253,10342,31,56),(254,10342,36,40),(255,10342,55,40),(256,10343,64,50),(257,10343,68,4),(258,10343,76,15),(259,10344,4,35),(260,10344,8,70),(261,10345,8,70),(262,10345,19,80),(263,10345,42,9),(264,10346,17,36),(265,10346,56,20),(266,10347,25,10),(267,10347,39,50),(268,10347,40,4),(269,10347,75,6),(270,10348,1,15),(271,10348,23,25),(272,10349,54,24),(273,10350,50,15),(274,10350,69,18),(275,10351,38,20),(276,10351,41,13),(277,10351,44,77),(278,10351,65,10),(279,10352,24,10),(280,10352,54,20),(281,10353,11,12),(282,10353,38,50),(283,10354,1,12),(284,10354,29,4),(285,10355,24,25),(286,10355,57,25),(287,10356,31,30),(288,10356,55,12),(289,10356,69,20),(290,10357,10,30),(291,10357,26,16),(292,10357,60,8),(293,10358,24,10),(294,10358,34,10),(295,10358,36,20),(296,10359,16,56),(297,10359,31,70),(298,10359,60,80),(299,10360,28,30),(300,10360,29,35),(301,10360,38,10),(302,10360,49,35),(303,10360,54,28),(304,10361,39,54),(305,10361,60,55),(306,10362,25,50),(307,10362,51,20),(308,10362,54,24),(309,10363,31,20),(310,10363,75,12),(311,10363,76,12),(312,10364,69,30),(313,10364,71,5),(314,10365,11,24),(315,10366,65,5),(316,10366,77,5),(317,10367,34,36),(318,10367,54,18),(319,10367,65,15),(320,10367,77,7),(321,10368,21,5),(322,10368,28,13),(323,10368,57,25),(324,10368,64,35),(325,10369,29,20),(326,10369,56,18),(327,10370,1,15),(328,10370,64,30),(329,10370,74,20),(330,10371,36,6),(331,10372,20,12),(332,10372,38,40),(333,10372,60,70),(334,10372,72,42),(335,10373,58,80),(336,10373,71,50),(337,10374,31,30),(338,10374,58,15),(339,10375,14,15),(340,10375,54,10),(341,10376,31,42),(342,10377,28,20),(343,10377,39,20),(344,10378,71,6),(345,10379,41,8),(346,10379,63,16),(347,10379,65,20),(348,10380,30,18),(349,10380,53,20),(350,10380,60,6),(351,10380,70,30),(352,10381,74,14),(353,10382,5,32),(354,10382,18,9),(355,10382,29,14),(356,10382,33,60),(357,10382,74,50),(358,10383,13,20),(359,10383,50,15),(360,10383,56,20),(361,10384,20,28),(362,10384,60,15),(363,10385,7,10),(364,10385,60,20),(365,10385,68,8),(366,10386,24,15),(367,10386,34,10),(368,10387,24,15),(369,10387,28,6),(370,10387,59,12),(371,10387,71,15),(372,10388,45,15),(373,10388,52,20),(374,10388,53,40),(375,10389,10,16),(376,10389,55,15),(377,10389,62,20),(378,10389,70,30),(379,10390,31,60),(380,10390,35,40),(381,10390,46,45),(382,10390,72,24),(383,10391,13,18),(384,10392,69,50),(385,10393,2,25),(386,10393,14,42),(387,10393,25,7),(388,10393,26,70),(389,10393,31,32),(390,10394,13,10),(391,10394,62,10),(392,10395,46,28),(393,10395,53,70),(394,10395,69,8),(395,10396,23,40),(396,10396,71,60),(397,10396,72,21),(398,10397,21,10),(399,10397,51,18),(400,10398,35,30),(401,10398,55,120),(402,10399,68,60),(403,10399,71,30),(404,10399,76,35),(405,10399,77,14),(406,10400,29,21),(407,10400,35,35),(408,10400,49,30),(409,10401,30,18),(410,10401,56,70),(411,10401,65,20),(412,10401,71,60),(413,10402,23,60),(414,10402,63,65),(415,10403,16,21),(416,10403,48,70),(417,10404,26,30),(418,10404,42,40),(419,10404,49,30),(420,10405,3,50),(421,10406,1,10),(422,10406,21,30),(423,10406,28,42),(424,10406,36,5),(425,10406,40,2),(426,10407,11,30),(427,10407,69,15),(428,10407,71,15),(429,10408,37,10),(430,10408,54,6),(431,10408,62,35),(432,10409,14,12),(433,10409,21,12),(434,10410,33,49),(435,10410,59,16),(436,10411,41,25),(437,10411,44,40),(438,10411,59,9),(439,10412,14,20),(440,10413,1,24),(441,10413,62,40),(442,10413,76,14),(443,10414,19,18),(444,10414,33,50),(445,10415,17,2),(446,10415,33,20),(447,10416,19,20),(448,10416,53,10),(449,10416,57,20),(450,10417,38,50),(451,10417,46,2),(452,10417,68,36),(453,10417,77,35),(454,10418,2,60),(455,10418,47,55),(456,10418,61,16),(457,10418,74,15),(458,10419,60,60),(459,10419,69,20),(460,10420,9,20),(461,10420,13,2),(462,10420,70,8),(463,10420,73,20),(464,10421,19,4),(465,10421,26,30),(466,10421,53,15),(467,10421,77,10),(468,10422,26,2),(469,10423,31,14),(470,10423,59,20),(471,10424,35,60),(472,10424,38,49),(473,10424,68,30),(474,10425,55,10),(475,10425,76,20),(476,10426,56,5),(477,10426,64,7),(478,10427,14,35),(479,10428,46,20),(480,10429,50,40),(481,10429,63,35),(482,10430,17,45),(483,10430,21,50),(484,10430,56,30),(485,10430,59,70),(486,10431,17,50),(487,10431,40,50),(488,10431,47,30),(489,10432,26,10),(490,10432,54,40),(491,10433,56,28),(492,10434,11,6),(493,10434,76,18),(494,10435,2,10),(495,10435,22,12),(496,10435,72,10),(497,10436,46,5),(498,10436,56,40),(499,10436,64,30),(500,10436,75,24),(501,10437,53,15),(502,10438,19,15),(503,10438,34,20),(504,10438,57,15),(505,10439,12,15),(506,10439,16,16),(507,10439,64,6),(508,10439,74,30),(509,10440,2,45),(510,10440,16,49),(511,10440,29,24),(512,10440,61,90),(513,10441,27,50),(514,10442,11,30),(515,10442,54,80),(516,10442,66,60),(517,10443,11,6),(518,10443,28,12),(519,10248,12,55),(520,10249,59,35),(521,10250,3,70),(522,10251,41,12),(523,10252,67,44),(524,10253,23,25),(525,10254,14,32),(526,10255,89,11),(527,10256,45,65),(528,10257,7,50),(529,10258,53,45),(530,10259,18,30),(531,10260,64,88),(532,10261,33,20),(533,10262,71,48),(534,10263,28,64),(535,10264,84,25),(536,10265,44,100),(537,10266,22,70),(538,10267,9,36),(539,10268,57,75),(540,10269,35,40),(541,10270,82,62),(542,10271,5,15),(543,10272,19,53),(544,10273,76,37),(545,10274,34,92),(546,10275,11,80),(547,10276,24,25),(548,10277,60,18),(549,10278,47,90),(550,10279,13,40),(551,10280,85,55),(552,10281,15,33),(553,10282,26,77),(554,10283,31,46),(555,10284,8,29),(556,10285,37,52),(557,10286,54,60),(558,10287,16,49),(559,10288,90,72),(560,10289,48,85),(561,10290,40,20),(562,10291,74,38),(563,10292,39,43),(564,10293,2,32),(565,10294,17,90),(566,10295,66,95),(567,10296,21,50),(568,10297,30,68),(569,10298,36,54),(570,10299,46,22),(571,10300,62,99),(572,10301,79,45),(573,10302,87,88),(574,10303,91,37),(575,10304,4,70),(576,10305,20,33),(577,10306,58,76),(578,10307,10,50),(579,10308,51,12),(580,10309,38,29),(581,10310,29,46),(582,10311,6,90),(583,10312,27,21),(584,10313,32,55),(585,10314,56,39),(586,10315,43,60),(587,10316,50,77),(588,10317,94,23),(589,10318,49,68),(590,10319,1,96),(591,10320,25,47),(592,10321,52,34),(593,10322,42,78),(594,10323,92,20),(595,10324,61,85),(596,10325,72,44),(597,10326,81,89),(598,10327,64,63),(599,10328,55,17),(600,10329,9,72),(601,10330,75,95),(602,10331,83,30),(603,10332,68,55),(604,10333,80,67),(605,10334,63,15),(606,10335,54,78),(607,10336,70,42),(608,10337,88,69),(609,10338,77,25),(610,10339,65,31),(611,10340,73,98),(612,10341,89,40),(613,10342,86,59),(614,10343,69,66),(615,10344,93,57),(616,10345,74,80),(617,10444,1,45),(618,10444,2,12),(619,10444,3,25),(620,10445,4,15),(621,10445,5,20),(622,10445,6,30),(623,10446,7,40),(624,10446,8,22),(625,10446,9,35),(626,10447,10,48),(627,10447,11,11),(628,10447,12,32),(629,10448,13,14),(630,10448,14,39),(631,10448,15,50),(632,10449,7,23),(633,10449,8,15),(634,10449,9,30),(635,10450,10,35),(636,10450,11,27),(637,10450,12,48),(638,10451,13,32),(639,10451,14,12),(640,10451,15,44),(641,10452,1,19),(642,10452,2,41),(643,10452,3,37),(644,10453,4,33),(645,10453,5,28),(646,10453,6,22),(647,10454,7,15),(648,10454,8,16),(649,10454,9,25),(650,10455,10,17),(651,10455,11,26),(652,10455,12,36),(653,10456,2,22),(654,10456,3,38),(655,10456,8,14),(656,10456,10,27),(657,10457,4,31),(658,10457,12,46),(659,10458,1,35),(660,10458,6,45),(661,10458,8,18),(662,10458,11,23),(663,10458,15,12),(664,10459,2,25),(665,10459,8,15),(666,10459,11,35),(667,10460,1,45),(668,10460,3,38),(669,10460,5,24),(670,10460,7,27),(671,10460,9,50),(672,10461,10,42),(673,10461,15,33),(674,10462,2,29),(675,10462,6,19),(676,10462,12,14),(677,10462,14,28),(678,10463,2,22),(679,10463,9,28),(680,10463,13,37),(681,10464,1,46),(682,10464,4,19),(683,10464,5,33),(684,10464,7,21),(685,10464,11,38),(686,10465,3,42),(687,10465,6,35),(688,10465,9,17),(689,10465,12,29),(690,10466,10,44),(691,10467,8,15),(692,10467,2,27),(693,10467,5,38),(694,10467,13,46),(695,10467,14,22),(696,10468,3,48),(697,10468,15,31),(698,10469,4,39),(699,10469,7,50),(700,10469,11,25),(701,10470,6,20),(702,10470,8,30),(703,10470,9,36),(704,10470,12,18),(705,10471,1,24),(706,10471,14,28),(707,10472,2,42),(708,10472,10,23),(709,10472,15,35),(710,10473,3,27),(711,10473,5,47),(712,10473,11,33),(713,10473,13,22),(714,10474,4,16),(715,10474,6,26),(716,10474,7,37),(717,10474,8,48),(718,10474,9,40),(719,10475,10,29),(720,10475,12,18),(721,10476,3,26),(722,10476,7,30),(723,10477,1,18),(724,10477,2,20),(725,10477,3,21),(726,10478,4,50),(727,10478,5,48),(728,10478,6,27);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `OrderDate` datetime DEFAULT NULL,
  `ShipperID` int(11) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `EmployeeID` (`EmployeeID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `ShipperID` (`ShipperID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`ShipperID`) REFERENCES `shippers` (`ShipperID`)
) ENGINE=InnoDB AUTO_INCREMENT=10479 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (10248,90,5,'2023-08-18 04:56:06',3),(10249,81,6,'2023-08-19 11:57:46',1),(10250,34,4,'2023-08-17 07:15:14',2),(10251,84,3,'2023-08-17 10:37:27',1),(10252,76,4,'2023-08-18 17:36:11',2),(10253,34,3,'2023-08-18 18:23:14',2),(10254,14,5,'2023-08-18 01:22:16',2),(10255,68,9,'2023-08-17 09:56:15',3),(10256,88,3,'2023-08-19 07:49:04',2),(10257,35,NULL,'2023-08-18 19:31:16',3),(10258,20,1,'2023-08-19 12:23:46',1),(10259,13,4,'2023-08-18 13:39:40',3),(10260,55,4,'2023-08-17 17:21:42',1),(10261,61,4,'2023-08-19 08:04:09',2),(10262,65,8,'2023-08-17 22:30:16',3),(10263,20,9,'2023-08-18 02:33:33',3),(10264,24,6,'2023-08-17 03:31:34',3),(10265,7,2,'2023-08-17 20:11:49',1),(10266,87,3,'2023-08-18 04:39:00',3),(10267,25,4,'2023-08-17 20:54:14',1),(10268,33,8,'2023-08-18 04:48:50',3),(10269,89,5,'2023-08-17 19:36:04',1),(10270,87,1,'2023-08-17 21:48:27',1),(10271,75,6,'2023-08-19 12:28:45',2),(10272,65,6,'2023-08-18 07:13:01',2),(10273,63,3,'2023-08-19 08:53:30',3),(10274,85,6,'2023-08-19 09:03:05',1),(10275,49,1,'2023-08-19 04:49:34',1),(10276,80,8,'2023-08-18 07:13:14',3),(10277,52,2,'2023-08-17 07:52:05',3),(10278,5,8,'2023-08-18 03:55:22',2),(10279,44,8,'2023-08-19 06:15:12',2),(10280,5,2,'2023-08-19 05:44:32',1),(10281,69,4,'2023-08-18 20:11:46',1),(10282,69,4,'2023-08-16 21:59:49',1),(10283,46,3,'2023-08-17 11:38:27',3),(10284,44,4,'2023-08-17 02:27:28',1),(10285,63,1,'2023-08-19 11:36:36',2),(10286,63,8,'2023-08-17 12:55:14',3),(10287,67,8,'2023-08-18 16:01:03',3),(10288,66,4,'2023-08-18 03:34:09',1),(10289,11,7,'2023-08-18 04:02:15',3),(10290,15,8,'2023-08-16 19:43:25',1),(10291,61,6,'2023-08-19 00:45:01',2),(10292,81,1,'2023-08-19 02:49:28',2),(10293,80,1,'2023-08-18 22:06:54',3),(10294,65,4,'2023-08-17 16:20:45',2),(10295,85,2,'2023-08-18 01:37:44',2),(10296,46,6,'2023-08-17 17:21:01',1),(10297,7,5,'2023-08-17 20:06:31',2),(10298,37,6,'2023-08-19 10:44:10',2),(10299,67,4,'2023-08-18 03:35:58',2),(10300,49,2,'2023-08-18 20:01:58',2),(10301,86,8,'2023-08-17 03:36:35',2),(10302,76,4,'2023-08-18 16:11:39',2),(10303,30,7,'2023-08-19 08:23:07',2),(10304,80,1,'2023-08-18 03:35:17',2),(10305,55,8,'2023-08-19 03:01:44',3),(10306,69,1,'2023-08-18 14:37:27',3),(10307,48,2,'2023-08-19 02:16:40',2),(10308,2,7,'2023-08-17 01:45:40',3),(10309,37,3,'2023-08-17 12:12:58',1),(10310,77,8,'2023-08-16 18:02:30',2),(10311,18,1,'2023-08-17 15:48:12',3),(10312,86,2,'2023-08-18 11:08:07',2),(10313,63,2,'2023-08-16 18:30:40',2),(10314,65,1,'2023-08-17 21:23:37',2),(10315,38,4,'2023-08-19 13:40:43',2),(10316,65,1,'2023-08-18 14:27:25',3),(10317,48,6,'2023-08-17 17:29:32',1),(10318,38,8,'2023-08-19 06:20:03',2),(10319,80,7,'2023-08-17 13:26:20',3),(10320,87,5,'2023-08-19 10:26:08',3),(10321,38,3,'2023-08-18 22:06:18',2),(10322,58,7,'2023-08-16 17:27:43',3),(10323,39,4,'2023-08-19 07:14:21',1),(10324,71,9,'2023-08-17 18:03:16',1),(10325,39,1,'2023-08-17 06:47:55',3),(10326,8,4,'2023-08-16 14:04:25',2),(10327,24,2,'2023-08-17 12:12:57',1),(10328,28,4,'2023-08-18 05:06:10',3),(10329,75,4,'2023-08-18 23:06:38',2),(10330,46,3,'2023-08-17 14:29:17',1),(10331,9,9,'2023-08-17 13:21:09',1),(10332,51,3,'2023-08-18 09:32:35',2),(10333,87,5,'2023-08-16 17:54:07',3),(10334,84,8,'2023-08-17 23:07:26',2),(10335,37,7,'2023-08-17 00:09:29',2),(10336,60,7,'2023-08-17 13:39:45',2),(10337,25,4,'2023-08-17 06:04:56',3),(10338,55,4,'2023-08-16 23:40:04',3),(10339,51,2,'2023-08-16 14:20:13',2),(10340,9,1,'2023-08-18 10:55:28',3),(10341,73,7,'2023-08-16 21:51:19',3),(10342,25,4,'2023-08-18 14:44:52',2),(10343,44,4,'2023-08-16 18:24:59',1),(10344,89,4,'2023-08-17 10:04:58',2),(10345,63,2,'2023-08-17 05:24:34',2),(10346,65,3,'2023-08-17 07:02:31',3),(10347,21,4,'2023-08-18 05:13:34',3),(10348,86,4,'2023-08-16 15:14:57',2),(10349,75,7,'2023-08-17 22:48:39',1),(10350,41,6,'2023-08-17 06:33:02',2),(10351,20,1,'2023-08-18 22:33:53',1),(10352,28,3,'2023-08-17 07:24:56',3),(10353,59,7,'2023-08-19 03:37:41',3),(10354,58,8,'2023-08-18 06:08:14',3),(10355,4,6,'2023-08-17 06:02:45',1),(10356,86,6,'2023-08-17 22:03:44',2),(10357,46,1,'2023-08-18 06:25:02',3),(10358,41,5,'2023-08-18 00:08:36',1),(10359,72,5,'2023-08-18 15:42:32',3),(10360,7,4,'2023-08-16 16:21:32',3),(10361,63,1,'2023-08-16 20:54:44',2),(10362,9,3,'2023-08-17 17:43:39',1),(10363,17,4,'2023-08-18 12:08:43',3),(10364,19,1,'2023-08-16 17:47:18',1),(10365,3,3,'2023-08-17 14:44:57',2),(10366,29,8,'2023-08-18 06:37:30',2),(10367,83,7,'2023-08-18 23:07:19',3),(10368,20,2,'2023-08-17 09:58:42',2),(10369,75,8,'2023-08-16 14:46:10',2),(10370,14,6,'2023-08-17 06:09:24',2),(10371,41,1,'2023-08-16 20:43:07',1),(10372,62,5,'2023-08-18 23:22:04',2),(10373,37,4,'2023-08-18 16:55:35',3),(10374,91,1,'2023-08-17 00:46:21',3),(10375,36,3,'2023-08-18 11:19:38',2),(10376,51,1,'2023-08-18 16:33:46',2),(10377,72,1,'2023-08-18 11:04:36',3),(10378,24,5,'2023-08-16 15:56:22',3),(10379,61,2,'2023-08-17 08:42:38',1),(10380,37,8,'2023-08-17 05:58:41',3),(10381,46,3,'2023-08-17 14:00:13',3),(10382,20,4,'2023-08-16 14:19:38',1),(10383,4,8,'2023-08-16 15:52:09',3),(10384,5,3,'2023-08-16 22:36:32',3),(10385,75,1,'2023-08-18 03:40:51',2),(10386,21,9,'2023-08-17 08:49:16',3),(10387,70,1,'2023-08-18 19:18:26',2),(10388,72,2,'2023-08-19 08:19:00',1),(10389,10,4,'2023-08-17 17:54:22',2),(10390,20,6,'2023-08-17 02:49:26',1),(10391,17,3,'2023-08-18 18:38:45',3),(10392,59,2,'2023-08-16 23:00:04',3),(10393,71,1,'2023-08-17 21:18:45',3),(10394,36,1,'2023-08-18 23:48:11',3),(10395,35,6,'2023-08-18 17:19:18',1),(10396,25,1,'2023-08-17 01:26:35',3),(10397,60,5,'2023-08-18 13:29:42',1),(10398,71,2,'2023-08-19 01:23:21',3),(10399,83,8,'2023-08-17 00:42:18',3),(10400,19,1,'2023-08-17 09:36:04',3),(10401,65,1,'2023-08-19 08:08:04',1),(10402,20,8,'2023-08-18 22:06:47',2),(10403,20,4,'2023-08-17 00:24:22',3),(10404,49,2,'2023-08-17 17:56:08',1),(10405,47,1,'2023-08-18 02:42:12',1),(10406,62,7,'2023-08-17 17:57:15',1),(10407,56,2,'2023-08-17 19:54:18',2),(10408,23,8,'2023-08-19 07:54:24',1),(10409,54,3,'2023-08-17 14:03:43',1),(10410,10,3,'2023-08-19 08:50:01',3),(10411,10,9,'2023-08-18 12:13:37',3),(10412,87,8,'2023-08-17 20:52:39',2),(10413,41,3,'2023-08-17 05:57:03',2),(10414,21,2,'2023-08-19 01:21:58',3),(10415,36,3,'2023-08-17 23:13:18',1),(10416,87,8,'2023-08-19 02:15:15',3),(10417,73,4,'2023-08-18 23:50:57',3),(10418,63,4,'2023-08-18 02:43:41',1),(10419,68,4,'2023-08-17 00:20:12',2),(10420,88,3,'2023-08-17 03:44:36',1),(10421,61,8,'2023-08-18 03:57:02',1),(10422,27,2,'2023-08-16 18:46:01',1),(10423,31,6,'2023-08-18 20:13:39',3),(10424,51,7,'2023-08-18 07:04:48',2),(10425,41,6,'2023-08-18 08:57:42',2),(10426,29,4,'2023-08-17 09:48:45',1),(10427,59,4,'2023-08-18 08:25:19',2),(10428,66,7,'2023-08-16 22:54:58',1),(10429,37,3,'2023-08-19 03:33:31',2),(10430,20,4,'2023-08-19 07:17:21',1),(10431,10,4,'2023-08-19 12:00:50',2),(10432,75,3,'2023-08-17 00:26:46',2),(10433,60,3,'2023-08-19 00:25:56',3),(10434,24,3,'2023-08-18 11:04:04',2),(10435,16,8,'2023-08-18 16:17:09',2),(10436,7,3,'2023-08-18 10:28:09',2),(10437,87,NULL,'2023-08-19 13:44:00',1),(10438,79,3,'2023-08-16 23:30:10',2),(10439,51,6,'2023-08-18 14:33:28',3),(10440,71,4,'2023-08-19 12:31:31',2),(10441,55,3,'2023-08-19 05:11:48',2),(10442,20,3,'2023-08-17 22:39:06',2),(10443,66,8,'2023-08-18 11:54:44',1),(10444,11,11,'2023-08-19 01:50:59',4),(10445,92,14,'2023-08-17 07:45:23',5),(10446,93,1,'2023-08-18 19:28:34',6),(10447,29,13,'2023-08-19 12:21:22',4),(10448,95,15,'2023-08-18 13:35:45',5),(10449,46,14,'2023-08-17 17:09:20',6),(10450,91,11,'2023-08-19 07:14:01',4),(10451,22,15,'2023-08-17 18:56:45',5),(10452,93,13,'2023-08-17 11:16:20',2),(10453,94,12,'2023-08-17 09:46:02',4),(10454,95,11,'2023-08-18 01:15:48',5),(10455,96,9,'2023-08-18 11:15:34',6),(10456,91,7,'2023-08-18 14:45:06',4),(10457,92,9,'2023-08-18 02:13:24',3),(10458,93,11,'2023-08-18 01:06:20',6),(10459,94,1,'2023-08-19 09:06:07',2),(10460,95,8,'2023-08-17 04:26:14',5),(10461,9,1,'2023-08-17 05:07:26',6),(10462,91,NULL,'2023-08-17 22:33:08',4),(10463,62,11,'2023-08-18 11:37:58',5),(10464,93,14,'2023-08-19 00:45:07',2),(10465,14,15,'2023-08-17 03:06:19',4),(10466,95,13,'2023-08-17 23:30:54',1),(10467,96,12,'2023-08-18 22:30:11',1),(10468,91,11,'2023-08-18 04:12:51',4),(10469,92,14,'2023-08-17 11:48:22',5),(10470,93,15,'2023-08-19 08:37:57',6),(10471,17,13,'2023-08-18 17:59:14',4),(10472,45,NULL,'2023-08-19 02:17:00',5),(10473,96,11,'2023-08-16 15:41:55',6),(10474,91,14,'2023-08-18 09:53:16',4),(10475,92,15,'2023-08-19 12:35:10',5),(10476,53,13,'2023-08-16 19:30:44',6),(10477,94,12,'2023-08-17 22:02:46',4),(10478,4,11,'2023-08-16 13:56:17',5);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(50) DEFAULT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `Unit` varchar(25) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `SupplierID` (`SupplierID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Chais',1,1,'10 boxes x 20 bags',18),(2,'Chang',1,1,'24 - 12 oz bottles',19),(3,'Aniseed Syrup',1,2,'12 - 550 ml bottles',10),(4,'Chef Anton\'s Cajun Seasoning',2,2,'48 - 6 oz jars',22),(5,'Chef Anton\'s Gumbo Mix',2,2,'36 boxes',21),(6,'Grandma\'s Boysenberry Spread',3,2,'12 - 8 oz jars',25),(7,'Uncle Bob\'s Organic Dried Pears',3,7,'12 - 1 lb pkgs.',NULL),(8,'Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',40),(9,'Mishi Kobe Niku',4,6,'18 - 500 g pkgs.',97),(10,'Ikura',4,8,'12 - 200 ml jars',31),(11,'Queso Cabrales',5,4,'1 kg pkg.',21),(12,'Queso Manchego La Pastora',5,4,'10 - 500 g pkgs.',38),(13,'Konbu',6,8,'2 kg box',6),(14,'Tofu',6,7,'40 - 100 g pkgs.',23),(15,'Genen Shouyu',6,2,'24 - 250 ml bottles',16),(16,'Pavlova',7,3,'32 - 500 g boxes',17),(17,'Alice Mutton',7,6,'20 - 1 kg tins',39),(18,'Carnarvon Tigers',7,8,'16 kg pkg.',63),(19,'Teatime Chocolate Biscuits',8,3,'10 boxes x 12 pieces',9),(20,'Sir Rodney\'s Marmalade',8,3,'30 gift boxes',81),(21,'Sir Rodney\'s Scones',8,3,'24 pkgs. x 4 pieces',10),(22,'Gustaf\'s Knäckebröd',9,5,'24 - 500 g pkgs.',21),(23,'Tunnbröd',9,5,'12 - 250 g pkgs.',9),(24,'Guaraná Fantástica',10,1,'12 - 355 ml cans',5),(25,'NuNuCa Nuß-Nougat-Creme',11,3,'20 - 450 g glasses',14),(26,'Gumbär Gummibärchen',11,3,'100 - 250 g bags',31),(27,'Schoggi Schokolade',11,3,'100 - 100 g pieces',44),(28,'Rössle Sauerkraut',12,7,'25 - 825 g cans',46),(29,'Thüringer Rostbratwurst',12,6,'50 bags x 30 sausgs.',124),(30,'Nord-Ost Matjeshering',13,8,'10 - 200 g glasses',26),(31,'Gorgonzola Telino',14,4,'12 - 100 g pkgs',NULL),(32,'Mascarpone Fabioli',14,4,'24 - 200 g pkgs.',32),(33,'Geitost',15,4,'500 g',3),(34,'Sasquatch Ale',16,1,'24 - 12 oz bottles',14),(35,'Steeleye Stout',16,1,'24 - 12 oz bottles',18),(36,'Inlagd Sill',17,8,'24 - 250 g jars',19),(37,'Gravad lax',17,8,'12 - 500 g pkgs.',26),(38,'Côte de Blaye',18,1,'12 - 75 cl bottles',264),(39,'Chartreuse verte',18,1,'750 cc per bottle',18),(40,'Boston Crab Meat',19,8,'24 - 4 oz tins',18),(41,'Jack\'s New England Clam Chowder',19,8,'12 - 12 oz cans',10),(42,'Singaporean Hokkien Fried Mee',20,5,'32 - 1 kg pkgs.',14),(43,'Ipoh Coffee',20,1,'16 - 500 g tins',46),(44,'Gula Malacca',20,2,'20 - 2 kg bags',19),(45,'Røgede sild',21,8,'1k pkg.',10),(46,'Spegesild',21,8,'4 - 450 g glasses',12),(47,'Zaanse koeken',22,3,'10 - 4 oz boxes',10),(48,'Chocolade',22,3,'10 pkgs.',13),(49,'Maxilaku',23,3,'24 - 50 g pkgs.',20),(50,'Valkoinen suklaa',23,3,'12 - 100 g bars',16),(51,'Manjimup Dried Apples',24,7,'50 - 300 g pkgs.',53),(52,'Filo Mix',24,5,'16 - 2 kg boxes',7),(53,'Perth Pasties',24,6,'48 pieces',33),(54,'Tourtière',25,NULL,'16 pies',7),(55,'Pâté chinois',25,6,'24 boxes x 2 pies',24),(56,'Gnocchi di nonna Alice',26,5,'24 - 250 g pkgs.',38),(57,'Ravioli Angelo',26,5,'24 - 250 g pkgs.',20),(58,'Escargots de Bourgogne',27,8,'24 pieces',13),(59,'Raclette Courdavault',28,4,'5 kg pkg.',55),(60,'Camembert Pierrot',28,4,'15 - 300 g rounds',34),(61,'Sirop d\'érable',29,2,'24 - 500 ml bottles',29),(62,'Tarte au sucre',29,3,'48 pies',49),(63,'Vegie-spread',7,2,'15 - 625 g jars',44),(64,'Wimmers gute Semmelknödel',12,5,'20 bags x 4 pieces',33),(65,'Louisiana Fiery Hot Pepper Sauce',2,NULL,'32 - 8 oz bottles',NULL),(66,'Louisiana Hot Spiced Okra',2,2,'24 - 8 oz jars',17),(67,'Laughing Lumberjack Lager',16,1,'24 - 12 oz bottles',14),(68,'Scottish Longbreads',8,3,'10 boxes x 8 pieces',13),(69,'Gudbrandsdalsost',15,4,'10 kg pkg.',36),(70,'Outback Lager',7,1,'24 - 355 ml bottles',15),(71,'Fløtemysost',15,4,'10 - 500 g pkgs.',22),(72,'Mozzarella di Giovanni',14,4,'24 - 200 g pkgs.',35),(73,'Röd Kaviar',17,8,'24 - 150 g jars',15),(74,'Longlife Tofu',4,7,'5 kg pkg.',10),(75,'Rhönbräu Klosterbier',12,1,'24 - 0.5 l bottles',8),(76,'Lakkalikööri',23,1,'500 ml',18),(77,'Original Frankfurter grüne Soße',12,2,'12 boxes',13),(78,'Green Apple Soda',1,1,'24 - 355 ml cans',19),(79,'Honey Mustard Sauce',12,NULL,'12 - 250 ml jars',10),(80,'Dark Chocolate Truffles',3,3,'10 - 100 g boxes',26),(81,'Mozzarella Cheeseballs',4,4,'5 - 200 g packs',14),(82,'Multi-Grain Pasta',15,5,'12 - 500 g packs',23),(83,'Chicken Sausages',6,6,'10 - 500 g packs',36),(84,'Sun-Dried Tomatoes',7,7,'6 - 250 g jars',16),(85,'Canned Tuna',28,8,'24 - 150 g cans',24),(86,'Organic Romaine Lettuce',7,9,'15 heads/bag',11),(87,'Almond Milk',10,10,'12 - 1 l bottles',28),(88,'Gluten-Free Bread',1,11,'10 - 500 g loaves',19),(89,'Red Grape Juice',25,1,'24 - 355 ml bottles',21),(90,'Spicy BBQ Sauce',32,2,'12 - 250 ml jars',13),(91,'Vegan Ice Cream',9,3,'5 - 500 ml tubs',30),(92,'Lactose-Free Yogurt',28,4,'10 - 200 ml cups',16),(93,'Organic Brown Rice',31,5,'12 - 1 kg bags',26),(94,'Beef Steak',30,6,'5 - 500 g packs',45);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippers`
--

DROP TABLE IF EXISTS `shippers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shippers` (
  `ShipperID` int(11) NOT NULL AUTO_INCREMENT,
  `ShipperName` varchar(25) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ShipperID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippers`
--

LOCK TABLES `shippers` WRITE;
/*!40000 ALTER TABLE `shippers` DISABLE KEYS */;
INSERT INTO `shippers` VALUES (1,'Speedy Express','(503) 555-9831'),(2,'United Package','(503) 555-3199'),(3,'Federal Shipping','(503) 555-9931'),(4,'Global Express','(123) 456-7890'),(5,'Swift Shipping','(987) 654-3210'),(6,'Reliable Couriers','(555) 777-8888');
/*!40000 ALTER TABLE `shippers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storages`
--

DROP TABLE IF EXISTS `storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storages` (
  `StorageID` int(11) NOT NULL AUTO_INCREMENT,
  `Shelf` varchar(10) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `WarehouseID` int(11) NOT NULL,
  PRIMARY KEY (`StorageID`),
  KEY `fk_warehouse` (`WarehouseID`),
  KEY `fk_product` (`ProductID`),
  CONSTRAINT `fk_product` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_warehouse` FOREIGN KEY (`WarehouseID`) REFERENCES `warehouses` (`WarehouseID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storages`
--

LOCK TABLES `storages` WRITE;
/*!40000 ALTER TABLE `storages` DISABLE KEYS */;
INSERT INTO `storages` VALUES (2,'A7',16000,2,3),(3,'W8',24000,14,3),(4,'B5',50000,49,2),(5,'C9',35000,43,2),(6,'A1',95000,84,3),(7,'Q7',15000,87,3);
/*!40000 ALTER TABLE `storages` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER storages_before_insert
BEFORE INSERT ON storages
FOR EACH ROW
BEGIN
    
    IF NEW.Quantity < 0 OR NEW.Quantity > 5000000 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Quantity must be between 0 and 5,000,000.';
    END IF;

    
    IF NEW.Shelf NOT REGEXP '^[A-Z][0-9]+$' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Shelf identifier must be in format XY, where X is A-Z and Y is 0-9.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `storages_backup`
--

DROP TABLE IF EXISTS `storages_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storages_backup` (
  `StorageID` int(11) NOT NULL DEFAULT 0,
  `Shelf` varchar(10) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `WarehouseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storages_backup`
--

LOCK TABLES `storages_backup` WRITE;
/*!40000 ALTER TABLE `storages_backup` DISABLE KEYS */;
INSERT INTO `storages_backup` VALUES (2,'A7',16000,2,3),(3,'W8',24000,14,3),(4,'B5',50000,49,2),(5,'C9',35000,43,2),(6,'A1',95000,84,3),(7,'Q7',15000,87,3);
/*!40000 ALTER TABLE `storages_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL AUTO_INCREMENT,
  `SupplierName` varchar(50) DEFAULT NULL,
  `ContactName` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Exotic Liquid','Charlotte Cooper','49 Gilbert St.','Londona','EC1 4SD','UK','(171) 555-2222'),(2,'New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934','New Orleans','70117','USA','(100) 555-4822'),(3,'Grandma Kelly\'s Homestead','Regina Murphy','707 Oxford Rd.','Ann Arbor','48104','USA','(313) 555-5735'),(4,'Tokyo Traders','Yoshi Nagase','9-8 Sekimai Musashino-shi','Tokyo','100','Japan','(03) 3555-5011'),(5,'Cooperativa de Quesos \'Las Cabras\'','Antonio del Valle Saavedra','Calle del Rosal 4','Oviedo','33007','Spain','(98) 598 76 54'),(6,'Mayumi\'s','Mayumi Ohno','92 Setsuko Chuo-ku','Osaka','545','Japan','(06) 431-7877'),(7,'Pavlova, Ltd.','Ian Devling','74 Rose St. Moonie Ponds','Melbourne','3058','Australia','(03) 444-2343'),(8,'Specialty Biscuits, Ltd.','Peter Wilson','29 King\'s Way','Manchester','M14 GSD','UK','(161) 555-4448'),(9,'PB Knäckebröd AB','Lars Peterson','Kaloadagatan 13','Göteborg','S-345 67','Sweden','031-987 65 43'),(10,'Refrescos Americanas LTDA','Carlos Diaz','Av. das Americanas 12.890','São Paulo','5442','Brazil','(11) 555 4640'),(11,'Heli Süßwaren GmbH & Co. KG','Petra Winkler','Tiergartenstraße 5','Berlin','10785','Germany','(010) 9984510'),(12,'Plutzer Lebensmittelgroßmärkte AG','Martin Bein','Bogenallee 51','Frankfurt','60439','Germany','(069) 992755'),(13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Frahmredder 112a','Cuxhaven','27478','Germany','(04721) 8713'),(14,'Formaggi Fortini s.r.l.','Elio Rossi','Viale Dante, 75','Ravenna','48100','Italy','(0544) 60323'),(15,'Norske Meierier','Beate Vileid','Hatlevegen 5','Sandvika','1320','Norway','(0)2-953010'),(16,'Bigfoot Breweries','Cheryl Saylor','3400 - 8th Avenue Suite 210','Bend','97101','USA','(503) 555-9931'),(17,'Svensk Sjöföda AB','Michael Björn','Brovallavägen 231','Stockholm','S-123 45','Sweden','08-123 45 67'),(18,'Aux joyeux ecclésiastiques','Guylène Nodier','203, Rue des Francs-Bourgeois','Paris','75004','France','(1) 03.83.00.68'),(19,'New England Seafood Cannery','Robb Merchant','Order Processing Dept. 2100 Paul Revere Blvd.','Boston','2134','USA','(617) 555-3267'),(20,'Leka Trading','Chandra Leka','471 Serangoon Loop, Suite #402','Singapore','512','Singapore','555-8787'),(21,'Lyngbysild','Niels Petersen','Lyngbysild Fiskebakken 10','Lyngby','2800','Denmark','43844108'),(22,'Zaanse Snoepfabriek','Dirk Luchte','Verkoop Rijnweg 22','Zaandam','9999 ZZ','Netherlands','(12345) 1212'),(23,'Karkki Oy','Anne Heikkonen','Valtakatu 12','Lappeenranta','53120','Finland','(953) 10956'),(24,'G\'day, Mate','Wendy Mackenzie','170 Prince Edward Parade Hunter\'s Hill','Sydney','2042','Australia','(02) 555-5914'),(25,'Ma Maison','Jean-Guy Lauzon','2960 Rue St. Laurent','Montréal','H1J 1C3','Canada','(514) 555-9022'),(26,'Pasta Buttini s.r.l.','Giovanni Giudici','Via dei Gelsomini, 153','Salerno','84100','Italy','(089) 6547665'),(27,'Escargots Nouveaux','Marie Delamare','22, rue H. Voiron','Montceau','71300','France','85.57.00.07'),(28,'Gai pâturage','Eliane Noz','Bat. B 3, rue des Alpes','Annecy','74000','France','38.76.98.06'),(29,'Forêts d\'érables','Chantal Goulet','148 rue Chasseur','Ste-Hyacinthe','J2S 7S8','Canada','(514) 555-2955'),(30,'Golden Fields','Ethan Mitchell','100 Farm Rd','Omaha','68101','USA','(402) 555-2020'),(31,'Clear Waters','Charlotte Adams','202 Lake Dr','Cleveland','44101','USA','(216) 555-2121'),(32,'Skyline Orchards','Benjamin Clark','300 Mountain Ave','Boise','83701','USA','(208) 555-2222'),(33,'Earth\'s Bounty','Amelia Hill','400 Plains Blvd','Wichita','67201','USA','(316) 555-2323'),(34,'Solar Groves','Harper Stewart','500 Sun Way','Albuquerque','87101','USA','(505) 555-2424'),(35,'Tasty Roots','Liam Nelson','45 Cedar St','Denver','80201','USA','(303) 555-6789'),(36,'Green Leaf Organics','Olivia Grace','1555 Pine Ave','Seattle','98101','USA','(206) 555-1011'),(37,'Nature\'s Delight','Lucas Murphy','22 Hill St','Portland','97201','USA','(503) 555-1212'),(38,'Mountain Foods','Emma Hughes','365 Valley Rd','Salt Lake City','84101','USA','(801) 555-1313'),(39,'Ocean Breeze Seafood','Noah Thompson','480 Harbor Dr','San Diego','92101','USA','(619) 555-1414'),(40,'Desert Grains','Ava Collins','655 Sandy Way','Phoenix','85001','USA','(602) 555-1515'),(41,'Tropical Fruits','Isabella Parker','50 Palm Tree Blvd','Miami','33101','USA','(305) 555-1616'),(42,'Urban Farms','Sophia Evans','77 Downtown St','Dallas','75201','USA','(214) 555-1717'),(43,'Fresh & Frozen','Mason Hall','888 Arctic Ln','Minneapolis','55401','USA','(612) 555-1818'),(44,'Sunny Pastures','Mia Wright','303 Sunshine Blvd','Tampa','33601','USA','(813) 555-1919');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouses` (
  `WarehouseID` int(11) NOT NULL AUTO_INCREMENT,
  `Address` varchar(255) NOT NULL,
  `PostalCode` varchar(20) NOT NULL,
  `City` varchar(100) NOT NULL,
  `SurfaceArea` decimal(10,1) NOT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `LastUpdated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `AdditionalInfo` text DEFAULT NULL,
  PRIMARY KEY (`WarehouseID`),
  KEY `fk_supplier` (`SupplierID`),
  CONSTRAINT `fk_supplier` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` VALUES (2,'1030 SE Forest Ridge Ct','64014','Blue Springs',350.0,35,'2024-10-08 09:08:54',NULL),(3,'800 W Champain St','65026','Eldon',400.0,2,'2024-10-08 09:08:54',NULL),(4,'3100 Payson Rd','62305','Quincy',280.0,41,'2024-10-08 09:08:54',NULL),(5,'650 E Grand Ave','64429','Cameron',310.0,16,'2024-10-08 09:08:54',NULL);
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-23  9:34:47
