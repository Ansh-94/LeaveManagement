-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: leavemgmt
-- ------------------------------------------------------
-- Server version 	10.4.24-MariaDB
-- Date: Fri, 09 Jun 2023 10:29:01 +0200

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40101 SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `departmentmaster`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departmentmaster` (
  `DeptID` int(5) NOT NULL AUTO_INCREMENT,
  `DeptName` varchar(20) NOT NULL,
  `Flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`DeptID`)
) ENGINE=MyISAM AUTO_INCREMENT=557 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departmentmaster`
--

LOCK TABLES `departmentmaster` WRITE;
/*!40000 ALTER TABLE `departmentmaster` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `departmentmaster` VALUES (1,'Computer',0),(6,'Electrical',0),(4,'mechanical',0),(5,'Civil ',0);
/*!40000 ALTER TABLE `departmentmaster` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `departmentmaster` with 4 row(s)
--

--
-- Table structure for table `facultyinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facultyinfo` (
  `FacultyInfoID` int(5) NOT NULL AUTO_INCREMENT,
  `FacultyName` varchar(20) NOT NULL,
  `ContactNo` varchar(10) NOT NULL,
  `JoiningDate` date NOT NULL,
  `RelievingDate` date NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `DeptID` int(5) NOT NULL,
  PRIMARY KEY (`FacultyInfoID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultyinfo`
--

LOCK TABLES `facultyinfo` WRITE;
/*!40000 ALTER TABLE `facultyinfo` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `facultyinfo` VALUES (2,'PSP','8866530357','2005-03-04','2022-03-04','MCAD Lecturer',1),(8,'VBB','8866530357','2009-10-22','8798-02-06','PPUD Lecturer',1),(5,'ARpit','8866564488','2023-03-06','2023-03-30','hmm',1);
/*!40000 ALTER TABLE `facultyinfo` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `facultyinfo` with 3 row(s)
--

--
-- Table structure for table `facultyleaveallocation`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facultyleaveallocation` (
  `FacultyLeaveAllocationID` int(5) NOT NULL AUTO_INCREMENT,
  `FacultyInfoID` int(5) NOT NULL,
  `TypeOfLeaveID` int(5) NOT NULL,
  `Date` date NOT NULL,
  `DeptID` int(5) NOT NULL,
  PRIMARY KEY (`FacultyLeaveAllocationID`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultyleaveallocation`
--

LOCK TABLES `facultyleaveallocation` WRITE;
/*!40000 ALTER TABLE `facultyleaveallocation` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `facultyleaveallocation` VALUES (20,10,1,'2023-04-14',6),(14,10,4,'2023-04-13',6),(17,8,3,'2023-04-12',1),(18,10,3,'2023-04-12',6),(19,10,1,'2023-04-12',6),(26,2,1,'2023-04-21',1),(25,2,3,'2023-04-21',1);
/*!40000 ALTER TABLE `facultyleaveallocation` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `facultyleaveallocation` with 7 row(s)
--

--
-- Table structure for table `facultyleavemaster`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facultyleavemaster` (
  `FacultyLeaveMasterID` int(5) NOT NULL AUTO_INCREMENT,
  `FacultyInfoID` int(5) NOT NULL,
  `TypeOfLeaveID` int(5) NOT NULL,
  `LeaveCount` int(5) NOT NULL,
  `YearID` int(5) NOT NULL,
  `DeptID` int(5) NOT NULL,
  PRIMARY KEY (`FacultyLeaveMasterID`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultyleavemaster`
--

LOCK TABLES `facultyleavemaster` WRITE;
/*!40000 ALTER TABLE `facultyleavemaster` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `facultyleavemaster` VALUES (33,2,7,5,3,1),(20,2,4,1,4,1),(28,5,1,8,1,1),(32,8,3,3,2,1),(30,8,1,10,4,1);
/*!40000 ALTER TABLE `facultyleavemaster` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `facultyleavemaster` with 5 row(s)
--

--
-- Table structure for table `typeofleave`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typeofleave` (
  `TypeOfLeaveID` int(5) NOT NULL AUTO_INCREMENT,
  `LeaveType` varchar(10) NOT NULL,
  `Flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`TypeOfLeaveID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typeofleave`
--

LOCK TABLES `typeofleave` WRITE;
/*!40000 ALTER TABLE `typeofleave` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `typeofleave` VALUES (1,'HCL',0),(2,'CL',0),(3,'RH',0),(4,'HPL',0),(6,'ML',0),(5,'SPL',0),(8,'EL',0),(7,'LWP',0),(9,'Vacation',0),(10,'OD',0);
/*!40000 ALTER TABLE `typeofleave` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `typeofleave` with 10 row(s)
--

--
-- Table structure for table `usermaster`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermaster` (
  `UserMasterID` int(5) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `UserType` varchar(15) NOT NULL,
  `DeptID` int(5) NOT NULL,
  PRIMARY KEY (`UserMasterID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermaster`
--

LOCK TABLES `usermaster` WRITE;
/*!40000 ALTER TABLE `usermaster` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `usermaster` VALUES (1,'admin','11111','Admin',444),(2,'esta','22222','ESTA',555),(3,'Parin','33333','Department User',1);
/*!40000 ALTER TABLE `usermaster` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `usermaster` with 3 row(s)
--

--
-- Table structure for table `yearmaster`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yearmaster` (
  `YearID` int(5) NOT NULL AUTO_INCREMENT,
  `Year` int(4) NOT NULL,
  `Flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`YearID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yearmaster`
--

LOCK TABLES `yearmaster` WRITE;
/*!40000 ALTER TABLE `yearmaster` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `yearmaster` VALUES (1,2022,0),(2,2023,0),(3,2024,1),(4,2025,1),(5,2026,1),(6,2027,1),(7,2025,1),(8,2020,1);
/*!40000 ALTER TABLE `yearmaster` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `yearmaster` with 8 row(s)
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET AUTOCOMMIT=@OLD_AUTOCOMMIT */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Fri, 09 Jun 2023 10:29:01 +0200
