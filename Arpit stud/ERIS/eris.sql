/*
SQLyog Community Edition- MySQL GUI v8.01 
MySQL - 5.1.48-community : Database - erisdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`erisdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `erisdb`;

/*Table structure for table `applicanttb` */

DROP TABLE IF EXISTS `applicanttb`;

CREATE TABLE `applicanttb` (
  `AppID` bigint(15) DEFAULT NULL,
  `First_Name` varchar(60) DEFAULT NULL,
  `Last_Name` varchar(60) DEFAULT NULL,
  `Cur_Location` varchar(60) DEFAULT NULL,
  `City` varchar(60) DEFAULT NULL,
  `Dob` varchar(20) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Mobile` varchar(11) DEFAULT NULL,
  `Marital_Status` varchar(20) DEFAULT NULL,
  `Email` varchar(60) DEFAULT NULL,
  `State` varchar(60) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Basic` varchar(60) DEFAULT NULL,
  `Degree_Type` varchar(50) DEFAULT NULL,
  `University` varchar(60) DEFAULT NULL,
  `Year` varchar(10) DEFAULT NULL,
  `P_Graduate` varchar(80) DEFAULT NULL,
  `Degree_Type1` varchar(60) DEFAULT NULL,
  `Uni` varchar(80) DEFAULT NULL,
  `P_Year` varchar(10) DEFAULT NULL,
  `Prefered_Loc` varchar(80) DEFAULT NULL,
  `Experience` varchar(60) DEFAULT NULL,
  `Curr_Company` varchar(80) DEFAULT NULL,
  `Designation` varchar(80) DEFAULT NULL,
  `Func_Area` varchar(80) DEFAULT NULL,
  `Role` varchar(80) DEFAULT NULL,
  `Objective` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `applicanttb` */

insert  into `applicanttb`(`AppID`,`First_Name`,`Last_Name`,`Cur_Location`,`City`,`Dob`,`Gender`,`Mobile`,`Marital_Status`,`Email`,`State`,`Pincode`,`Address`,`Basic`,`Degree_Type`,`University`,`Year`,`P_Graduate`,`Degree_Type1`,`Uni`,`P_Year`,`Prefered_Loc`,`Experience`,`Curr_Company`,`Designation`,`Func_Area`,`Role`,`Objective`) values (1,'Lalit','Soni','Rewari','Rewari','03/12','MALE','9050144414','Single','lalit.soni86@yahoo.com','Haryana','123501',' ','BA','Correspondence','MD Rohtak','null','MCA','Regular','MDU Rohtak','2012','Delhi/NCR','6 Months','No','No','Software ','Developer ',NULL),(2,'dds','dsds','dsds','dsd','33',NULL,'645645',NULL,'fdsf','Haryana','','dsfsdfasfasdfadsfasdfasdfasdf','','','','','','','','','','','','','asdfdsf','sdf',NULL),(3,'dsf','dsfdsf','dfdsf','dsfdsf','23/3','MALE','9393','Single','rakesh@gmail.com','Haryana','123451','dsfsfdsfdsfsds','dsfds','dsfds','dsfdsf','323','DSFDSF','DFDSFDS','EWE','433','DSFDSF','DSFDSF','DSFDSF','DSFSDF','DSFDSF','SFDSF',NULL),(4,'Manish','Sharma','Haryana','Rewari','02/02/1989','MALE','9493943943','Single','xy@gmail.com','Haryana','123591','VPO Bawal Rewari','BA','Regular','MD Rohtak','2008','','','','','','','','','IT','Developer',NULL),(5,'Mohan','Sharma','Rewari','Rewari','04/03/1988','MALE','944834837','Single','mohan@gmail.com','Haryana','123401','VPO Bawal Dist Rewari','BA','Regular','MDU Rohtak','2009','','','','','','','','','HR','Executive','Obtain a Good Company ');

/*Table structure for table `applytb` */

DROP TABLE IF EXISTS `applytb`;

CREATE TABLE `applytb` (
  `Jobid` bigint(15) DEFAULT NULL,
  `Appid` varchar(50) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `applytb` */

insert  into `applytb`(`Jobid`,`Appid`,`date`) values (1,'lalit.soni86@yahoo.com','02/05/2014'),(2,'rakesh@gmail.com','02/05/2014'),(1,'rakesh@gmail.com','2-4-2014'),(2,'rakesh@gmail.com','2-5-2014'),(2,'rakesh@gmail.com','13-5-2014');

/*Table structure for table `fileupload` */

DROP TABLE IF EXISTS `fileupload`;

CREATE TABLE `fileupload` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `filedata` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fileupload` */

/*Table structure for table `interviewtb` */

DROP TABLE IF EXISTS `interviewtb`;

CREATE TABLE `interviewtb` (
  `Jobid` bigint(10) DEFAULT NULL,
  `Appid` bigint(10) DEFAULT NULL,
  `Company_Name` varchar(60) DEFAULT NULL,
  `Post_Name` varchar(60) DEFAULT NULL,
  `Applicant_Name` varchar(60) DEFAULT NULL,
  `Location` varchar(80) DEFAULT NULL,
  `Doi` varchar(20) DEFAULT NULL,
  `Time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `interviewtb` */

insert  into `interviewtb`(`Jobid`,`Appid`,`Company_Name`,`Post_Name`,`Applicant_Name`,`Location`,`Doi`,`Time`) values (1,3,'xyz','Executive','Rakesh','Rewari','02/05/2014','11:22'),(2,2,'ABC ','Sales','Mukesh','Delhi','03/05/2014','11:33'),(5,2,'Software Point','Engineer','Rakesh','Bhiwadi','14/05/2014','10:30');

/*Table structure for table `jobtb` */

DROP TABLE IF EXISTS `jobtb`;

CREATE TABLE `jobtb` (
  `Jobid` bigint(10) DEFAULT NULL,
  `Email` varchar(80) DEFAULT NULL,
  `Dept_Name` varchar(60) DEFAULT NULL,
  `Post_Name` varchar(60) DEFAULT NULL,
  `Location` varchar(60) DEFAULT NULL,
  `Experience` varchar(60) DEFAULT NULL,
  `Dop` varchar(20) DEFAULT NULL,
  `Key_Skill` varchar(60) DEFAULT NULL,
  `Salary` varchar(20) DEFAULT NULL,
  `Company_Name` varchar(80) DEFAULT NULL,
  `Address` varchar(80) DEFAULT NULL,
  `Edu_Required` varchar(60) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jobtb` */

insert  into `jobtb`(`Jobid`,`Email`,`Dept_Name`,`Post_Name`,`Location`,`Experience`,`Dop`,`Key_Skill`,`Salary`,`Company_Name`,`Address`,`Edu_Required`,`Status`) values (1,NULL,'HR','Executive','Rewari','1 Year Minimum','02/03/2014','None','10000','abc company','Gurgaon','MBA ','Open'),(2,NULL,'IT','Network Eng','Rewari','6 Months','02/03/2014','MCSE','15000','xyz company','Gurgaon','Graduate','Open'),(3,NULL,'Producation','Sn.Engineer','Dharuhera','less than one Year','04/05/2014','None','5000','Ti Metal','Dharuhera Haryana','Any Graduate','Closed'),(4,NULL,'Purchase','Manager','Bhiwadi','5 Year','13/05/2014','Management ','35000','Software Point','Gurgaon','MBA Regular','Open'),(5,'pawan@yahoo.com','LAB','Engineer','Rewari','6 Months','13/05/2014','None','10000','Software Point','Gurgaon','Any Graduate','Open');

/*Table structure for table `recruiterdetailtb` */

DROP TABLE IF EXISTS `recruiterdetailtb`;

CREATE TABLE `recruiterdetailtb` (
  `ID` bigint(10) DEFAULT NULL,
  `Company_Name` varchar(80) DEFAULT NULL,
  `Address` varchar(80) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `recruiterdetailtb` */

insert  into `recruiterdetailtb`(`ID`,`Company_Name`,`Address`,`Designation`) values (5,'Software Point','Phase-1,Gurgaon','HR Executive');

/*Table structure for table `registertb` */

DROP TABLE IF EXISTS `registertb`;

CREATE TABLE `registertb` (
  `ID` bigint(10) NOT NULL,
  `Name` varchar(60) DEFAULT NULL,
  `Email` varchar(80) DEFAULT NULL,
  `Password` varchar(60) DEFAULT NULL,
  `Contact` decimal(11,0) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `User_Type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `registertb` */

insert  into `registertb`(`ID`,`Name`,`Email`,`Password`,`Contact`,`Gender`,`User_Type`) values (1,'lalit','lalit.soni86@yahoo.com','123456','9050144414','Male','Admin'),(2,'Rakesh','rakesh@gmail.com','123456','903939382','Male','Applicant'),(3,'Pradeep','pradeep@gmail.com','123456','9483837483','Male','Recruiter'),(4,'Srishti','srishti@gmail.com','123456','4938473843','Female','Admin'),(5,'Pawan','pawan@yahoo.com','123456','9040342323','Male','Recruiter');

/*Table structure for table `resulttb` */

DROP TABLE IF EXISTS `resulttb`;

CREATE TABLE `resulttb` (
  `SrNo` bigint(10) DEFAULT NULL,
  `Jobid` bigint(15) DEFAULT NULL,
  `Appid` bigint(15) DEFAULT NULL,
  `App_Name` varchar(60) DEFAULT NULL,
  `Status` varchar(60) DEFAULT NULL,
  `Salary` varchar(60) DEFAULT NULL,
  `Doj` varchar(20) DEFAULT NULL,
  `Job_Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `resulttb` */

insert  into `resulttb`(`SrNo`,`Jobid`,`Appid`,`App_Name`,`Status`,`Salary`,`Doj`,`Job_Status`) values (1,1,3,'Rakesh','Selected','10000','02/05/2014','Closed');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
