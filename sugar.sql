-- MySQL dump 10.13  Distrib 5.6.24, for osx10.10 (x86_64)
--
-- Host: 127.0.0.1    Database: sugarcrm
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_audit`
--

LOCK TABLES `accounts_audit` WRITE;
/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bugs`
--

LOCK TABLES `accounts_bugs` WRITE;
/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cases`
--

LOCK TABLES `accounts_cases` WRITE;
/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts`
--

LOCK TABLES `accounts_contacts` WRITE;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_opportunities`
--

LOCK TABLES `accounts_opportunities` WRITE;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES ('118c0b05-56ef-9fb6-b15b-55c8b3b09dfe','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','Accounts','module',90,0),('16790d6c-4c2a-27f3-5f45-55c8b39cf41a','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','Accounts','module',90,0),('17bac389-2ba1-8d2a-fbdb-55c8b31b1b6c','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','EmailTemplates','module',89,0),('181ad5d9-5ede-239d-31a0-55c8b3dc85ec','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','EmailTemplates','module',90,0),('185fe105-f4aa-76be-71b8-55c8b3dc2fd1','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','EmailTemplates','module',90,0),('18a5a785-f8f8-e384-2a20-55c8b36c7e03','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','EmailTemplates','module',90,0),('18f5b954-7928-c885-5219-55c8b3b2535d','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','EmailTemplates','module',90,0),('1945cacd-ae44-1d6b-eab0-55c8b315f400','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','EmailTemplates','module',90,0),('199561ba-cf38-ef92-c0c4-55c8b309bb58','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','EmailTemplates','module',90,0),('19deffda-c081-46a6-8915-55c8b339d26d','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','EmailTemplates','module',90,0),('1d490ebe-94d7-6b5e-e7e0-55c8b3ed201b','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','Accounts','module',90,0),('1f744a91-20cc-cec0-a12b-55c8b31897f0','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','Notes','module',89,0),('1fbae23a-226f-02da-3f9d-55c8b35ea7c7','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','Notes','module',90,0),('1ffee7c6-c58c-e62a-8c64-55c8b31a38c0','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','Notes','module',90,0),('2041bd2e-e631-60f8-10e7-55c8b3aa01f4','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','Notes','module',90,0),('207b1f00-867a-0883-1440-55c8b3171ea6','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','Notes','module',90,0),('20b873bc-6467-432e-f522-55c8b394fba7','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','Notes','module',90,0),('20f49844-5010-25ba-0b80-55c8b3496094','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','Notes','module',90,0),('21476a28-eeca-521c-0aca-55c8b3b14fef','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','Notes','module',90,0),('215e0349-f571-1c57-d940-55c8b32ded75','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','Accounts','module',90,0),('25cb00be-69be-534c-b35a-55c8b3f58b9b','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','Accounts','module',90,0),('2a43fca9-c7d8-fabe-df21-55c8b3f414dd','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','Calls','module',89,0),('2a9cbaa1-cddf-f699-3652-55c8b3044f4f','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','Calls','module',90,0),('2adb79b0-17db-a76c-b691-55c8b31af424','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','Calls','module',90,0),('2b18edff-6af6-869e-87c2-55c8b3deada4','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','Calls','module',90,0),('2b59261e-685c-2025-30db-55c8b321dbaa','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','Calls','module',90,0),('2b9760d5-6698-1aca-799c-55c8b3ea1d22','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','Calls','module',90,0),('2bd5205c-43e2-dda8-5c66-55c8b37287e4','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','Calls','module',90,0),('2c12d5d4-d0f3-2029-8b07-55c8b32486fc','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','Calls','module',90,0),('3262956e-2095-1ed1-ae12-55c8b3c9ea47','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','Emails','module',89,0),('32a71c12-28a9-b323-0039-55c8b37544af','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','Emails','module',90,0),('32fefd16-b5ac-b8ef-9fc3-55c8b3fd10e2','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','Emails','module',90,0),('333f0b92-2cf4-28fc-18d4-55c8b32e07d8','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','Emails','module',90,0),('3386b31e-e6a2-2741-8280-55c8b394a053','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','Emails','module',90,0),('33c40b5b-5ec2-7f81-3a46-55c8b31618f9','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','Emails','module',90,0),('34047433-dcd2-68ca-7067-55c8b3107852','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','Emails','module',90,0),('34452753-1f2f-8917-679f-55c8b3836b44','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','Emails','module',90,0),('37500e51-8d8a-b07f-b9ad-55cba7319b9c','2015-08-12 20:07:14','2015-08-12 20:07:14','1','1','view','fox_Task','module',90,0),('3b117c5e-a086-3d46-7338-55c8b32535bc','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','Meetings','module',89,0),('3b55046d-fe02-9168-eba0-55c8b3235427','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','Meetings','module',90,0),('3b7c5a45-f6f4-9e68-e2ce-55ca0016a9db','2015-08-11 14:01:41','2015-08-11 14:01:41','1','1','access','fox_Course','module',89,0),('3bafe434-7a6d-29d5-0819-55c8b31b616d','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','Meetings','module',90,0),('3bf04799-4943-cbe7-fc19-55c8b379280c','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','Meetings','module',90,0),('3c2c51e5-9efb-b428-b456-55c8b3553281','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','Meetings','module',90,0),('3c6d765f-b8d4-1392-e5bd-55c8b3e47065','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','Meetings','module',90,0),('3c94a511-68c7-c3a0-a6f2-55ca00a3af68','2015-08-11 14:01:41','2015-08-11 14:01:41','1','1','view','fox_Course','module',90,0),('3d015079-db1f-ab5d-c068-55ca0026500a','2015-08-11 14:01:41','2015-08-11 14:01:41','1','1','list','fox_Course','module',90,0),('3d19188f-3780-ed8a-9ea5-55c8b3317edc','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','Meetings','module',90,0),('3d511b7f-3818-6268-2676-55ca00f362f1','2015-08-11 14:01:41','2015-08-11 14:01:41','1','1','edit','fox_Course','module',90,0),('3d6f2924-243a-6291-e3ba-55c8b3e562b4','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','Meetings','module',90,0),('3de0807c-fb46-7873-3b0d-55ca0096cd59','2015-08-11 14:01:41','2015-08-11 14:01:41','1','1','delete','fox_Course','module',90,0),('3e3890af-4260-41a3-09ec-55ca00483f1c','2015-08-11 14:01:41','2015-08-11 14:01:41','1','1','import','fox_Course','module',90,0),('3e881821-73f8-444c-57e6-55ca00ab281f','2015-08-11 14:01:41','2015-08-11 14:01:41','1','1','export','fox_Course','module',90,0),('3eda8ac5-59bd-e24a-a654-55ca0029d325','2015-08-11 14:01:41','2015-08-11 14:01:41','1','1','massupdate','fox_Course','module',90,0),('44e20a46-e292-9440-a6d9-55cba7eda82c','2015-08-12 20:07:14','2015-08-12 20:07:14','1','1','list','fox_Task','module',90,0),('45c33449-5e62-b16c-f707-55c8b3cd947a','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','Tasks','module',89,0),('4661339a-4f31-52b1-91c3-55c8b3570e40','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','Tasks','module',90,0),('4711b0ca-faed-6c4a-702c-55c8b35e970f','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','Tasks','module',90,0),('477310ea-e3f9-a023-85d3-55c8b33b9287','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','Tasks','module',90,0),('47defe7e-68bb-22df-ea4d-55c8b33f56a3','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','Tasks','module',90,0),('487c29f5-6a68-9e9f-d57c-55c8b36317e1','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','Tasks','module',90,0),('49c502ad-48f8-da8b-006c-55c8b3ca8002','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','Tasks','module',90,0),('49e70acb-67e6-76cd-047f-55cba7bfd0eb','2015-08-12 20:07:14','2015-08-12 20:07:14','1','1','edit','fox_Task','module',90,0),('4a1b1edf-586f-5961-0d0c-55c8b31411d1','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','Tasks','module',90,0),('4c300a13-3a26-805a-4bc8-55c8b36d4aff','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','Accounts','module',90,0),('4e240e54-6e88-0863-8610-55cba79aa8c7','2015-08-12 20:07:14','2015-08-12 20:07:14','1','1','delete','fox_Task','module',90,0),('524c016d-b4a5-5ed5-3674-55cba7731d2d','2015-08-12 20:07:14','2015-08-12 20:07:14','1','1','import','fox_Task','module',90,0),('5d4919eb-1bed-cd4d-85e1-55c8b31c642b','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','Leads','module',89,0),('5df8c538-605b-6ce5-79e1-55c8b3ca957d','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','Leads','module',90,0),('5e673d0e-6457-e45b-19c2-55c8b3fab033','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','Leads','module',90,0),('5ed68706-288a-d30a-fca5-55c8b3d96507','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','Leads','module',90,0),('5f39ed53-add4-dd25-c653-55c8b383a1a1','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','Leads','module',90,0),('5f5b009b-2ccd-b595-7097-55cba744f22d','2015-08-12 20:07:14','2015-08-12 20:07:14','1','1','export','fox_Task','module',90,0),('5f9d3760-40dc-c7a9-417f-55c8b31b185f','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','Leads','module',90,0),('600be691-4436-2a25-a88d-55c8b366812d','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','Leads','module',90,0),('609b56fb-bcc7-be2a-5c75-55c8b34b9c29','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','Leads','module',90,0),('6696016c-3bca-429a-6076-55cba76fd567','2015-08-12 20:07:14','2015-08-12 20:07:14','1','1','massupdate','fox_Task','module',90,0),('6fd6b8b6-3321-eb9b-db48-55c8b3ac739c','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','Cases','module',89,0),('702c44dc-7a05-b064-306d-55c8b3bd1e55','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','Cases','module',90,0),('708115cc-a288-e2a2-b1bb-55c8b38e7538','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','Cases','module',90,0),('70d9bac7-b784-3c0c-cfcd-55c8b3449c4e','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','Cases','module',90,0),('7122e1a9-31f4-86c6-a9b6-55c8b3b86a2c','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','Cases','module',90,0),('71766853-1072-709d-f6cc-55c8b3065ff1','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','Cases','module',90,0),('71d0f69c-5813-e987-d5bf-55c8b369044e','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','Cases','module',90,0),('72160b3d-bd11-7c2c-6dcf-55c8b30e3fba','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','Cases','module',90,0),('75f767e9-b1cd-c1f4-19d1-55c8b342f520','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','Documents','module',89,0),('763ce73b-07c7-78f2-d1a3-55c8b3ba6c37','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','Documents','module',90,0),('767d18fc-3892-c438-953a-55c8b3207cb3','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','Documents','module',90,0),('76bccfd8-a7d2-7111-c2b7-55c8b30dba3e','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','Documents','module',90,0),('76fbbbcf-7da6-a741-512c-55c8b32f62d7','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','Documents','module',90,0),('7738618d-ddfa-1def-8692-55c8b34cf7c9','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','Documents','module',90,0),('77930f90-283b-f284-7267-55c8b3b999fa','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','Documents','module',90,0),('77d0a5f2-fb90-7f9e-98b8-55c8b3dc2ed9','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','Documents','module',90,0),('7d8e77bc-68d4-71b8-e761-55c8b3913780','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','Bugs','module',89,0),('7df035cd-50ff-1847-04e5-55c8b377365d','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','Bugs','module',90,0),('7e41ce32-c422-5346-34fc-55c8b3e83513','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','Bugs','module',90,0),('7e9747c6-1607-e14d-de12-55c8b357d873','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','Bugs','module',90,0),('7ee6c13a-86d0-6206-2936-55c8b3695ce8','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','Bugs','module',90,0),('7f310f6b-4bda-f80f-e612-55c8b33fad29','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','Bugs','module',90,0),('7f7e1c30-ec51-ac4c-0026-55c8b3329f89','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','Bugs','module',90,0),('7fd8971d-ea7d-1b50-8c63-55c8b35f029d','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','Bugs','module',90,0),('8b6af1d3-3f69-fde9-2f65-55c8b3c87062','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','Users','module',89,0),('8bc30da8-c924-4921-a17b-55c8b30f75fe','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','Users','module',90,0),('8c137154-3bc9-e417-576b-55c8b34ed59e','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','Users','module',90,0),('8c60afed-5547-e3af-52ed-55c8b3d8d2e1','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','Users','module',90,0),('8cc4944c-4b2a-6b98-7f9b-55c8b3dd7d97','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','Users','module',90,0),('8d1845dd-1f98-68de-2413-55c8b3e5117a','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','Users','module',90,0),('8d498a4b-5408-7597-1fbb-55cccd758d2e','2015-08-13 17:01:05','2015-08-13 17:01:05','1','1','access','fox_UserTask','module',89,0),('8d66942f-0c8b-5d9e-371b-55c8b3524800','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','Users','module',90,0),('8db230f3-2668-dcd5-ced2-55c8b349efb8','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','Users','module',90,0),('8e54d364-a5a4-9a49-a977-55cccd17c8ab','2015-08-13 17:01:05','2015-08-13 17:01:05','1','1','view','fox_UserTask','module',90,0),('8eb502e1-b68a-39f5-e22e-55cccd2eb877','2015-08-13 17:01:05','2015-08-13 17:01:05','1','1','list','fox_UserTask','module',90,0),('8f089dd5-cdad-b9e8-1243-55cccda815c8','2015-08-13 17:01:05','2015-08-13 17:01:05','1','1','edit','fox_UserTask','module',90,0),('8f4d3f8b-2b79-36c3-41dd-55cccd210aaf','2015-08-13 17:01:05','2015-08-13 17:01:05','1','1','delete','fox_UserTask','module',90,0),('8f8c83ab-7044-581d-4837-55cccdfd3227','2015-08-13 17:01:05','2015-08-13 17:01:05','1','1','import','fox_UserTask','module',90,0),('8fcb43bd-72a9-2ef7-f48e-55cccde81689','2015-08-13 17:01:05','2015-08-13 17:01:05','1','1','export','fox_UserTask','module',90,0),('900df512-d2d0-f009-2185-55cccda9eef7','2015-08-13 17:01:05','2015-08-13 17:01:05','1','1','massupdate','fox_UserTask','module',90,0),('98603e81-d434-c5ce-579c-55c8b3cea424','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','Project','module',89,0),('98c33f1a-ba53-dff0-8e20-55c8b36da329','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','Project','module',90,0),('9910739a-6773-c968-3f8e-55c8b3de2b8c','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','Project','module',90,0),('995deba3-c2fe-fef6-a72f-55c8b3af4346','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','Project','module',90,0),('99990de8-e6b1-da50-ed2d-55c8b3f761ec','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','Project','module',90,0),('99e71509-51d5-2ec6-0b15-55c8b3d880e6','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','Project','module',90,0),('9a3210df-1834-846d-5f2d-55c8b31c1b4c','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','Project','module',90,0),('9a677d4d-bca7-86a1-2b20-55c8b3d18a0b','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','Project','module',90,0),('9e9f822e-f5c2-6881-6fc7-55c8b37ed737','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','EAPM','module',89,0),('9ee25df3-ecf9-e8f0-f4dc-55c8b325d8b2','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','EAPM','module',90,0),('9f1fc354-0c55-73ab-99b6-55c8b3778776','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','EAPM','module',90,0),('9f59f286-50c8-c465-820d-55c8b36165aa','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','EAPM','module',90,0),('9f96a0fa-5c5c-38d3-c443-55c8b34640f2','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','EAPM','module',90,0),('9fdf9a1b-2579-5900-f817-55c8b37e0c07','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','EAPM','module',90,0),('a01e0325-bb65-9bf6-93a7-55c8b3d07d9f','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','EAPM','module',90,0),('a07cfa7d-ef81-492a-ac4d-55c8b3a9cf9b','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','EAPM','module',90,0),('a1328f1d-f0a7-d2fb-cf66-55c8b3c65a22','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','ProjectTask','module',89,0),('a1749a8f-c890-d6d1-e6d6-55c8b36aeb6a','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','ProjectTask','module',90,0),('a1af302e-9c71-d210-5e59-55c8b349f075','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','ProjectTask','module',90,0),('a1e6d87b-e1f4-b3e5-7152-55c8b36ed853','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','ProjectTask','module',90,0),('a2207678-78cf-7636-d6c0-55c8b31268e5','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','ProjectTask','module',90,0),('a2594698-2e39-b49d-fe59-55c8b3e22698','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','ProjectTask','module',90,0),('a2b5ed89-8585-7e50-31c2-55c8b3279a85','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','ProjectTask','module',90,0),('a3997fa8-59f4-2e50-acfd-55c8b357fd55','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','ProjectTask','module',90,0),('ae857eb6-8947-fdb1-7541-55c8b39f36e1','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','Campaigns','module',89,0),('aec0bd32-2326-aab4-1cac-55c8b3c3356c','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','Campaigns','module',90,0),('aef541cb-02a2-ecec-5716-55c8b30dd2ef','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','Campaigns','module',90,0),('af2b2613-62e6-5b21-6131-55c8b386aef2','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','Campaigns','module',90,0),('af726159-10f4-d5e4-e9fd-55c8b363d5d8','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','Campaigns','module',90,0),('afb9b2ea-29e9-651e-9a64-55c8b35e6f5d','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','Campaigns','module',90,0),('b004c61e-b501-3371-1d02-55c8b39f7d16','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','Campaigns','module',90,0),('b03f15fc-d0f2-53e6-ce0b-55c8b3443f8e','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','Campaigns','module',90,0),('b7800c9e-f57f-b061-0ada-55c8b368064d','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','Accounts','module',90,0),('ba98af72-4f2f-b853-20d6-55c8b3a273aa','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','ProspectLists','module',89,0),('baf0c4b2-b357-d2ba-6afa-55c8b3cb1628','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','ProspectLists','module',90,0),('bb37700e-17d6-7198-59ed-55c8b3a3aecd','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','ProspectLists','module',90,0),('bb81c088-70ff-7726-a80c-55c8b3d91699','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','ProspectLists','module',90,0),('bbc55342-d36d-39d1-4f7d-55c8b3c800c3','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','ProspectLists','module',90,0),('bc23dca9-abfa-a6c5-f999-55c8b381a1e8','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','ProspectLists','module',90,0),('bc65375e-4e28-4bcd-e94b-55c8b3c8211f','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','ProspectLists','module',90,0),('bcfe30d4-dffd-5899-034c-55c8b3442634','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','ProspectLists','module',90,0),('c4224732-7e55-dea1-e3fb-55c8b3111f48','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','Prospects','module',89,0),('c47c2f7f-e520-b7c2-2df0-55c8b3890d63','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','Prospects','module',90,0),('c4b7e1f2-bd8e-1f5f-1613-55c8b3dffd2b','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','Prospects','module',90,0),('c4efe088-0a01-cf46-fd33-55c8b3eba069','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','Prospects','module',90,0),('c523f83e-4351-4beb-9070-55c8b3d28079','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','Prospects','module',90,0),('c5573277-9e61-1a0b-16fa-55c8b3b826a4','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','Prospects','module',90,0),('c591b3d1-c984-6a0b-0f5a-55c8b32560fd','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','Prospects','module',90,0),('c5c9bb61-2e26-30d4-7437-55c8b33d9d0e','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','Prospects','module',90,0),('cac70b81-c5c6-b49b-2b4c-55c8b3ab099d','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','Opportunities','module',89,0),('cb8b7ae8-164a-8fac-0430-55c8b3522506','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','EmailMarketing','module',89,0),('cc08eeb5-5ee7-14e6-8286-55c8b37bf8a6','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','EmailMarketing','module',90,0),('cc80c341-b6ff-39de-d09e-55c8b32510f0','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','EmailMarketing','module',90,0),('cce80f2d-7411-8bd2-3526-55c8b3bcf4cc','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','EmailMarketing','module',90,0),('cd27b1d8-fc1a-3212-c8af-55c8b3644f1b','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','EmailMarketing','module',90,0),('cd6bf2f3-9c19-a88c-47f0-55c8b3e95f90','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','EmailMarketing','module',90,0),('cda147f6-ee03-3c53-3c45-55c8b3ac2618','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','EmailMarketing','module',90,0),('cdd9e5a3-c4cf-f5e5-74c3-55c8b3b41b1c','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','EmailMarketing','module',90,0),('ce100b30-429c-b119-a3aa-55cba784aa2c','2015-08-12 20:07:14','2015-08-12 20:07:14','1','1','access','fox_Task','module',89,0),('cfbd0a0f-b3a0-16c2-ae39-55c8b357d84d','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','Opportunities','module',90,0),('d5290087-bcad-f82b-5246-55c8b3a55e9f','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','Opportunities','module',90,0),('d9cb0f3a-f8ae-df2e-7128-55c8b31ae39d','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','Opportunities','module',90,0),('ddb90f80-3cda-ff9b-9f00-55c8b3e95776','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','Opportunities','module',90,0),('e2540a11-0ea7-8ff6-b60e-55c8b3dadf79','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','Opportunities','module',90,0),('e65c02bf-8eac-29fd-afd1-55c8b314a7d5','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','Opportunities','module',90,0),('e6af5603-6854-f709-cf8a-55c8b33070ca','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','Contacts','module',89,0),('e6ebe457-4c7d-3e97-0834-55c8b334d484','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','view','Contacts','module',90,0),('e7214332-4761-9f14-9855-55c8b3925f10','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','list','Contacts','module',90,0),('e75ac6e1-edbe-dae5-d9c0-55c8b3d5dfa7','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','edit','Contacts','module',90,0),('e7af3177-01d4-f825-2b7f-55c8b3635261','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','delete','Contacts','module',90,0),('e80711c2-c716-82a2-9d19-55c8b347a41e','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','import','Contacts','module',90,0),('e8442ca4-2a68-fb04-7e1c-55c8b3957727','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','export','Contacts','module',90,0),('e87afbe0-e285-b186-49bc-55c8b3028dbb','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','Contacts','module',90,0),('ea5b053e-f54b-7284-05ae-55c8b37b4ac7','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','massupdate','Opportunities','module',90,0),('f411ad91-97c1-313f-50f6-55c8b31400d7','2015-08-10 14:20:19','2015-08-10 14:20:19','1','','access','Accounts','module',89,0);
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles`
--

LOCK TABLES `acl_roles` WRITE;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_actions`
--

LOCK TABLES `acl_roles_actions` WRITE;
/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_users`
--

LOCK TABLES `acl_roles_users` WRITE;
/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asterisk_log`
--

DROP TABLE IF EXISTS `asterisk_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asterisk_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `call_record_id` char(36) DEFAULT NULL,
  `asterisk_id` varchar(45) DEFAULT NULL,
  `callstate` varchar(10) DEFAULT NULL,
  `uistate` varchar(10) DEFAULT NULL,
  `callerID` varchar(45) DEFAULT NULL,
  `callerName` varchar(45) DEFAULT NULL,
  `channel` varchar(30) DEFAULT NULL,
  `remote_channel` varchar(30) DEFAULT NULL,
  `timestampCall` datetime DEFAULT NULL,
  `timestampLink` datetime DEFAULT NULL,
  `timestampHangup` datetime DEFAULT NULL,
  `direction` varchar(1) DEFAULT NULL,
  `hangup_cause` int(11) DEFAULT NULL,
  `hangup_cause_txt` varchar(45) DEFAULT NULL,
  `asterisk_dest_id` varchar(45) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opencnam` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asterisk_log`
--

LOCK TABLES `asterisk_log` WRITE;
/*!40000 ALTER TABLE `asterisk_log` DISABLE KEYS */;
INSERT INTO `asterisk_log` VALUES (1,'14496d16-f16a-164d-fbf7-55d36b8acc56','1439919028.48','Hangup','Closed','0079266908568',NULL,'SIP/101-00000028','SIP/mg74951200434-1-00000029','2015-08-18 17:30:38','2015-08-18 17:31:08','2015-08-18 17:31:18','O',16,'Normal Clearing',NULL,'2effa666-45bb-11e5-95f8-a5ac70298007',NULL),(2,'b902a111-b160-9e61-908b-55d36c5ea08d','1439919169.50','Hangup','Closed','0079266908568',NULL,'SIP/101-0000002a','SIP/mg74951200434-1-0000002b','2015-08-18 17:32:59','2015-08-18 17:33:58','2015-08-18 17:34:08','O',16,'Normal Clearing',NULL,'2effa666-45bb-11e5-95f8-a5ac70298007',NULL),(3,'33b60a00-88d9-aa66-1ddc-55d36cbfc213','1439919304.52','Hangup','Closed','0079266908568',NULL,'SIP/101-0000002c','SIP/mg74951200434-1-0000002d','2015-08-18 17:35:14','2015-08-18 17:35:38','2015-08-18 17:35:48','O',16,'Normal Clearing',NULL,'2effa666-45bb-11e5-95f8-a5ac70298007',NULL);
/*!40000 ALTER TABLE `asterisk_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asterisk_log1`
--

DROP TABLE IF EXISTS `asterisk_log1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asterisk_log1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_master` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `call_record_id` char(36) DEFAULT NULL,
  `asterisk_id` varchar(45) DEFAULT NULL,
  `callstate` varchar(10) DEFAULT NULL,
  `uistate` varchar(10) DEFAULT NULL,
  `callerID` varchar(45) DEFAULT NULL,
  `channel` varchar(30) DEFAULT NULL,
  `remote_channel` varchar(30) DEFAULT NULL,
  `timestamp_call` datetime DEFAULT NULL,
  `timestamp_link` datetime DEFAULT NULL,
  `timestamp_hangup` datetime DEFAULT NULL,
  `direction` varchar(1) DEFAULT NULL,
  `asterisk_dest_id` varchar(45) DEFAULT NULL,
  `opencnam` varchar(16) DEFAULT NULL,
  `answered` tinyint(1) DEFAULT '0',
  `user_extension` varchar(16) DEFAULT NULL,
  `user_device` varchar(16) DEFAULT NULL,
  `inbound_extension` varchar(16) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_name` char(50) DEFAULT NULL,
  `bean_link` char(255) DEFAULT NULL,
  `bean_description` text,
  `parent_module` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_name` char(50) DEFAULT NULL,
  `parent_link` char(255) DEFAULT NULL,
  `push_sent` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_extension` (`user_extension`),
  KEY `call_record_id` (`call_record_id`),
  KEY `uistate` (`uistate`),
  KEY `timestamp_call` (`timestamp_call`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asterisk_log1`
--

LOCK TABLES `asterisk_log1` WRITE;
/*!40000 ALTER TABLE `asterisk_log1` DISABLE KEYS */;
INSERT INTO `asterisk_log1` VALUES (89,0,'ecdf98f7-47a6-05cc-5fb1-55d352b67ae7','1439912567.18','Connected',NULL,'74951200434','SIP/101-00000011','SIP/mg74951200434-1-00000012','2015-08-18 15:42:47','2015-08-18 15:43:14',NULL,'O','1439912573.19',NULL,0,'101',NULL,NULL,'contacts','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','czc scszcsz','http://sugarcrm.local/index.php?module=Contacts&action=DetailView&record=6d3d7686-71f3-bfac-5d3a-55cdbd07c69e',NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `asterisk_log1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs_audit`
--

LOCK TABLES `bugs_audit` WRITE;
/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
INSERT INTO `calls` VALUES ('10ff2e8f-da0e-e8ea-bbee-55d32c02093b','Outgoing call','2015-08-18 13:01:35','2015-08-18 13:02:46','1','1',NULL,0,'1',0,0,'2015-08-18 13:01:25','2015-08-18 13:01:25',NULL,'Held','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('115f6222-92d9-ccda-0c42-55d36144f21a','** Automatic record **','2015-08-18 16:48:49','2015-08-18 16:48:59','1','1',NULL,0,'1',0,NULL,'0000-00-00 00:00:00',NULL,NULL,'In Limbo','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('14496d16-f16a-164d-fbf7-55d36b8acc56','OBC: хуйхуй','2015-08-18 17:30:33','2015-08-18 17:31:44','1','1','хуйхуй',0,'1',0,0,'2015-08-18 17:30:38','2015-08-18 17:30:38','Accounts','Held','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('2bf2dd62-45bb-11e5-95f8-a5ac70298007',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'Planned','I',NULL,-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('2c5c05d1-bed4-eb42-26e9-55d34c1f5e22','Outgoing call','2015-08-18 15:15:10','2015-08-18 15:16:22','1','1',NULL,0,'1',0,0,'2015-08-18 15:15:05','2015-08-18 15:15:05',NULL,'Held','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('2d9045ee-f6a8-65aa-45fb-55c8bf684514','аыс','2015-08-10 15:13:09','2015-08-10 15:13:09','1','1','свясы',0,'1',0,15,'2015-08-10 15:15:00','2015-08-10 15:30:00','Accounts','Planned','Inbound','',1800,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('2dfb747f-189e-d452-5d76-55d34785e563','Outgoing call','2015-08-18 14:57:54','2015-08-18 15:00:02','1','1',NULL,0,'1',0,1,'2015-08-18 14:57:46','2015-08-18 14:58:46',NULL,'Held','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('2e581d6a-17c5-4dc9-a2fa-55d35671aa5b','Outgoing call','2015-08-18 16:02:00','2015-08-18 16:02:00','1','1','',0,'1',0,0,'2015-08-18 16:01:42','2015-08-18 16:01:42',NULL,'Held',NULL,NULL,-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('33b60a00-88d9-aa66-1ddc-55d36cbfc213','Outgoing call','2015-08-18 17:35:08','2015-08-18 17:36:14','1','1',NULL,0,'1',0,0,'2015-08-18 17:35:14','2015-08-18 17:35:14','Accounts','Held','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('34807b3e-6c22-2d90-0ac6-55d358ada94e','** Automatic record **','2015-08-18 16:10:24','2015-08-18 16:10:34','1','1',NULL,0,'1',0,NULL,'0000-00-00 00:00:00',NULL,NULL,'In Limbo','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('3a738693-bdb3-4e19-b7e5-55d35587c15b','Outgoing call','2015-08-18 15:54:55','2015-08-18 16:01:33','1','1',NULL,0,'1',0,1,'2015-08-18 15:54:00','2015-08-18 15:55:00','Accounts','Held','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('3c548c69-4680-7bc3-ccff-55d349b17644','Outgoing call','2015-08-18 15:03:05','2015-08-18 15:04:57','1','1',NULL,0,'1',0,0,'2015-08-18 15:03:10','2015-08-18 15:03:10',NULL,'Held','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('4dd58d82-a1a8-8c70-3ea7-55d356301575','Outgoing call','2015-08-18 15:58:00','2015-08-18 15:58:00','1','1','',0,'1',0,0,'2015-08-18 15:57:44','2015-08-18 15:57:44',NULL,'Held',NULL,NULL,-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('652f0274-ce58-5f66-a7d4-55d3536b09bf','Outgoing call','2015-08-18 15:48:17','2015-08-18 15:57:14','1','1',NULL,0,'1',0,5,'2015-08-18 15:48:00','2015-08-18 15:53:00','Accounts','Held','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('70e087f3-b6ba-1d19-5c0d-55d34de42232','Outgoing call','2015-08-18 15:21:35','2015-08-18 15:23:47','1','1',NULL,0,'1',0,1,'2015-08-18 15:21:26','2015-08-18 15:22:26',NULL,'Held','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('8f883146-a49e-3afe-bb9c-55d32b08154a','Outgoing call','2015-08-18 12:58:32','2015-08-18 12:58:32','1','1','',0,'1',0,0,'2015-08-18 12:57:44','2015-08-18 12:57:44',NULL,'Held',NULL,NULL,-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('9f071198-85dc-19c1-0a35-55d355306a50','Outgoing call','2015-08-18 15:57:39','2015-08-18 15:57:39','1','1','',0,'1',0,0,'2015-08-18 15:57:22','2015-08-18 15:57:22',NULL,'Held',NULL,NULL,-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('a02fd29b-bea0-0ac1-f353-55d3587ed6b2','** Automatic record **','2015-08-18 16:06:31','2015-08-18 16:06:41','1','1',NULL,0,'1',0,NULL,'0000-00-00 00:00:00',NULL,NULL,'In Limbo','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('b902a111-b160-9e61-908b-55d36c5ea08d','OBC: Пользователь сказал, ч...','2015-08-18 17:32:54','2015-08-18 17:34:34','1','1','Пользователь сказал, что будет покупать курсы но позже.',0,'1',0,0,'2015-08-18 17:32:59','2015-08-18 17:32:59','Accounts','Held','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('c217f45d-89fd-0f67-9bc1-55d359c7ba31','** Automatic record **','2015-08-18 16:12:34','2015-08-18 16:12:44','1','1',NULL,0,'1',0,NULL,'0000-00-00 00:00:00',NULL,NULL,'In Limbo','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('c70498d6-a2f0-1bfc-81fa-55d353368e7c','Outgoing call','2015-08-18 15:46:34','2015-08-18 15:48:07','1','1',NULL,0,'1',0,0,'2015-08-18 15:46:26','2015-08-18 15:46:26',NULL,'Held','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('d434b013-d7bf-9c11-4b05-55d34b9098c5','Outgoing call','2015-08-18 15:13:43','2015-08-18 15:15:00','1','1',NULL,0,'1',0,0,'2015-08-18 15:13:35','2015-08-18 15:13:35',NULL,'Held','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('dbe33cc0-ab5b-8377-11ca-55d356b6f3bd','Outgoing call','2015-08-18 15:58:20','2015-08-18 15:58:20','1','1','',0,'1',0,0,'2015-08-18 15:57:44','2015-08-18 15:57:44',NULL,'Held',NULL,NULL,-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),('e6a4e84d-2ee3-d7b4-c76d-55d358ef7516','** Automatic record **','2015-08-18 16:08:49','2015-08-18 16:09:00','1','1',NULL,0,'1',0,NULL,'0000-00-00 00:00:00',NULL,NULL,'In Limbo','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL),('ecdf98f7-47a6-05cc-5fb1-55d352b67ae7','Outgoing call','2015-08-18 15:42:58','2015-08-18 15:45:30','1','1',NULL,0,'1',0,2,'2015-08-18 15:42:47','2015-08-18 15:44:47',NULL,'Held','Outbound','',-1,-1,0,NULL,NULL,1,NULL,NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_contacts`
--

LOCK TABLES `calls_contacts` WRITE;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
INSERT INTO `calls_contacts` VALUES ('163db5b2-8cfd-76e4-3d87-55d3552991b9','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('165c81d7-3648-38f6-c094-55d353b06673','c70498d6-a2f0-1bfc-81fa-55d353368e7c','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('1833808c-86d8-5ee0-c999-55d3557a330f','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('1ddfba77-bf4f-45cc-632a-55d355158551','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('22c28c2b-5ca9-400c-456c-55d355f69e60','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('236b0ab9-9340-6524-23b2-55d36cd60bd4','b902a111-b160-9e61-908b-55d36c5ea08d','2effa666-45bb-11e5-95f8-a5ac70298007','1','none','2015-08-19 12:31:07',1),('256b00da-1581-c02c-92ac-55d35699c23f','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('2580e6b3-82bb-c322-8c05-55d355a57668','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('2723187d-1258-5cc8-9118-55d3484457f6','2dfb747f-189e-d452-5d76-55d34785e563','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('277613a3-14e0-9e7b-02dc-55d3555dc791','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('288ad82a-0ab5-d2f8-e4d6-55d356416072','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('2a2671eb-0499-97ce-5c65-55d356671498','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('2ac41d8c-6480-6005-23dd-55d356d9f75f','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('2c83e300-ebf3-b995-8813-55d34b0150a9','d434b013-d7bf-9c11-4b05-55d34b9098c5','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('2f08d3a4-673c-e669-186c-55d35551e9a8','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('30105607-a5f1-b392-6f49-55c8bf680ef1','2d9045ee-f6a8-65aa-45fb-55c8bf684514','1a4189c1-09ce-0812-5176-55c8bef6acb7','1','none','2015-08-19 12:31:07',1),('328b9c43-586c-89e5-9da0-55d3565cd387','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('33727429-cef7-bd15-fd83-55d355d2293c','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('368b0382-2e32-7f6c-295f-55d35250d339','ecdf98f7-47a6-05cc-5fb1-55d352b67ae7','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('38906487-0475-8dff-0f3f-55d355f1b9dc','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('38ef89d1-15b6-8c4b-7177-55d356563fd0','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('3b149c5f-4833-a6a0-734f-55d355a9b71b','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('3cfa68cb-6b38-5317-317b-55d355bebf1a','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('3e0b9f4c-8d2e-a7bf-4040-55d35616268a','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('406af7c1-e208-c0ae-f96c-55d35503540d','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('406c2e4a-acee-b469-ec20-55d355ea6b1d','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('44f69715-5f33-84f0-1eb2-55d355679b90','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('4a19fe79-68a8-7f2d-2afe-55d355ee151e','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('4cf96ea4-794f-e71b-82a6-55d3558d43b3','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('4d45b0a2-55ca-229d-12f0-55d3550243e7','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('50bcc11e-1c92-d060-a4f2-55d355443ccf','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('530f77e9-5621-17d8-935a-55d355e357ff','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('53850d1c-9df9-284d-31f1-55d34d5fa58b','70e087f3-b6ba-1d19-5c0d-55d34de42232','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('56600f24-33f5-0890-6a90-55d355ee9b40','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('56653e4a-21d2-57b5-54e8-55d3562269ab','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('585aa757-6f9d-ef90-d12c-55d355fe48ca','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('596ba558-f72d-f326-aabe-55d3551697bb','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('5c83fcb6-88d4-b0ab-bb0a-55d36cdc45eb','33b60a00-88d9-aa66-1ddc-55d36cbfc213','2effa666-45bb-11e5-95f8-a5ac70298007','1','none','2015-08-19 12:31:07',1),('72db902d-79e5-1b8d-6e49-55d355dbb918','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('73ff9b62-2274-afbc-1303-55d355348ba1','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('765db62b-5cea-1ecd-d5f1-55d355c75db0','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('7766bbe7-6aa3-c547-23ee-55d3555c47d0','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('78c8af5e-f53b-4f8b-9886-55d356a0f9aa','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('7d1e7e3e-da71-eaa8-9e98-55d35652126c','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('7d58666f-6bc7-2d9d-5ab5-55d35508b411','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('7d78e17c-03d8-c4db-6354-55d355bed126','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('80da6946-fdb0-6ecf-f34a-55d355fa77a8','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('83097739-4d85-1a6a-f368-55d3559579dd','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('836d7f4b-d6bc-7519-55a8-55d34c2422e6','2c5c05d1-bed4-eb42-26e9-55d34c1f5e22','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('83ff7545-752d-0d08-0e64-55d35608fe8d','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('852bac7b-3fae-898b-9201-55d35610a7bf','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('85e2aaf8-9433-9f78-60a0-55d3561f0a5d','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('864195c5-914c-530e-4636-55d356f6b7f6','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('86b226e1-14ef-015e-56ca-55d3551733f9','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('873decf4-2d27-1108-6709-55d356cf22a1','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('87b6bfd5-50b8-d32c-ba71-55d3564d6a41','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('8ad977a3-aed5-da3a-9efe-55d32c8862ac','10ff2e8f-da0e-e8ea-bbee-55d32c02093b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('8f4b5f06-48b2-13a8-94ea-55d355a8ad5c','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('97d71152-d06d-a7ec-d176-55d355d7d701','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('9a1b621f-665f-9844-f946-55d355fec0e9','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('9a52a5a4-9579-5124-3bbc-55d355ca5a1b','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('a126747b-f3a9-8da2-df61-55d3557ba82c','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('a1ee8cb5-884f-1a88-4a2f-55d355fac41f','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('a352a70a-79e3-5df9-4c4d-55d355be2415','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('a49b2fa1-baff-aac7-b2b0-55d3550ce187','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('a60802c9-4093-972d-82f1-55d355d5850e','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('a839424e-aff2-5697-508a-55d356a7f675','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('aa3b7ff6-2a88-aea8-2043-55d356679528','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('ae206b4a-e346-ac1c-fb0e-55d3552ee674','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('b38d7f8f-f2a3-7e7b-d03e-55d35612e4f8','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('b5712808-1eb9-b11f-fe64-55d356022c2e','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('b8422cfc-8550-01fe-f723-55d35577660f','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('bec501d1-1725-f7e9-9075-55d36bdb6d76','14496d16-f16a-164d-fbf7-55d36b8acc56','2effa666-45bb-11e5-95f8-a5ac70298007','1','none','2015-08-19 12:31:07',1),('bf0d02f7-54f8-0dcc-f9e9-55d355dec571','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('bfa2e003-1cb1-71e6-8854-55d356ec9321','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('c8cecb58-4775-f2bd-df6c-55d35529d821','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('ca6b019b-bf01-fcd0-75ba-55d355b8bc04','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('d21b606a-a67b-225b-a98c-55d3555369b2','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('deb76ee3-c1fe-2f45-aa41-55d355317bd1','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('e3ce3a08-c776-5b3f-7b73-55d355f5ce1b','652f0274-ce58-5f66-a7d4-55d3536b09bf','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('e50f09bc-7a01-93fb-437e-55d356b0be83','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('e885881c-2f94-46ea-dab7-55d355fde784','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('ed09535c-8dec-6dd6-6203-55d3560b9146','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1),('ee85713b-bf58-d875-87d3-55d355c56ce6','3a738693-bdb3-4e19-b7e5-55d35587c15b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','1','none','2015-08-19 12:31:07',1);
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_cstm`
--

DROP TABLE IF EXISTS `calls_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_cstm` (
  `id_c` char(36) NOT NULL,
  `asterisk_caller_id_c` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_cstm`
--

LOCK TABLES `calls_cstm` WRITE;
/*!40000 ALTER TABLE `calls_cstm` DISABLE KEYS */;
INSERT INTO `calls_cstm` VALUES ('10ff2e8f-da0e-e8ea-bbee-55d32c02093b',NULL),('115f6222-92d9-ccda-0c42-55d36144f21a',NULL),('14496d16-f16a-164d-fbf7-55d36b8acc56','0079266908568'),('2c5c05d1-bed4-eb42-26e9-55d34c1f5e22',NULL),('2dfb747f-189e-d452-5d76-55d34785e563',NULL),('2e581d6a-17c5-4dc9-a2fa-55d35671aa5b',NULL),('33b60a00-88d9-aa66-1ddc-55d36cbfc213','0079266908568'),('34807b3e-6c22-2d90-0ac6-55d358ada94e',NULL),('3a738693-bdb3-4e19-b7e5-55d35587c15b',NULL),('3c548c69-4680-7bc3-ccff-55d349b17644',NULL),('4dd58d82-a1a8-8c70-3ea7-55d356301575',NULL),('652f0274-ce58-5f66-a7d4-55d3536b09bf',NULL),('70e087f3-b6ba-1d19-5c0d-55d34de42232',NULL),('8f883146-a49e-3afe-bb9c-55d32b08154a',NULL),('9f071198-85dc-19c1-0a35-55d355306a50',NULL),('a02fd29b-bea0-0ac1-f353-55d3587ed6b2',NULL),('b902a111-b160-9e61-908b-55d36c5ea08d','0079266908568'),('c217f45d-89fd-0f67-9bc1-55d359c7ba31',NULL),('c70498d6-a2f0-1bfc-81fa-55d353368e7c',NULL),('d434b013-d7bf-9c11-4b05-55d34b9098c5',NULL),('dbe33cc0-ab5b-8377-11ca-55d356b6f3bd',NULL),('e6a4e84d-2ee3-d7b4-c76d-55d358ef7516',NULL),('ecdf98f7-47a6-05cc-5fb1-55d352b67ae7',NULL);
/*!40000 ALTER TABLE `calls_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_leads`
--

LOCK TABLES `calls_leads` WRITE;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_users`
--

LOCK TABLES `calls_users` WRITE;
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
INSERT INTO `calls_users` VALUES ('11a0d1cc-6e2c-c987-e659-55d32c96b68a','10ff2e8f-da0e-e8ea-bbee-55d32c02093b','1','1','none','2015-08-18 13:02:46',0),('1212bd9e-c1d9-c89b-b192-55d36104be2e','115f6222-92d9-ccda-0c42-55d36144f21a','1','1','none','2015-08-18 16:48:59',0),('14eee818-d309-b87a-b254-55d36ba00317','14496d16-f16a-164d-fbf7-55d36b8acc56','1','1','none','2015-08-18 17:31:44',0),('2ec3738a-8b43-b33e-179e-55d3472a0b33','2dfb747f-189e-d452-5d76-55d34785e563','1','1','none','2015-08-18 15:00:02',0),('2efddb0f-5f99-c9b7-8625-55d356c31a56','2e581d6a-17c5-4dc9-a2fa-55d35671aa5b','1','1','none','2015-08-18 16:02:00',0),('32214eba-5861-6283-c061-55c8bf2466b2','2d9045ee-f6a8-65aa-45fb-55c8bf684514','1','1','accept','2015-08-10 15:13:09',0),('350ab4d8-1ef4-4a01-85f4-55d358a19dad','34807b3e-6c22-2d90-0ac6-55d358ada94e','1','1','none','2015-08-18 16:10:34',0),('35fe0ffa-0d1e-6245-3dfd-55d34c1ee0ae','2c5c05d1-bed4-eb42-26e9-55d34c1f5e22','1','1','none','2015-08-18 15:16:22',0),('3b1d2b67-b825-7f42-0a1e-55d35598c5d6','3a738693-bdb3-4e19-b7e5-55d35587c15b','1','1','none','2015-08-18 15:56:52',0),('3cdb044f-2ac7-f626-5642-55d36c33ab51','33b60a00-88d9-aa66-1ddc-55d36cbfc213','1','1','none','2015-08-18 17:36:14',0),('3cfab624-75f1-6197-582b-55d349ef0cfb','3c548c69-4680-7bc3-ccff-55d349b17644','1','1','none','2015-08-18 15:04:57',0),('4e794cab-9d4f-b03e-1a5e-55d3562d970b','4dd58d82-a1a8-8c70-3ea7-55d356301575','1','1','none','2015-08-18 15:58:00',0),('65c0d77c-6d17-46b2-ee05-55d3533376f3','652f0274-ce58-5f66-a7d4-55d3536b09bf','1','1','none','2015-08-18 15:54:44',0),('71adc011-c815-59ef-3cba-55d34dfacb8a','70e087f3-b6ba-1d19-5c0d-55d34de42232','1','1','none','2015-08-18 15:23:47',0),('907bbf40-f103-bccb-eccc-55d32b4d94b0','8f883146-a49e-3afe-bb9c-55d32b08154a','1','1','none','2015-08-18 12:58:32',0),('9fb2164d-8740-9c5c-42b1-55d35573e0df','9f071198-85dc-19c1-0a35-55d355306a50','1','1','none','2015-08-18 15:57:39',0),('a0d1176d-f1f8-0957-36c6-55d358dc8f6c','a02fd29b-bea0-0ac1-f353-55d3587ed6b2','1','1','none','2015-08-18 16:06:41',0),('b9a025d8-0338-d5bd-37ea-55d36c8db8ee','b902a111-b160-9e61-908b-55d36c5ea08d','1','1','none','2015-08-18 17:34:34',0),('c2c5e28f-eb12-96ab-46e6-55d3596a1814','c217f45d-89fd-0f67-9bc1-55d359c7ba31','1','1','none','2015-08-18 16:12:44',0),('c79c4271-5e75-4315-d961-55d353d9370e','c70498d6-a2f0-1bfc-81fa-55d353368e7c','1','1','none','2015-08-18 15:48:07',0),('d4e53331-8c9f-608c-f62e-55d34b5e390f','d434b013-d7bf-9c11-4b05-55d34b9098c5','1','1','none','2015-08-18 15:15:00',0),('dcc3fa3e-009b-75ee-8da2-55d3560804fe','dbe33cc0-ab5b-8377-11ca-55d356b6f3bd','1','1','none','2015-08-18 15:58:20',0),('e74b5642-d08d-1d50-6dc9-55d3588e6727','e6a4e84d-2ee3-d7b4-c76d-55d358ef7516','1','1','none','2015-08-18 16:09:00',0),('ed905748-2ea3-e9e2-e3f6-55d3522e0855','ecdf98f7-47a6-05cc-5fb1-55d352b67ae7','1','1','none','2015-08-18 15:45:30',0);
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_trkrs`
--

LOCK TABLES `campaign_trkrs` WRITE;
/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_audit`
--

LOCK TABLES `campaigns_audit` WRITE;
/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_audit`
--

LOCK TABLES `cases_audit` WRITE;
/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bugs`
--

LOCK TABLES `cases_bugs` WRITE;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','do_not_reply@example.com'),('notify','fromname','SugarCRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.20'),('MySettings','tab','YTo4OntzOjQ6IkhvbWUiO3M6NDoiSG9tZSI7czo4OiJDb250YWN0cyI7czo4OiJDb250YWN0cyI7czo4OiJDYWxlbmRhciI7czo4OiJDYWxlbmRhciI7czo5OiJEb2N1bWVudHMiO3M6OToiRG9jdW1lbnRzIjtzOjY6IkVtYWlscyI7czo2OiJFbWFpbHMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6ODoiZm94X1Rhc2siO3M6ODoiZm94X1Rhc2siO30='),('portal','on','0'),('tracker','Tracker','1'),('system','skypeout_on','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Opportunities','1'),('Update','CheckUpdates','automatic'),('system','name','SugarCRM'),('license','msg_admin',''),('license','msg_all',''),('license','last_validation','success'),('license','latest_versions','YToxOntpOjA7YToyOntzOjc6InZlcnNpb24iO3M6NjoiNi41LjIwIjtzOjExOiJkZXNjcmlwdGlvbiI7czoxNjM6IlRoZSBsYXRlc3QgdmVyc2lvbiBvZiBTdWdhckNSTSBpcyA2LjUuMjAuICBQbGVhc2UgdmlzaXQgPGEgaHJlZj0iaHR0cDovL3N1cHBvcnQuc3VnYXJjcm0uY29tIiB0YXJnZXQ9Il9uZXciPnN1cHBvcnQuc3VnYXJjcm0uY29tPC9hPiB0byBhY3F1aXJlIHRoZSBsYXRlc3QgdmVyc2lvbi4iO319'),('Update','last_check_date','1439988490'),('system','adminwizard','1'),('MySettings','disable_useredit','no'),('MySettings','hide_subpanels','YToxMDp7czo1OiJsZWFkcyI7czo1OiJsZWFkcyI7czo5OiJkb2N1bWVudHMiO3M6OToiZG9jdW1lbnRzIjtzOjEzOiJvcHBvcnR1bml0aWVzIjtzOjEzOiJvcHBvcnR1bml0aWVzIjtzOjU6ImNhc2VzIjtzOjU6ImNhc2VzIjtzOjQ6ImJ1Z3MiO3M6NDoiYnVncyI7czo4OiJhY2NvdW50cyI7czo4OiJhY2NvdW50cyI7czo3OiJwcm9qZWN0IjtzOjc6InByb2plY3QiO3M6ODoibWVldGluZ3MiO3M6ODoibWVldGluZ3MiO3M6OToicHJvc3BlY3RzIjtzOjk6InByb3NwZWN0cyI7czoxMzoicHJvc3BlY3RsaXN0cyI7czoxMzoicHJvc3BlY3RsaXN0cyI7fQ==');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES ('1a4189c1-09ce-0812-5176-55c8bef6acb7','2015-08-10 15:07:48','2015-08-19 12:31:07','1','1',NULL,1,'1',NULL,'fse','fsefse',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),('2effa666-45bb-11e5-95f8-a5ac70298007','2015-08-18 18:09:55','2015-08-19 12:31:07','1',NULL,NULL,1,NULL,NULL,'Jon','Doe',NULL,NULL,0,NULL,'+79266908568',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('5c74f27c-1264-810d-0fd2-55d47784b317','2015-08-19 12:34:10','2015-08-19 12:34:10','1','1','',0,'','','Борис','Бурда',NULL,NULL,0,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','2015-08-14 10:04:02','2015-08-19 12:31:07','1','1',NULL,1,'',NULL,'czc','scszcsz',NULL,NULL,0,NULL,'+79266908568',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),('7534036e-2e2c-6c89-36a5-55d4783704a5','2015-08-19 12:37:20','2015-08-19 12:37:20','1','1','',0,'','','Евгений','Круг',NULL,NULL,0,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('a4a62d8a-83ea-7de7-2eaa-55c8bd14f16c','2015-08-10 15:05:45','2015-08-19 12:31:07','1','1',NULL,1,'1',NULL,'ауыаыу','маыауы',NULL,NULL,0,NULL,'+79266908568',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),('eb5bf026-13d9-6822-f87c-55d47799b1bb','2015-08-19 12:32:25','2015-08-19 12:38:05','1','1',NULL,0,'',NULL,'Александр','Ерошкин',NULL,NULL,0,NULL,'+79266908568',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_audit`
--

LOCK TABLES `contacts_audit` WRITE;
/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
INSERT INTO `contacts_audit` VALUES ('4198dba0-a2bc-3f0a-ba0f-55cdc2ba5726','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','2015-08-14 10:29:04','1','assigned_user_id','relate','9d944173-24f7-56ac-6190-55cdc0da24ce','',NULL,NULL),('5155bd22-ee59-17d6-faac-55cdc47609f7','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','2015-08-14 10:36:48','1','assigned_user_id','relate','9d944173-24f7-56ac-6190-55cdc0da24ce','',NULL,NULL),('52bc87ec-f8c0-14cd-23ff-55cdc47659b8','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','2015-08-14 10:37:19','1','assigned_user_id','relate','','1',NULL,NULL),('679755e8-5403-0eb3-c7ef-55cdc158cffb','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','2015-08-14 10:21:49','1','assigned_user_id','relate','1','9d944173-24f7-56ac-6190-55cdc0da24ce',NULL,NULL),('6bfc4441-178d-0039-1d32-55cdc7ba10c3','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','2015-08-14 10:49:35','1','assigned_user_id','relate','1','',NULL,NULL),('a3472514-ea33-22cf-5724-55d47891e53b','eb5bf026-13d9-6822-f87c-55d47799b1bb','2015-08-19 12:35:38','1','assigned_user_id','relate','1','',NULL,NULL),('b1a4bbee-a79b-2f37-ba8e-55cdc480583b','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','2015-08-14 10:35:42','1','assigned_user_id','relate','','9d944173-24f7-56ac-6190-55cdc0da24ce',NULL,NULL),('f9810e4d-8a09-b988-7aa3-55cdc44cc216','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','2015-08-14 10:36:24','1','assigned_user_id','relate','9d944173-24f7-56ac-6190-55cdc0da24ce',NULL,NULL,NULL);
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_bugs`
--

LOCK TABLES `contacts_bugs` WRITE;
/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cases`
--

LOCK TABLES `contacts_cases` WRITE;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `timezone_c` varchar(255) DEFAULT NULL,
  `grade_c` varchar(100) DEFAULT '0',
  `registered_at_c` datetime DEFAULT NULL,
  `status_c` varchar(100) DEFAULT '0',
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cstm`
--

LOCK TABLES `contacts_cstm` WRITE;
/*!40000 ALTER TABLE `contacts_cstm` DISABLE KEYS */;
INSERT INTO `contacts_cstm` VALUES ('1a4189c1-09ce-0812-5176-55c8bef6acb7','','0',NULL,'1'),('5c74f27c-1264-810d-0fd2-55d47784b317','-3','9',NULL,'0'),('6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','','0',NULL,'1'),('7534036e-2e2c-6c89-36a5-55d4783704a5','','7',NULL,'0'),('a4a62d8a-83ea-7de7-2eaa-55c8bd14f16c','','0',NULL,'0'),('eb5bf026-13d9-6822-f87c-55d47799b1bb','+3','5',NULL,'0');
/*!40000 ALTER TABLE `contacts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_users`
--

LOCK TABLES `contacts_users` WRITE;
/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_remove_documents`
--

LOCK TABLES `cron_remove_documents` WRITE;
/*!40000 ALTER TABLE `cron_remove_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_remove_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_accounts`
--

LOCK TABLES `documents_accounts` WRITE;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_bugs`
--

LOCK TABLES `documents_bugs` WRITE;
/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_cases`
--

LOCK TABLES `documents_cases` WRITE;
/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_contacts`
--

LOCK TABLES `documents_contacts` WRITE;
/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_opportunities`
--

LOCK TABLES `documents_opportunities` WRITE;
/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eapm`
--

LOCK TABLES `eapm` WRITE;
/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES ('5ff2cfae-ea77-fedb-4f3e-55d4773db4fe','6005e9fa-a3d4-15c6-c638-55d4775c32b1','5c74f27c-1264-810d-0fd2-55d47784b317','Contacts',1,0,'2015-08-19 12:34:10','2015-08-19 12:34:10',0),('69512bd2-f1d3-c337-b4a1-55d478d7c443','6972b0a4-b7e7-4ef7-0458-55d4785aa8dd','9d944173-24f7-56ac-6190-55cdc0da24ce','Users',1,0,'2015-08-19 12:39:20','2015-08-19 12:39:20',0),('9ed971a3-16e4-9433-9557-55cdc0d26acb','9f1450d0-3afc-9bbe-83aa-55cdc00e2d9a','9d944173-24f7-56ac-6190-55cdc0da24ce','Users',1,0,'2015-08-14 10:20:24','2015-08-14 10:20:24',1),('a2d10fbe-f458-6b45-0ad3-55d47809151d','a4020b20-245f-f4c6-631b-55d4782db892','7534036e-2e2c-6c89-36a5-55d4783704a5','Contacts',1,0,'2015-08-19 12:37:20','2015-08-19 12:37:20',0),('e96fa3ea-44ea-e2fd-b87e-55c8b31c3019','e9895741-341a-0ca1-68eb-55c8b3f39ecb','1','Users',1,0,'2015-08-10 14:23:29','2015-08-10 14:23:29',0),('f2d32908-b18d-f907-bcbe-55d477b9c907','f2ef6cb8-66e0-b6da-902d-55d4779e083f','eb5bf026-13d9-6822-f87c-55d47799b1bb','Contacts',1,0,'2015-08-19 12:32:25','2015-08-19 12:32:25',0);
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES ('6005e9fa-a3d4-15c6-c638-55d4775c32b1','burda@foxford.ru','BURDA@FOXFORD.RU',0,0,'2015-08-19 12:34:10','2015-08-19 12:34:10',0),('6972b0a4-b7e7-4ef7-0458-55d4785aa8dd','alexander.eroshkin@gmail.com','ALEXANDER.EROSHKIN@GMAIL.COM',0,0,'2015-08-19 12:39:20','2015-08-19 12:39:20',0),('9f1450d0-3afc-9bbe-83aa-55cdc00e2d9a','fefse@fesfse.ru','FEFSE@FESFSE.RU',0,0,'2015-08-14 10:20:24','2015-08-14 10:20:24',0),('a4020b20-245f-f4c6-631b-55d4782db892','krug@lalala.ru','KRUG@LALALA.RU',0,0,'2015-08-19 12:37:20','2015-08-19 12:37:20',0),('e9895741-341a-0ca1-68eb-55c8b3f39ecb','gjrfytne@gmail.com','GJRFYTNE@GMAIL.COM',0,0,'2015-08-10 14:23:29','2015-08-10 14:23:29',0),('f2ef6cb8-66e0-b6da-902d-55d4779e083f','eroshkin@gmail.com','EROSHKIN@GMAIL.COM',0,0,'2015-08-19 12:32:25','2015-08-19 12:32:25',0);
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_cache`
--

LOCK TABLES `email_cache` WRITE;
/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing`
--

LOCK TABLES `email_marketing` WRITE;
/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

LOCK TABLES `email_marketing_prospect_lists` WRITE;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES ('6d8ddcaa-f54c-12bc-2c24-55c8b37ee27f','2015-08-10 14:20:19','2015-08-10 14:20:19','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('6e529504-162f-3396-14ab-55c8b331850a','2015-08-10 14:20:19','2015-08-10 14:20:19','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL);
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailman`
--

LOCK TABLES `emailman` WRITE;
/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_beans`
--

LOCK TABLES `emails_beans` WRITE;
/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_email_addr_rel`
--

LOCK TABLES `emails_email_addr_rel` WRITE;
/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_text`
--

LOCK TABLES `emails_text` WRITE;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_meta_data`
--

LOCK TABLES `fields_meta_data` WRITE;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
INSERT INTO `fields_meta_data` VALUES ('Callsasterisk_caller_id_c','asterisk_caller_id_c','LBL_ASTERISK_CALLER_ID','','trimmed callerId','Calls','varchar',45,0,NULL,'2015-08-18 17:15:48',0,0,0,0,0,'true',NULL,NULL,NULL,''),('Contactsgrade_c','grade_c','LBL_GRADE','','','Contacts','enum',100,0,'0','2015-08-11 11:37:06',0,0,0,0,1,'true','grade_list','','',''),('Contactsregistered_at_c','registered_at_c','LBL_REGISTERED_AT','','','Contacts','datetimecombo',NULL,0,'','2015-08-11 11:53:41',0,0,0,0,1,'true','','','',''),('Contactsstatus_c','status_c','LBL_STATUS','','','Contacts','enum',100,0,'0','2015-08-14 10:45:34',0,0,0,0,1,'true','statuses_list','','',''),('Contactstimezone_c','timezone_c','LBL_TIMEZONE','','','Contacts','varchar',255,0,'','2015-08-11 11:32:36',0,0,0,0,1,'true','','','',''),('fox_Coursefoxford_course_id_c','foxford_course_id_c','LBL_FOXFORD_COURSE_ID','','','fox_Course','int',255,0,'','2015-08-16 12:02:52',0,0,0,0,1,'true','','','',''),('fox_UserTaskexperimental_c','experimental_c','LBL_EXPERIMENTAL','','','fox_UserTask','bool',255,0,'0','2015-08-14 11:24:48',0,0,0,0,1,'true','','','',''),('Usersasterisk_ext_c','asterisk_ext_c','LBL_ASTERISK_EXT','','','Users','varchar',45,0,NULL,'2015-08-18 17:15:48',0,0,0,0,1,'true',NULL,NULL,NULL,''),('Usersasterisk_inbound_c','asterisk_inbound_c','LBL_ASTERISK_INBOUND','','','Users','bool',45,0,'0','2015-08-18 17:15:48',0,0,0,0,1,'true',NULL,NULL,NULL,''),('Usersasterisk_outbound_c','asterisk_outbound_c','LBL_ASTERISK_OUTBOUND','','','Users','bool',45,0,'0','2015-08-18 17:15:48',0,0,0,0,1,'true',NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_rel`
--

LOCK TABLES `folders_rel` WRITE;
/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_subscriptions`
--

LOCK TABLES `folders_subscriptions` WRITE;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fox_course`
--

DROP TABLE IF EXISTS `fox_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fox_course` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fox_course`
--

LOCK TABLES `fox_course` WRITE;
/*!40000 ALTER TABLE `fox_course` DISABLE KEYS */;
INSERT INTO `fox_course` VALUES ('1ad8ab8b-f126-4d62-dfcd-55ca016dc38b','ddesfesfes','2015-08-11 14:04:54','2015-08-11 14:04:54','1','1','',0,'1',NULL);
/*!40000 ALTER TABLE `fox_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fox_course_audit`
--

DROP TABLE IF EXISTS `fox_course_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fox_course_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fox_course_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fox_course_audit`
--

LOCK TABLES `fox_course_audit` WRITE;
/*!40000 ALTER TABLE `fox_course_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fox_course_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fox_course_contacts_1_c`
--

DROP TABLE IF EXISTS `fox_course_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fox_course_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fox_course_contacts_1fox_course_ida` varchar(36) DEFAULT NULL,
  `fox_course_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fox_course_contacts_1_alt` (`fox_course_contacts_1fox_course_ida`,`fox_course_contacts_1contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fox_course_contacts_1_c`
--

LOCK TABLES `fox_course_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `fox_course_contacts_1_c` DISABLE KEYS */;
INSERT INTO `fox_course_contacts_1_c` VALUES ('1c3ea18c-e424-8bd6-8b54-55ca018376b9','2015-08-19 12:31:07',1,'1ad8ab8b-f126-4d62-dfcd-55ca016dc38b','1a4189c1-09ce-0812-5176-55c8bef6acb7');
/*!40000 ALTER TABLE `fox_course_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fox_course_contacts_c`
--

DROP TABLE IF EXISTS `fox_course_contacts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fox_course_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fox_course_contactsfox_course_ida` varchar(36) DEFAULT NULL,
  `fox_course_contactscontacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fox_course_contacts_alt` (`fox_course_contactsfox_course_ida`,`fox_course_contactscontacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fox_course_contacts_c`
--

LOCK TABLES `fox_course_contacts_c` WRITE;
/*!40000 ALTER TABLE `fox_course_contacts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fox_course_contacts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fox_course_cstm`
--

DROP TABLE IF EXISTS `fox_course_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fox_course_cstm` (
  `id_c` char(36) NOT NULL,
  `foxford_course_id_c` int(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fox_course_cstm`
--

LOCK TABLES `fox_course_cstm` WRITE;
/*!40000 ALTER TABLE `fox_course_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `fox_course_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fox_task`
--

DROP TABLE IF EXISTS `fox_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fox_task` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `priority` int(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `sql_query` text,
  `run_experiment` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fox_task`
--

LOCK TABLES `fox_task` WRITE;
/*!40000 ALTER TABLE `fox_task` DISABLE KEYS */;
INSERT INTO `fox_task` VALUES ('195f4d29-ef68-cf10-2cbd-55ccacb5d423','Test_task1','2015-08-13 14:40:50','2015-08-19 12:54:09','1','1','fesfes',1,'1','2015-08-12 07:00:00','2015-08-27 19:00:00',5,1,'SELECT id FROM `contacts`',1);
/*!40000 ALTER TABLE `fox_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fox_task_audit`
--

DROP TABLE IF EXISTS `fox_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fox_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fox_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fox_task_audit`
--

LOCK TABLES `fox_task_audit` WRITE;
/*!40000 ALTER TABLE `fox_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fox_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fox_usertask`
--

DROP TABLE IF EXISTS `fox_usertask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fox_usertask` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `experimental` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fox_usertask`
--

LOCK TABLES `fox_usertask` WRITE;
/*!40000 ALTER TABLE `fox_usertask` DISABLE KEYS */;
INSERT INTO `fox_usertask` VALUES ('113a09ea-daa7-21b3-964d-55d090ff4f59','czc scszcsz / Test_task1','2015-08-16 13:30:09','2015-08-19 12:29:16','1','1',NULL,1,NULL,0),('191bc24a-218d-5114-0e46-55cdce5a55c6','Example Record','2015-08-14 11:19:55','2015-08-14 11:50:07','1','1',NULL,1,NULL,0),('290fa76f-254b-cf5c-d072-55cdd7948cf7','fse fsefse / Test_task1','2015-08-14 11:57:37','2015-08-14 11:58:24','1','1',NULL,1,NULL,0),('2b854bdb-8679-1662-3712-55cdd78e9a83','fse fsefse / Test_task1','2015-08-14 11:57:37','2015-08-14 11:58:24','1','1',NULL,1,NULL,0),('2e823872-7d62-a4fb-d3a1-55cdcfa463f5','czc scszcsz / Test_task1','2015-08-14 11:22:05','2015-08-14 11:50:07','1','1',NULL,1,NULL,0),('354d7900-89a0-f95e-3386-55ccce47c9bd','12','2015-08-13 17:07:20','2015-08-14 11:50:07','1','1',NULL,1,'1',0),('4ccb058a-afbf-58f3-0bfd-55cddc4b41a7','fse fsefse / Test_task1','2015-08-14 12:18:51','2015-08-16 13:26:13','1','1',NULL,1,NULL,0),('4f004a25-e58d-0e52-4a39-55cddc2f4a38','fse fsefse / Test_task1','2015-08-14 12:18:51','2015-08-16 13:26:13','1','1',NULL,1,NULL,0),('51d3acf7-e280-b54a-f2d2-55d0901d220b','fse fsefse / Test_task1','2015-08-16 13:29:31','2015-08-16 13:29:57','1','1',NULL,1,NULL,0),('555d5c42-b3c4-caa2-337e-55d090839d33',' / Test_task1','2015-08-16 13:29:31','2015-08-16 13:29:57','1','1',NULL,1,NULL,0),('59a2c9ed-4cf9-cac8-6f6c-55cddc6545c0','ауыаыу маыауы / Test_task1','2015-08-14 12:19:09','2015-08-16 13:26:13','1','1',NULL,1,NULL,0),('60ca7abc-63e4-b2bd-0b58-55cdd5288884','ауыаыу маыауы / Test_task1','2015-08-14 11:46:37','2015-08-14 11:50:07','1','1',NULL,1,NULL,0),('645d6b1b-d038-ee72-a20e-55cddb219495','fse fsefse / Test_task1','2015-08-14 12:12:04','2015-08-14 12:18:37','1','1',NULL,1,NULL,0),('6678c64c-456e-502e-af2d-55cddb3a2080','fse fsefse / Test_task1','2015-08-14 12:12:04','2015-08-14 12:18:37','1','1',NULL,1,NULL,0),('710e8eae-bf0a-bb53-ec5e-55d47be553b8','Александр Ерошкин / Test_task1','2015-08-19 12:52:02','2015-08-19 12:54:17','1','9d944173-24f7-56ac-6190-55cdc0da24ce',NULL,1,NULL,0),('7596b181-1a2d-8a98-ec18-55d47b7ad958','Борис Бурда / Test_task1','2015-08-19 12:52:02','2015-08-19 12:54:17','1','9d944173-24f7-56ac-6190-55cdc0da24ce',NULL,1,NULL,0),('7e55b7a6-338e-a897-a4cc-55cdd791ee5b','fse fsefse / Test_task1','2015-08-14 11:58:28','2015-08-14 11:59:43','1','1',NULL,1,NULL,0),('8054f4de-9f06-3410-3304-55cdd7a33e78','fse fsefse / Test_task1','2015-08-14 11:58:28','2015-08-14 11:59:43','1','1',NULL,1,NULL,0),('86100bed-5a21-a76d-35e7-55cddc89301f','ауыаыу маыауы / Test_task1','2015-08-14 12:18:10','2015-08-14 12:18:37','1','1',NULL,1,NULL,0),('94613234-8130-2122-d744-55cddb805894','fse fsefse / Test_task1','2015-08-14 12:13:35','2015-08-14 12:18:37','1','1',NULL,1,NULL,0),('96f1e091-5296-0a0d-6215-55cddbc220cb','fse fsefse / Test_task1','2015-08-14 12:13:35','2015-08-14 12:18:37','1','1',NULL,1,NULL,0),('ab64f093-2770-5dbf-b5ae-55d08f3f93f2','fse fsefse / Test_task1','2015-08-16 13:27:33','2015-08-16 13:29:18','1','1',NULL,1,NULL,0),('ae319948-0ab0-f86d-fb7d-55d08f1cf47e','fse fsefse / Test_task1','2015-08-16 13:27:33','2015-08-16 13:29:18','1','1',NULL,1,NULL,0),('bf8e8fcb-79ac-5e85-445e-55cdd6717bfc','fse fsefse / Test_task1','2015-08-14 11:53:45','2015-08-14 11:55:07','1','1',NULL,1,NULL,0),('c22713cd-3775-dfba-63d9-55cdd6229616','fse fsefse / Test_task1','2015-08-14 11:53:45','2015-08-14 11:55:07','1','1',NULL,1,NULL,0),('c970d877-868a-6615-beb3-55cdd7552665','fse fsefse / Test_task1','2015-08-14 11:55:18','2015-08-14 11:57:24','1','1',NULL,1,NULL,0),('cb3799f3-021b-8fca-a603-55cdd791b11e','fse fsefse / Test_task1','2015-08-14 11:55:18','2015-08-14 11:57:24','1','1',NULL,1,NULL,0),('cded554f-6eb3-ee35-0b87-55cdceee3f84','Example Record','2015-08-14 11:18:42','2015-08-14 11:50:07','1','1',NULL,1,NULL,0),('d4b10d1c-cb80-da9f-7566-55cdcd0c98b5','Example Record','2015-08-14 11:15:45','2015-08-14 11:50:07','1','1',NULL,1,NULL,0),('e2fb1200-46c8-9dd6-7d5d-55cdda40cf0e','fse fsefse / Test_task1','2015-08-14 12:10:54','2015-08-14 12:18:37','1','1',NULL,1,NULL,0),('e4105fc2-1a99-4389-a925-55cddbfc118d','fse fsefse / Test_task1','2015-08-14 12:14:24','2015-08-14 12:18:37','1','1',NULL,1,NULL,0),('e4de47c3-d391-6986-c732-55cdda420286','fse fsefse / Test_task1','2015-08-14 12:10:54','2015-08-14 12:18:37','1','1',NULL,1,NULL,0),('e6904cdf-1ba8-760b-9963-55cddbadb3b8','fse fsefse / Test_task1','2015-08-14 12:14:24','2015-08-14 12:18:37','1','1',NULL,1,NULL,0),('eb909537-e3a9-239b-0c98-55d47c50c84a','Евгений Круг / Test_task1','2015-08-19 12:52:29','2015-08-19 12:54:17','1','9d944173-24f7-56ac-6190-55cdc0da24ce',NULL,1,NULL,0),('f0a1d061-aa95-dc35-c53c-55d090637fed','fse fsefse / Test_task1','2015-08-16 13:30:09','2015-08-19 12:29:16','1','1',NULL,1,NULL,0),('f3626ecc-9c8c-11f9-0588-55cdd8d7bfe7','fse fsefse / Test_task1','2015-08-14 11:59:55','2015-08-14 12:10:41','1','1',NULL,1,NULL,0),('faf00bf1-1269-6f31-99ba-55cdd8eb76b6','fse fsefse / Test_task1','2015-08-14 11:59:55','2015-08-14 12:10:41','1','1',NULL,1,NULL,0);
/*!40000 ALTER TABLE `fox_usertask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fox_usertask_audit`
--

DROP TABLE IF EXISTS `fox_usertask_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fox_usertask_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fox_usertask_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fox_usertask_audit`
--

LOCK TABLES `fox_usertask_audit` WRITE;
/*!40000 ALTER TABLE `fox_usertask_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fox_usertask_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fox_usertask_contacts_c`
--

DROP TABLE IF EXISTS `fox_usertask_contacts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fox_usertask_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fox_usertask_contactscontacts_ida` varchar(36) DEFAULT NULL,
  `fox_usertask_contactsfox_usertask_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fox_usertask_contacts_ida1` (`fox_usertask_contactscontacts_ida`),
  KEY `fox_usertask_contacts_alt` (`fox_usertask_contactsfox_usertask_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fox_usertask_contacts_c`
--

LOCK TABLES `fox_usertask_contacts_c` WRITE;
/*!40000 ALTER TABLE `fox_usertask_contacts_c` DISABLE KEYS */;
INSERT INTO `fox_usertask_contacts_c` VALUES ('18b00835-d837-658c-050b-55cdd8c6b885','2015-08-14 12:10:41',1,'1a4189c1-09ce-0812-5176-55c8bef6acb7','f3626ecc-9c8c-11f9-0588-55cdd8d7bfe7'),('1a31586f-31f2-d7bb-2753-55cdcef3608d','2015-08-14 11:50:07',1,'6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','191bc24a-218d-5114-0e46-55cdce5a55c6'),('1b8f04a9-6aa7-04c6-c25e-55d0901a76d4','2015-08-19 12:29:16',1,'6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','113a09ea-daa7-21b3-964d-55d090ff4f59'),('238f0c1f-ccc3-4f7c-01c2-55cdd879824c','2015-08-14 12:10:41',1,'6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','faf00bf1-1269-6f31-99ba-55cdd8eb76b6'),('2a6297fd-37fb-46aa-6ffc-55cdd7d0bcbd','2015-08-14 11:58:24',1,'1a4189c1-09ce-0812-5176-55c8bef6acb7','290fa76f-254b-cf5c-d072-55cdd7948cf7'),('2d5a18eb-14b5-92d6-49d0-55cdd7a0399f','2015-08-14 11:58:24',1,'6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','2b854bdb-8679-1662-3712-55cdd78e9a83'),('2fd93770-1282-99b0-0936-55cdcf43bb29','2015-08-14 11:50:07',1,'6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','2e823872-7d62-a4fb-d3a1-55cdcfa463f5'),('39600484-8c7f-6ebc-b1dd-55ccce4cb4b5','2015-08-14 11:50:07',1,'1a4189c1-09ce-0812-5176-55c8bef6acb7','354d7900-89a0-f95e-3386-55ccce47c9bd'),('4e044923-16c3-821c-a418-55cddcf4db75','2015-08-16 13:26:13',1,'1a4189c1-09ce-0812-5176-55c8bef6acb7','4ccb058a-afbf-58f3-0bfd-55cddc4b41a7'),('505e7fb2-4c4f-ec7b-d0dc-55cddcb1229a','2015-08-16 13:26:13',1,'6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','4f004a25-e58d-0e52-4a39-55cddc2f4a38'),('52d8f81e-bc9d-5159-5601-55d090ea2776','2015-08-16 13:29:57',1,'1a4189c1-09ce-0812-5176-55c8bef6acb7','51d3acf7-e280-b54a-f2d2-55d0901d220b'),('55fa1776-ac36-78ea-20c1-55d0908633d2','2015-08-16 13:29:57',1,'6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','555d5c42-b3c4-caa2-337e-55d090839d33'),('5ae326cc-4621-8576-6369-55cddcefecbe','2015-08-16 13:26:13',1,'a4a62d8a-83ea-7de7-2eaa-55c8bd14f16c','59a2c9ed-4cf9-cac8-6f6c-55cddc6545c0'),('6211cf15-c33a-13f8-8957-55cdd5f20e16','2015-08-14 11:50:07',1,'a4a62d8a-83ea-7de7-2eaa-55c8bd14f16c','60ca7abc-63e4-b2bd-0b58-55cdd5288884'),('6585aea0-1371-b811-775e-55cddbe301cb','2015-08-14 12:18:37',1,'1a4189c1-09ce-0812-5176-55c8bef6acb7','645d6b1b-d038-ee72-a20e-55cddb219495'),('67ca682d-c77b-b17c-63c4-55cddbd1ec75','2015-08-14 12:18:37',1,'6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','6678c64c-456e-502e-af2d-55cddb3a2080'),('727e96f8-c8f8-8aa5-bb89-55d47b97a0ab','2015-08-19 12:54:17',1,'eb5bf026-13d9-6822-f87c-55d47799b1bb','710e8eae-bf0a-bb53-ec5e-55d47be553b8'),('76567871-40dc-05f9-7007-55d47bb53a01','2015-08-19 12:54:17',1,'5c74f27c-1264-810d-0fd2-55d47784b317','7596b181-1a2d-8a98-ec18-55d47b7ad958'),('7f728a2e-3a61-108b-1383-55cdd716bd92','2015-08-14 11:59:43',1,'1a4189c1-09ce-0812-5176-55c8bef6acb7','7e55b7a6-338e-a897-a4cc-55cdd791ee5b'),('82646696-5eca-317f-d39c-55cdd78f81b2','2015-08-14 11:59:43',1,'6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','8054f4de-9f06-3410-3304-55cdd7a33e78'),('87e0710e-f400-c632-6dd6-55cddcdf91f3','2015-08-14 12:18:37',1,'a4a62d8a-83ea-7de7-2eaa-55c8bd14f16c','86100bed-5a21-a76d-35e7-55cddc89301f'),('960b6b23-55bf-bb46-7b8b-55cddb182186','2015-08-14 12:18:37',1,'1a4189c1-09ce-0812-5176-55c8bef6acb7','94613234-8130-2122-d744-55cddb805894'),('9820d5f3-578d-31ff-d443-55cddbdac002','2015-08-14 12:18:37',1,'6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','96f1e091-5296-0a0d-6215-55cddbc220cb'),('ac565da0-d55b-2032-020f-55d08f1209c1','2015-08-16 13:29:18',1,'1a4189c1-09ce-0812-5176-55c8bef6acb7','ab64f093-2770-5dbf-b5ae-55d08f3f93f2'),('af64a84d-fac2-806f-6ebe-55d08f9b3f60','2015-08-16 13:29:18',1,'6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','ae319948-0ab0-f86d-fb7d-55d08f1cf47e'),('c117af4f-c0f0-5ef7-40b3-55cdd60b9f12','2015-08-14 11:55:07',1,'1a4189c1-09ce-0812-5176-55c8bef6acb7','bf8e8fcb-79ac-5e85-445e-55cdd6717bfc'),('c2b8ffe0-ae37-22e4-d95d-55cdd6bb56b0','2015-08-14 11:55:07',1,'1a4189c1-09ce-0812-5176-55c8bef6acb7','c22713cd-3775-dfba-63d9-55cdd6229616'),('ca55789c-13d0-b90e-32eb-55cdd7005600','2015-08-14 11:57:24',1,'1a4189c1-09ce-0812-5176-55c8bef6acb7','c970d877-868a-6615-beb3-55cdd7552665'),('cc7dce1d-2831-8590-b280-55cdd7c171ed','2015-08-14 11:57:24',1,'6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','cb3799f3-021b-8fca-a603-55cdd791b11e'),('e3eb00f1-a45b-d899-2890-55cdda8c23b6','2015-08-14 12:18:37',1,'1a4189c1-09ce-0812-5176-55c8bef6acb7','e2fb1200-46c8-9dd6-7d5d-55cdda40cf0e'),('e5ad9c5c-df70-86d4-6507-55cddb30f549','2015-08-14 12:18:37',1,'1a4189c1-09ce-0812-5176-55c8bef6acb7','e4105fc2-1a99-4389-a925-55cddbfc118d'),('e62c924a-8ac9-1e54-47a8-55cddae52afd','2015-08-14 12:18:37',1,'6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','e4de47c3-d391-6986-c732-55cdda420286'),('e7e29a20-df72-fdf3-d80e-55cddba86f66','2015-08-14 12:18:37',1,'6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','e6904cdf-1ba8-760b-9963-55cddbadb3b8'),('ece20536-b3c1-71ac-b3f5-55d47c064507','2015-08-19 12:54:17',1,'7534036e-2e2c-6c89-36a5-55d4783704a5','eb909537-e3a9-239b-0c98-55d47c50c84a'),('f23ab682-eacc-d20a-21e9-55d0903ab916','2015-08-19 12:29:16',1,'1a4189c1-09ce-0812-5176-55c8bef6acb7','f0a1d061-aa95-dc35-c53c-55d090637fed');
/*!40000 ALTER TABLE `fox_usertask_contacts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fox_usertask_cstm`
--

DROP TABLE IF EXISTS `fox_usertask_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fox_usertask_cstm` (
  `id_c` char(36) NOT NULL,
  `experimental_c` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fox_usertask_cstm`
--

LOCK TABLES `fox_usertask_cstm` WRITE;
/*!40000 ALTER TABLE `fox_usertask_cstm` DISABLE KEYS */;
INSERT INTO `fox_usertask_cstm` VALUES ('113a09ea-daa7-21b3-964d-55d090ff4f59',1),('290fa76f-254b-cf5c-d072-55cdd7948cf7',0),('2b854bdb-8679-1662-3712-55cdd78e9a83',0),('4ccb058a-afbf-58f3-0bfd-55cddc4b41a7',0),('4f004a25-e58d-0e52-4a39-55cddc2f4a38',1),('51d3acf7-e280-b54a-f2d2-55d0901d220b',0),('555d5c42-b3c4-caa2-337e-55d090839d33',1),('59a2c9ed-4cf9-cac8-6f6c-55cddc6545c0',0),('60ca7abc-63e4-b2bd-0b58-55cdd5288884',0),('645d6b1b-d038-ee72-a20e-55cddb219495',0),('6678c64c-456e-502e-af2d-55cddb3a2080',1),('710e8eae-bf0a-bb53-ec5e-55d47be553b8',0),('7596b181-1a2d-8a98-ec18-55d47b7ad958',1),('7e55b7a6-338e-a897-a4cc-55cdd791ee5b',0),('8054f4de-9f06-3410-3304-55cdd7a33e78',0),('86100bed-5a21-a76d-35e7-55cddc89301f',0),('94613234-8130-2122-d744-55cddb805894',0),('96f1e091-5296-0a0d-6215-55cddbc220cb',1),('ab64f093-2770-5dbf-b5ae-55d08f3f93f2',0),('ae319948-0ab0-f86d-fb7d-55d08f1cf47e',1),('bf8e8fcb-79ac-5e85-445e-55cdd6717bfc',0),('c22713cd-3775-dfba-63d9-55cdd6229616',0),('c970d877-868a-6615-beb3-55cdd7552665',0),('cb3799f3-021b-8fca-a603-55cdd791b11e',0),('e2fb1200-46c8-9dd6-7d5d-55cdda40cf0e',0),('e4105fc2-1a99-4389-a925-55cddbfc118d',0),('e4de47c3-d391-6986-c732-55cdda420286',1),('e6904cdf-1ba8-760b-9963-55cddbadb3b8',1),('eb909537-e3a9-239b-0c98-55d47c50c84a',0),('f0a1d061-aa95-dc35-c53c-55d090637fed',0),('f3626ecc-9c8c-11f9-0588-55cdd8d7bfe7',0),('faf00bf1-1269-6f31-99ba-55cdd8eb76b6',1);
/*!40000 ALTER TABLE `fox_usertask_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fox_usertask_fox_task_c`
--

DROP TABLE IF EXISTS `fox_usertask_fox_task_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fox_usertask_fox_task_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fox_usertask_fox_taskfox_task_ida` varchar(36) DEFAULT NULL,
  `fox_usertask_fox_taskfox_usertask_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fox_usertask_fox_task_ida1` (`fox_usertask_fox_taskfox_task_ida`),
  KEY `fox_usertask_fox_task_alt` (`fox_usertask_fox_taskfox_usertask_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fox_usertask_fox_task_c`
--

LOCK TABLES `fox_usertask_fox_task_c` WRITE;
/*!40000 ALTER TABLE `fox_usertask_fox_task_c` DISABLE KEYS */;
INSERT INTO `fox_usertask_fox_task_c` VALUES ('155fa6ff-1d9c-159e-bbd4-55ccd08b5382','2015-08-14 11:50:07',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','354d7900-89a0-f95e-3386-55ccce47c9bd'),('242b0a68-ac30-4ae1-5aa9-55d090416e58','2015-08-19 12:29:16',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','113a09ea-daa7-21b3-964d-55d090ff4f59'),('2b3f945c-b217-a566-9f0d-55cdd7c234b4','2015-08-14 11:58:24',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','290fa76f-254b-cf5c-d072-55cdd7948cf7'),('2b51035a-5dce-082f-0943-55cdd89cad25','2015-08-14 12:10:41',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','faf00bf1-1269-6f31-99ba-55cdd8eb76b6'),('2dab4bc1-6531-06f9-9453-55cdd7eaaf09','2015-08-14 11:58:24',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','2b854bdb-8679-1662-3712-55cdd78e9a83'),('3089eea1-b5da-7471-0060-55cdcfa6dafb','2015-08-14 11:50:07',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','2e823872-7d62-a4fb-d3a1-55cdcfa463f5'),('4ebdcb4d-a0ec-2c49-857b-55cddc159b17','2015-08-16 13:26:13',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','4ccb058a-afbf-58f3-0bfd-55cddc4b41a7'),('50c91a00-eec9-4ee1-1c4c-55cddc31a6aa','2015-08-16 13:26:13',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','4f004a25-e58d-0e52-4a39-55cddc2f4a38'),('538a9302-a7e2-5901-d4e5-55d0907c279e','2015-08-16 13:29:57',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','51d3acf7-e280-b54a-f2d2-55d0901d220b'),('56587eca-e920-8bcb-4486-55d090030c55','2015-08-16 13:29:57',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','555d5c42-b3c4-caa2-337e-55d090839d33'),('5b832633-0169-211d-d2e4-55cddc6b13a3','2015-08-16 13:26:13',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','59a2c9ed-4cf9-cac8-6f6c-55cddc6545c0'),('62b6fa3f-f1f8-b2e0-aa9c-55cdd5e01bb9','2015-08-14 11:50:07',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','60ca7abc-63e4-b2bd-0b58-55cdd5288884'),('6639c8f2-45c5-1441-4292-55cddb5b5ed1','2015-08-14 12:18:37',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','645d6b1b-d038-ee72-a20e-55cddb219495'),('68323f1c-b438-64d9-0cc6-55cddbb5487a','2015-08-14 12:18:37',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','6678c64c-456e-502e-af2d-55cddb3a2080'),('735ec9a9-dead-647b-b1bc-55d47b1ccebc','2015-08-19 12:54:09',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','710e8eae-bf0a-bb53-ec5e-55d47be553b8'),('76b580c6-e636-bb17-375c-55d47b3dcaf3','2015-08-19 12:54:09',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','7596b181-1a2d-8a98-ec18-55d47b7ad958'),('801629c2-29df-8140-0741-55cdd7ec9c9a','2015-08-14 11:59:43',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','7e55b7a6-338e-a897-a4cc-55cdd791ee5b'),('82c6b726-d256-4dd1-50ab-55cdd7e8e160','2015-08-14 11:59:43',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','8054f4de-9f06-3410-3304-55cdd7a33e78'),('88ae55eb-a72e-98ea-f819-55cddc0c2994','2015-08-14 12:18:37',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','86100bed-5a21-a76d-35e7-55cddc89301f'),('96b0b558-b8f1-510f-d37a-55cddba154a8','2015-08-14 12:18:37',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','94613234-8130-2122-d744-55cddb805894'),('988c0397-3800-fdc4-0e9d-55cddbce40fc','2015-08-14 12:18:37',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','96f1e091-5296-0a0d-6215-55cddbc220cb'),('acf21584-d7f3-8df2-bb8c-55d08fd09c08','2015-08-16 13:29:18',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','ab64f093-2770-5dbf-b5ae-55d08f3f93f2'),('afc80a8b-99f6-7556-eb31-55d08f036c69','2015-08-16 13:29:18',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','ae319948-0ab0-f86d-fb7d-55d08f1cf47e'),('b8c0041b-9ce7-e138-578b-55cdd81b9dd7','2015-08-14 12:10:41',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','f3626ecc-9c8c-11f9-0588-55cdd8d7bfe7'),('c1e32c48-9eb4-cdc7-b61e-55cdd6f57f9f','2015-08-14 11:55:07',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','bf8e8fcb-79ac-5e85-445e-55cdd6717bfc'),('c32e32b7-5682-8f16-6d4e-55cdd6d624e0','2015-08-14 11:55:07',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','c22713cd-3775-dfba-63d9-55cdd6229616'),('caf64cfa-15db-0d6b-610e-55cdd78db342','2015-08-14 11:57:24',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','c970d877-868a-6615-beb3-55cdd7552665'),('cce7e9dc-5316-f893-9dd6-55cdd7686b4b','2015-08-14 11:57:24',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','cb3799f3-021b-8fca-a603-55cdd791b11e'),('e49bbd9a-a675-d484-21ef-55cdda7a17d2','2015-08-14 12:18:37',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','e2fb1200-46c8-9dd6-7d5d-55cdda40cf0e'),('e6593cf6-7615-f460-727e-55cddbba3bb9','2015-08-14 12:18:37',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','e4105fc2-1a99-4389-a925-55cddbfc118d'),('e6986b74-3f24-337f-afbc-55cdda3335c8','2015-08-14 12:18:37',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','e4de47c3-d391-6986-c732-55cdda420286'),('e84ce636-fcec-6535-526c-55cddbdb68d6','2015-08-14 12:18:37',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','e6904cdf-1ba8-760b-9963-55cddbadb3b8'),('ed811309-91cf-4dcc-8d93-55d47c653bd6','2015-08-19 12:54:09',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','eb909537-e3a9-239b-0c98-55d47c50c84a'),('f303b73c-41b7-4130-826e-55d09068467a','2015-08-19 12:29:16',1,'195f4d29-ef68-cf10-2cbd-55ccacb5d423','f0a1d061-aa95-dc35-c53c-55d090637fed');
/*!40000 ALTER TABLE `fox_usertask_fox_task_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fox_usertask_users_c`
--

DROP TABLE IF EXISTS `fox_usertask_users_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fox_usertask_users_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fox_usertask_usersusers_ida` varchar(36) DEFAULT NULL,
  `fox_usertask_usersfox_usertask_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fox_usertask_users_ida1` (`fox_usertask_usersusers_ida`),
  KEY `fox_usertask_users_alt` (`fox_usertask_usersfox_usertask_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fox_usertask_users_c`
--

LOCK TABLES `fox_usertask_users_c` WRITE;
/*!40000 ALTER TABLE `fox_usertask_users_c` DISABLE KEYS */;
INSERT INTO `fox_usertask_users_c` VALUES ('5468276e-fe55-e963-ad47-55d0906ff7ce','2015-08-16 13:29:57',1,'1','51d3acf7-e280-b54a-f2d2-55d0901d220b'),('74816d61-5668-3d0a-4fc5-55d47bb09bca','2015-08-19 12:54:17',1,'9d944173-24f7-56ac-6190-55cdc0da24ce','710e8eae-bf0a-bb53-ec5e-55d47be553b8'),('adde6d1f-0aac-e258-6768-55d08f43b383','2015-08-16 13:29:18',1,'1','ab64f093-2770-5dbf-b5ae-55d08f3f93f2'),('ee947da0-8fd4-f610-d2a6-55d47ca52179','2015-08-19 12:54:17',1,'9d944173-24f7-56ac-6190-55cdc0da24ce','eb909537-e3a9-239b-0c98-55d47c50c84a'),('f41a51d0-beb1-0da3-1083-55d090be7386','2015-08-19 12:29:16',1,'1','f0a1d061-aa95-dc35-c53c-55d090637fed');
/*!40000 ALTER TABLE `fox_usertask_users_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_maps`
--

LOCK TABLES `import_maps` WRITE;
/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email`
--

LOCK TABLES `inbound_email` WRITE;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_autoreply`
--

LOCK TABLES `inbound_email_autoreply` WRITE;
/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_cache_ts`
--

LOCK TABLES `inbound_email_cache_ts` WRITE;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue`
--

LOCK TABLES `job_queue` WRITE;
/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_audit`
--

LOCK TABLES `leads_audit` WRITE;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_documents`
--

LOCK TABLES `linked_documents` WRITE;
/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_contacts`
--

LOCK TABLES `meetings_contacts` WRITE;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_leads`
--

LOCK TABLES `meetings_leads` WRITE;
/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_users`
--

LOCK TABLES `meetings_users` WRITE;
/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_consumer`
--

LOCK TABLES `oauth_consumer` WRITE;
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_nonce`
--

LOCK TABLES `oauth_nonce` WRITE;
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_tokens`
--

LOCK TABLES `oauth_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities`
--

LOCK TABLES `opportunities` WRITE;
/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_audit`
--

LOCK TABLES `opportunities_audit` WRITE;
/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_contacts`
--

LOCK TABLES `opportunities_contacts` WRITE;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `oe_user_id_idx` (`id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('6b4679f7-2b2e-ed55-5414-55d47818d2f2','system','system-override','9d944173-24f7-56ac-6190-55cdc0da24ce','SMTP','other','',25,'admin','cyNI/1XZsYg=',1,0),('b9d4256a-6761-b9e0-3e08-55c8b36d9f37','system','system','1','SMTP','other','',25,'','',1,0);
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task`
--

LOCK TABLES `project_task` WRITE;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task_audit`
--

LOCK TABLES `project_task_audit` WRITE;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_accounts`
--

LOCK TABLES `projects_accounts` WRITE;
/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_bugs`
--

LOCK TABLES `projects_bugs` WRITE;
/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_cases`
--

LOCK TABLES `projects_cases` WRITE;
/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_contacts`
--

LOCK TABLES `projects_contacts` WRITE;
/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_opportunities`
--

LOCK TABLES `projects_opportunities` WRITE;
/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_products`
--

LOCK TABLES `projects_products` WRITE;
/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_list_campaigns`
--

LOCK TABLES `prospect_list_campaigns` WRITE;
/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists`
--

LOCK TABLES `prospect_lists` WRITE;
/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists_prospects`
--

LOCK TABLES `prospect_lists_prospects` WRITE;
/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(128) DEFAULT NULL,
  `join_key_lhs` varchar(128) DEFAULT NULL,
  `join_key_rhs` varchar(128) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES ('1119d574-424e-d781-8531-55d46d36efa8','fox_task_modified_user','Users','users','id','fox_Task','fox_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('114b9030-e499-fac8-2766-55d46d3f3687','fox_task_created_by','Users','users','id','fox_Task','fox_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1173d779-609e-c0d2-d0da-55d46d9a54fd','fox_task_assigned_user','Users','users','id','fox_Task','fox_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('13bc4ae6-2ed5-4ca4-d357-55d46d28f6e6','fox_usertask_modified_user','Users','users','id','fox_UserTask','fox_usertask','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('13ec9c40-be04-85a9-d5dc-55d46d74d016','fox_usertask_created_by','Users','users','id','fox_UserTask','fox_usertask','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('141a318e-5d86-aee1-e4bd-55d46db14c0c','fox_usertask_assigned_user','Users','users','id','fox_UserTask','fox_usertask','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1a1e3d1d-e143-55b7-0c18-55d46d7f582a','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('1a502b97-2c79-7324-54fd-55d46df676aa','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('1a7e57e8-cd66-66f1-05fd-55d46dc30648','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('1ab221ee-c552-b0a0-2cc9-55d46d2b05b2','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('1ae26969-997f-6271-aaa5-55d46d698855','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('1b1325d0-4c62-b326-f445-55d46d2f2807','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('1b4335a8-5da4-91c4-9abd-55d46de88424','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('1b800194-b91c-0653-1be3-55d46d1495eb','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('1bb0dbf5-c9da-1cf9-3133-55d46df6c804','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('1bdb81e5-60d2-b8ab-2538-55d46d43b9dd','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('1c1e920c-c4fe-9742-699c-55d46db7efa3','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('1c4bffa7-0861-8edd-fbd7-55d46dd77f3c','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('1c96ce72-1af6-086b-a404-55d46db34743','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('1cc6d780-0193-51d7-e2b8-55d46d0d8694','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('1cf01fdc-2751-da85-26bd-55d46d08acd6','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('1d23ee13-a8bd-5a7a-3643-55d46daeeddc','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('1d502209-6728-d3cd-e726-55d46d644b07','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('1d88bef8-7801-453b-14b0-55d46de92d6d','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('1db856b5-3a0a-717f-7319-55d46d0adcf2','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('1de4b71a-c062-6f55-2f9f-55d46d70d0d8','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('1e0dbd50-652c-7358-22b4-55d46d5ef809','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('1e3b6c20-5709-1088-40ed-55d46d8353d6','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('1e6a61bf-c0bd-ed29-3735-55d46d13fb0d','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('1e962b73-a178-638b-97c9-55d46de0a1f2','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('1ec26995-2da1-7560-5af0-55d46d0e45fb','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('1ef1a103-0b40-3588-38ae-55d46dcfd27f','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('1f1cd34f-59ae-c1c9-797e-55d46d99262d','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('1f566c75-b43c-2614-3cda-55d46dd8e0cd','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('1f8b9a59-ce67-8cb3-79c2-55d46db85fe8','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('1fb8b15d-d62c-61e6-fb47-55d46d44d4a5','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('1fe22c7f-4d7d-f82f-4969-55d46d9af5bb','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('200ccdb9-cfc3-0130-d5a3-55d46daefc1c','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('20391148-54ad-a508-cc6a-55d46d41da17','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('2066e87c-5c72-3deb-f598-55d46d977408','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('209474a8-6c6a-508a-c769-55d46dea4050','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('20c2ab96-e945-6a6b-14fc-55d46d52adfe','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('20f39b48-7f21-c39b-d8e1-55d46d2318af','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('21361640-78e3-64a3-68dc-55d46db9f304','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('2162e66c-19c2-1fd9-89e1-55d46d2e0aaf','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('218fc2c2-8096-df71-a4cd-55d46d973801','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('21b7a956-b8fc-5705-76cd-55d46da7c731','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('21de8bf0-6704-38a5-7e58-55d46d145a25','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('22056d76-7738-aa1a-84e3-55d46d1ac797','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('2237245b-5c31-ce19-dcaa-55d46dfb5691','fox_course_contacts','fox_Course','fox_course','id','Contacts','contacts','id','fox_course_contacts_c','fox_course_contactsfox_course_ida','fox_course_contactscontacts_idb','many-to-many',NULL,NULL,0,0),('22608b25-591c-053b-b509-55d46ded599b','fox_course_contacts_1','fox_Course','fox_course','id','Contacts','contacts','id','fox_course_contacts_1_c','fox_course_contacts_1fox_course_ida','fox_course_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),('228d4b10-dd0a-f7e9-ceb5-55d46dccd89f','fox_usertask_contacts','Contacts','contacts','id','fox_UserTask','fox_usertask','id','fox_usertask_contacts_c','fox_usertask_contactscontacts_ida','fox_usertask_contactsfox_usertask_idb','many-to-many',NULL,NULL,0,0),('22bfa1c7-3ef6-95f6-f4e4-55d46dd7fad0','fox_usertask_fox_task','fox_Task','fox_task','id','fox_UserTask','fox_usertask','id','fox_usertask_fox_task_c','fox_usertask_fox_taskfox_task_ida','fox_usertask_fox_taskfox_usertask_idb','many-to-many',NULL,NULL,0,0),('22ef67e8-7f52-4428-f877-55d46deb3206','fox_usertask_users','Users','users','id','fox_UserTask','fox_usertask','id','fox_usertask_users_c','fox_usertask_usersusers_ida','fox_usertask_usersfox_usertask_idb','many-to-many',NULL,NULL,0,0),('26b001f5-8c9e-381d-f0d3-55d46dcc5aca','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c5706ae-4a7c-2bb3-d18a-55d46d32e205','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7fc608e5-334c-d913-cec3-55d46dceda68','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('829d0784-f833-6134-819c-55d46dff1f12','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('87678c39-16d8-228b-3a62-55d46d7b8f7d','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('87da0549-d266-a31d-150e-55d46d64905e','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8835e54e-596e-5c5e-8e1c-55d46defe3dc','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('88a1f86e-d67b-b458-52bb-55d46d37a9ce','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('88ed8238-0b49-b33c-3a8a-55d46d99d58e','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('892cceb5-8f72-24ca-be5b-55d46df62aaf','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('89791932-4a2e-7a37-f8a6-55d46d730682','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('89d2d92b-f8f2-b5c8-8184-55d46d9dc7af','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('8a1fea69-25d5-4aba-7547-55d46d0ec497','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('8a5f4fae-262a-20db-e143-55d46df41f8f','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('8aae578f-99b1-d6ad-3fb3-55d46d178298','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('8afe8903-d36f-dc81-2c1b-55d46daae545','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),('8de6b0e4-9719-3777-108d-55d46d4b385a','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8e2e5440-7e77-2bf4-3a84-55d46d5d954f','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8e9472de-666e-29d1-451c-55d46da10fac','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8ee68028-b16b-2dc3-441e-55d46d671752','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('8f320310-00ef-4620-d128-55d46d86bfc1','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('8f7dec49-7a0e-b76d-6a09-55d46d18d1b3','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('8fcfe402-b77f-dd32-b011-55d46dfa4dda','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('9012c517-bcbb-7192-18df-55d46d9a7886','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('929a8c5a-3bdc-7c80-509b-55d46d07186f','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('92eb85f6-31ff-620d-83fb-55d46dc509bb','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9336ade9-1ef5-0902-801e-55d46d4167a5','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('937b36ea-1a9d-5b4c-6ef7-55d46d1b2182','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('93db133c-5120-ef57-fc90-55d46dad662e','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('94337c77-5c47-d15d-e2cc-55d46dbf31c3','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('947c30af-43aa-5acc-c9e5-55d46de05752','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('94bc338c-da02-a1aa-be0d-55d46dabb6a6','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('950c73a4-f52e-8f10-b87e-55d46d1549c9','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9564db81-17ec-24fc-5eda-55d46dda4d22','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('964f8a9a-730a-7f80-defe-55d46dfd917a','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('967f8958-423d-aa7d-abb7-55d46da14180','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('96d3c807-fe9e-65f9-7976-55d46d393f88','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('9821cd79-9dcd-ac6e-3388-55d46db6baf1','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9875769c-b33b-2830-d0f3-55d46da92ab0','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('98ad2c81-d81c-25f2-607b-55d46d881bff','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9912cd1a-171d-41b2-8201-55d46d084562','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('99623e84-5c2e-67e2-68e3-55d46d0513d2','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9b5e5470-aa96-f7f2-3229-55d46dc473c4','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('9bae7540-ec9d-af71-7309-55d46d96989f','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('9c068149-8b68-7267-1097-55d46d0861a2','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('9c5975db-c89c-d90b-c4b7-55d46db665af','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('9cb18b41-4463-3387-448c-55d46d7f75a7','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('9cff5f2d-9db9-342a-ac14-55d46d0327b8','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9d4b4329-2293-e8f2-c1d3-55d46d163257','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9d9c235c-7f52-2fb4-8b94-55d46dcb0945','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9e0368d3-6ccc-d4d6-5eb9-55d46dc734b0','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a05f7b04-7e43-d1fd-a076-55d46d59e2f9','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('a09069f0-b22b-5227-ec44-55d46da26ec7','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('a0e0e534-a235-f236-8b59-55d46d8e83f0','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('a12a8490-cd8a-d7c1-c1e1-55d46dccdc02','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('a17ca8fd-7d64-b3c4-6ade-55d46dd7020c','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('a1c1b1ce-35e0-f8c1-a591-55d46db60b6c','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a20c611e-0b46-f86c-2a00-55d46dd8dc0a','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a253b673-db65-0fa5-0da9-55d46db3ea29','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a52b9d6d-2216-f414-4533-55d46de100ac','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a57a91a6-fe56-b511-dc54-55d46d19e391','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a5e06d76-936f-e8c7-55c6-55d46df6e95f','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a631d548-b895-a1a8-97ca-55d46de0cc73','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a67c4b56-069c-fc19-5fec-55d46dfd81f4','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a6caafad-27ca-b987-40bd-55d46d90d487','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a710bd99-d296-cbe5-ef3c-55d46d0b2714','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a754dbdc-ac5a-47e8-0af4-55d46d1f5fa0','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a7a02904-3ea4-b32f-7225-55d46df1839b','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a7f03cdb-dad9-69c2-b0e5-55d46da467f4','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a81c79cd-0290-9448-4051-55d46d528cc2','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a84666a3-5308-d725-f698-55d46d3e5a5e','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a85d038a-7a01-c68d-b470-55d46dc54586','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauthkeys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a88ada71-ef26-9328-76ed-55d46d313b2f','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aa3f29f4-4320-a607-a266-55d46db959a1','prospectlists_assigned_user','Users','users','id','prospectlists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ab790837-41ce-e768-f0ef-55d46d4a064d','oauthkeys_created_by','Users','users','id','OAuthKeys','oauthkeys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ad680a55-9006-a493-7141-55d46da8a0ae','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ad9938d3-1199-5993-7da9-55d46dae85ab','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('adc9692c-13b4-7890-76b2-55d46d696731','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('adf6ae57-fdde-b763-0e34-55d46d0d9458','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('ae2422e2-199c-2fc5-d336-55d46d7c0457','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('ae4c0642-3280-ceb4-8617-55d46d856df2','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauthkeys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ae54087a-f2f3-291a-6237-55d46d7aad22','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('ae85279c-a3de-bad5-7d35-55d46de1140c','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('aeb39570-5870-610a-ea52-55d46d35cdec','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('aefda00d-a622-f727-f632-55d46d44d6e3','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('af2c7f6f-e02a-90a0-28e5-55d46dc9b4f0','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('af5bc67d-9d51-20e5-db5b-55d46d9d15b2','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),('b08d537e-c646-c76a-f3a4-55d46dc92651','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b194ef1d-eeca-49a2-2a67-55d46d2fda9e','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b7accd6f-56ab-bc3e-1cd4-55d46d423eba','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('b7e38175-8dba-9f5c-9f7b-55d46d432fd9','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b81432ee-dbc9-ed4d-849b-55d46d946972','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b8758b49-6a4d-cb37-3bdf-55d46d272dfa','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','schedulersjobs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bc2d9565-f0de-0d7e-e99a-55d46d2ce782','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bc5c3245-7ff4-d3f6-f0c9-55d46d4d6a37','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bca86489-91a2-3f3f-de59-55d46d5d924d','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bcdfe9af-c03e-3607-7f3f-55d46dd79a55','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('bd1a3699-fbd0-c18a-7638-55d46dd0f4b8','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('bd4924d2-1baf-8011-32ad-55d46d8319a1','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bd752289-9c89-7eec-7199-55d46df90e12','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bda23b93-0325-8d62-434e-55d46de176e9','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bdcf7930-4c8f-51c6-627b-55d46d71466b','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bdfc27bf-3ad4-f932-b1e3-55d46d42009c','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('be2a99c0-9506-76b0-7f31-55d46d8b2dd0','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('be59f3cc-d64e-e8be-21c5-55d46df45102','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),('c15503bb-3a47-3683-c155-55d46dec570d','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c1df0040-20be-db61-c8f1-55d46d538709','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c20d3e9c-ecd9-1ea6-694f-55d46dd4c7c9','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c234cd19-9a63-2d7c-e484-55d46dd87d3c','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c27c935a-61af-8de8-339d-55d46d2f8791','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('c2ab01df-f242-6856-7363-55d46d799341','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('c2db8b30-d241-862c-fa60-55d46d3807a4','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c3096e96-90e0-d07a-6891-55d46d5a2d85','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c33de93d-a5c3-88ac-4d98-55d46db0a5f5','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('c3718199-31ce-63e6-1213-55d46d02976b','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('c3a16f04-8333-4bd9-6a71-55d46d450ab0','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('c3cb7fcd-0e15-fe31-2d45-55d46d4458d4','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('c40ef3b1-6611-713a-9463-55d46ded4790','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('c43f75b8-6163-4f7f-cbc7-55d46d2bbb62','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c46de7e0-c911-57f5-6247-55d46d99bf16','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),('c50b0371-f1f2-2709-ef8a-55d46dc574b9','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c6f599e6-b77d-27f7-3613-55d46db83acf','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c7267bec-8921-89d5-cadf-55d46d4726ed','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c75322a6-da86-8fad-ab83-55d46da2d98f','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c782ac3e-b001-d9e5-8565-55d46d7d67c7','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('c7b69382-516e-eded-7218-55d46d5672e9','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('c7ea8206-fbdf-914b-db07-55d46d47ed66','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('c81a86be-9421-83a4-f743-55d46d2531a6','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('c856a09a-a86d-6fad-507e-55d46d185874','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('c88ab374-ca1d-1d2f-ac24-55d46dcd077c','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c8be7f81-7469-77cb-7b48-55d46d91f285','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c9002a27-c933-5aba-1cb3-55d46dfec73c','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cb00c50f-7bdd-9269-3b0e-55d46d69a616','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cd58557d-4877-6f1c-baab-55d46d1d85d2','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cd8765a9-5db5-7fcb-73ea-55d46d433e8c','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cdb4f6cc-b7e7-dd35-ac08-55d46d4dfe73','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d071e318-bda8-4dc2-5a96-55d46d188340','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d0a11d43-fc1d-e72c-44cb-55d46d26f3af','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d0cf6630-a268-98ff-5f55-55d46dc578dd','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d1137136-c997-c68b-2d39-55d46d0d7484','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),('d272039b-d7f2-e291-5fdf-55d46d58bd19','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d2a42c8e-9383-080e-4958-55d46d0f7e7f','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d2d2555c-5f79-1415-516a-55d46dac204d','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d2ffeb16-2d6f-c015-05a8-55d46d6a7536','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d32d0087-1ec2-5c7d-125e-55d46db8ed12','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('d35a94ca-4182-ac82-9490-55d46d91fd15','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('d38b9770-fdac-1a7a-92b0-55d46d5b7fdc','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('d3be8803-f97a-5899-bdfd-55d46d42a045','emails_meetings_rel','Emails','emails','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d66e7add-3efe-c9b1-888d-55d46d11af80','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d6a0a8a6-fdfd-52b8-fd93-55d46dd192ed','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d6e3db4d-1626-3120-6ea1-55d46d781d53','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d7118e54-8ea9-257c-2c61-55d46d733cfa','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('d95a9300-4788-2132-6acc-55d46d237331','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d98bb8a8-eb90-32b0-dcde-55d46d0dd015','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d9b927a3-3e61-8fd5-eb46-55d46d8c0f6f','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d9e40347-d1da-4e79-03b8-55d46d313401','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e4980bab-c7c2-e21c-5224-55d46de8d71c','fox_course_modified_user','Users','users','id','fox_Course','fox_course','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e5dd6b12-21a5-d243-5658-55d46d8a2b4f','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e60d5dec-f535-319d-9c07-55d46d2f6083','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e63c929e-7ebe-0651-ecad-55d46d78f16d','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e66cda3a-da09-44f8-9834-55d46d4aa1a4','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e7a70522-d0e4-f481-da88-55d46dfd10e5','fox_course_created_by','Users','users','id','fox_Course','fox_course','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e7c19b72-4a7b-eadb-eac7-55d46d1ba504','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ea7a0814-669c-7578-5f5b-55d46d9b0dae','fox_course_assigned_user','Users','users','id','fox_Course','fox_course','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('edc3dd5a-72c5-20bf-97b9-55d46d955268','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('edf2fbfc-eeed-eea9-da7b-55d46d59fa09','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('f03581ea-7073-3058-2599-55d46dc3bf43','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f3dc671c-44a4-d73a-4b5d-55d46d78e005','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f419d583-f415-7388-44ea-55d46d6fe1eb','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_modules`
--

LOCK TABLES `roles_modules` WRITE;
/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search`
--

LOCK TABLES `saved_search` WRITE;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES ('5b3ccbca-3903-3e6c-fd60-55c8b35632a2',0,'2015-08-10 14:20:19','2015-08-10 14:20:19','1','1','Prune Tracker Tables','function::trimTracker','2005-01-01 16:30:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1),('5bf76888-5be2-826c-8547-55c8b32d80e8',0,'2015-08-10 14:20:19','2015-08-10 14:20:19','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxes','2005-01-01 07:45:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('5c60577c-e5da-a704-a907-55c8b32d0a66',0,'2015-08-10 14:20:19','2015-08-10 14:20:19','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2005-01-01 11:15:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('5ce1355d-3f0c-f540-dc19-55c8b387644e',0,'2015-08-10 14:20:19','2015-08-10 14:20:19','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2005-01-01 14:30:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('5d4b36d6-9764-5966-a6a8-55c8b36aec38',0,'2015-08-10 14:20:19','2015-08-10 14:20:19','1','1','Prune Database on 1st of Month','function::pruneDatabase','2005-01-01 11:30:01','2020-12-31 23:59:59','0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('5db36d33-bc1c-f6ae-431b-55c8b33ae7d2',0,'2015-08-10 14:20:19','2015-08-10 14:20:19','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2008-01-01 13:00:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('5e135d1f-1655-5db3-04ce-55c8b329215c',0,'2015-08-10 14:20:19','2015-08-10 14:20:19','1','1','Clean Jobs Queue','function::cleanJobQueue','2012-01-01 13:15:01','2030-12-31 23:59:59','0::5::*::*::*',NULL,NULL,NULL,'Active',0),('5e7b6be4-5c4b-ba85-a8dc-55c8b37d14b0',0,'2015-08-10 14:20:19','2015-08-10 14:20:19','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2012-01-01 10:30:01','2030-12-31 23:59:59','0::3::1::*::*',NULL,NULL,NULL,'Active',0),('5ee5cceb-fd4c-f90b-ccc9-55c8b3d0ef80',0,'2015-08-10 14:20:19','2015-08-10 14:20:19','1','1','Prune SugarFeed Tables','function::trimSugarFeeds','2005-01-01 08:30:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`),
  KEY `idx_sgrfeed_rmod_rid_date` (`related_module`,`related_id`,`date_entered`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
INSERT INTO `sugarfeed` VALUES ('1cfe9e71-cb0e-22ce-4744-55c8be42898f','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:1a4189c1-09ce-0812-5176-55c8bef6acb7:fse fsefse]','2015-08-10 15:07:48','2015-08-10 15:07:48','1','1',NULL,0,'1','Contacts','1a4189c1-09ce-0812-5176-55c8bef6acb7',NULL,NULL),('5df76c0f-10ad-d8bc-cc63-55d477aa9468','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:5c74f27c-1264-810d-0fd2-55d47784b317:Борис Бурда]','2015-08-19 12:34:10','2015-08-19 12:34:10','1','1',NULL,0,'','Contacts','5c74f27c-1264-810d-0fd2-55d47784b317',NULL,NULL),('70553b5e-c6ff-c0d7-b986-55cdbd0cb2a7','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:6d3d7686-71f3-bfac-5d3a-55cdbd07c69e:czc scszcsz]','2015-08-14 10:04:02','2015-08-14 10:04:02','1','1',NULL,0,'1','Contacts','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e',NULL,NULL),('8c770026-981d-d437-d75a-55d478a08c70','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:7534036e-2e2c-6c89-36a5-55d4783704a5:Евгений Круг]','2015-08-19 12:37:20','2015-08-19 12:37:20','1','1',NULL,0,'','Contacts','7534036e-2e2c-6c89-36a5-55d4783704a5',NULL,NULL),('a9603121-76ab-b4da-2e64-55c8bd8567ea','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:a4a62d8a-83ea-7de7-2eaa-55c8bd14f16c:ауыаыу маыауы]','2015-08-10 15:05:45','2015-08-10 15:05:45','1','1',NULL,0,'1','Contacts','a4a62d8a-83ea-7de7-2eaa-55c8bd14f16c',NULL,NULL),('f1046956-8405-346a-d82b-55d4775dd930','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:eb5bf026-13d9-6822-f87c-55d47799b1bb:Александр Ерошкин]','2015-08-19 12:32:25','2015-08-19 12:32:25','1','1',NULL,0,'1','Contacts','eb5bf026-13d9-6822-f87c-55d47799b1bb',NULL,NULL);
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
INSERT INTO `tracker` VALUES (7,'38425599-fac8-e07c-f9b4-55c8bf177c1f','1','Calls','2d9045ee-f6a8-65aa-45fb-55c8bf684514','аыс','2015-08-10 15:13:35','detailview','f7lq6gs7fsh9tq1ak0bv47i2t4',1,0),(37,'95aa7cbd-2a91-872c-e997-55ccd09f761d','1','fox_Course','1ad8ab8b-f126-4d62-dfcd-55ca016dc38b','ddesfesfes','2015-08-13 17:15:51','detailview','f7lq6gs7fsh9tq1ak0bv47i2t4',1,0),(67,'c415e364-d9ff-4cec-16f0-55cdceea2f3b','1','fox_UserTask','354d7900-89a0-f95e-3386-55ccce47c9bd','12','2015-08-14 11:18:26','detailview','f7lq6gs7fsh9tq1ak0bv47i2t4',0,0),(68,'c149caff-4b70-21e4-7259-55cdcebe90d5','1','fox_UserTask','cded554f-6eb3-ee35-0b87-55cdceee3f84','Example Record','2015-08-14 11:19:08','detailview','f7lq6gs7fsh9tq1ak0bv47i2t4',0,0),(69,'6675007d-c029-e7fd-dda4-55cdcebed1c7','1','fox_UserTask','191bc24a-218d-5114-0e46-55cdce5a55c6','Example Record','2015-08-14 11:20:10','detailview','f7lq6gs7fsh9tq1ak0bv47i2t4',0,0),(70,'f6010e3b-c6de-4936-d078-55cdcf2c6dbf','1','fox_UserTask','2e823872-7d62-a4fb-d3a1-55cdcfa463f5','czc scszcsz / Test_task1','2015-08-14 11:22:30','detailview','f7lq6gs7fsh9tq1ak0bv47i2t4',0,0),(78,'a234bb0c-425b-0cf3-c64b-55d08d699ff7','1','fox_UserTask','4ccb058a-afbf-58f3-0bfd-55cddc4b41a7','fse fsefse / Test_task1','2015-08-16 13:18:47','editview','8jsva3r8qba187g9eqb5se8r03',0,0),(81,'cf77b122-02cd-af8b-8bda-55d08fc1a18d','1','fox_UserTask','ab64f093-2770-5dbf-b5ae-55d08f3f93f2','fse fsefse / Test_task1','2015-08-16 13:28:01','detailview','8jsva3r8qba187g9eqb5se8r03',0,0),(82,'e5cef2b0-98bb-5729-c21e-55d08fa77602','1','fox_UserTask','ae319948-0ab0-f86d-fb7d-55d08f1cf47e','fse fsefse / Test_task1','2015-08-16 13:28:06','detailview','8jsva3r8qba187g9eqb5se8r03',0,0),(89,'aebefb3c-dcb4-ab09-8ba4-55d32b8e7235','1','Contacts','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','czc scszcsz','2015-08-18 12:57:25','save','l6hv6efj0k8g7cop4bn6a32j57',0,0),(97,'8f4c0ada-6f79-f8b1-3f72-55d347178ea7','1','Calls','10ff2e8f-da0e-e8ea-bbee-55d32c02093b','Outgoing call','2015-08-18 14:57:10','detailview','l6hv6efj0k8g7cop4bn6a32j57',1,0),(101,'a146ea48-48e9-1786-dbcb-55d34843e15e','1','Calls','2dfb747f-189e-d452-5d76-55d34785e563','Outgoing call','2015-08-18 15:00:02','detailview','l6hv6efj0k8g7cop4bn6a32j57',1,0),(116,'e3af49ea-3794-8ebe-28e5-55d359f01466','1','Contacts','6d3d7686-71f3-bfac-5d3a-55cdbd07c69e','czc scszcsz','2015-08-18 16:13:18','detailview','l6hv6efj0k8g7cop4bn6a32j57',0,0),(120,'2f1d125f-9edc-1423-1f81-55d361dc1169','1','Contacts','a4a62d8a-83ea-7de7-2eaa-55c8bd14f16c','ауыаыу маыауы','2015-08-18 16:48:22','save','l6hv6efj0k8g7cop4bn6a32j57',0,0),(129,'da1923e7-a935-d4aa-9c63-55d36bc5f1e8','1','Contacts','a4a62d8a-83ea-7de7-2eaa-55c8bd14f16c','ауыаыу маыауы','2015-08-18 17:31:25','detailview','l6hv6efj0k8g7cop4bn6a32j57',0,0),(130,'6efcb4c4-8084-0772-f37c-55d36c79c09c','1','Calls','14496d16-f16a-164d-fbf7-55d36b8acc56','OBC: хуйхуй','2015-08-18 17:32:11','detailview','l6hv6efj0k8g7cop4bn6a32j57',1,0),(135,'2a5f91f3-c137-a2cc-f676-55d36d70ba97','1','Contacts','2effa666-45bb-11e5-95f8-a5ac70298007','Jon Doe','2015-08-18 17:36:33','detailview','l6hv6efj0k8g7cop4bn6a32j57',0,0),(139,'48b29f45-50aa-ae5f-ecf5-55d4752959f9','1','Contacts','1a4189c1-09ce-0812-5176-55c8bef6acb7','fse fsefse','2015-08-19 12:24:49','editview','l6hv6efj0k8g7cop4bn6a32j57',0,0),(140,'f401016b-5d2e-07ac-5f61-55d476fa1cf4','1','fox_Task','195f4d29-ef68-cf10-2cbd-55ccacb5d423','Test_task1','2015-08-19 12:28:28','editview','l6hv6efj0k8g7cop4bn6a32j57',0,0),(141,'f1df7633-003c-b82a-96be-55d477284db7','1','Contacts','eb5bf026-13d9-6822-f87c-55d47799b1bb','Александр Ерошкин','2015-08-19 12:32:25','save','l6hv6efj0k8g7cop4bn6a32j57',1,0),(143,'5e772519-fcbb-6352-7360-55d477095da0','1','Contacts','5c74f27c-1264-810d-0fd2-55d47784b317','Борис Бурда','2015-08-19 12:34:10','save','l6hv6efj0k8g7cop4bn6a32j57',1,0),(147,'a392a182-bfc8-ff43-bcda-55d478d0c6b3','1','Contacts','eb5bf026-13d9-6822-f87c-55d47799b1bb','Александр Ерошкин','2015-08-19 12:35:38','save','l6hv6efj0k8g7cop4bn6a32j57',1,0),(149,'96cd0463-2846-636b-b2ac-55d478f154b3','1','Contacts','7534036e-2e2c-6c89-36a5-55d4783704a5','Евгений Круг','2015-08-19 12:37:20','save','l6hv6efj0k8g7cop4bn6a32j57',1,0),(152,'315a1093-b20f-4a30-e6d9-55d4788cc07c','1','Contacts','eb5bf026-13d9-6822-f87c-55d47799b1bb','Александр Ерошкин','2015-08-19 12:38:05','save','l6hv6efj0k8g7cop4bn6a32j57',1,0),(153,'4f58e2a4-eb98-866d-90cc-55d4784bf47b','1','Contacts','eb5bf026-13d9-6822-f87c-55d47799b1bb','Александр Ерошкин','2015-08-19 12:38:10','detailview','l6hv6efj0k8g7cop4bn6a32j57',1,0),(158,'34092c73-a711-5dd4-c4c7-55d479218e86','1','Users','9d944173-24f7-56ac-6190-55cdc0da24ce','Колцентра','2015-08-19 12:41:47','detailview','l6hv6efj0k8g7cop4bn6a32j57',1,0),(160,'27bffdb4-7794-4232-c14d-55d479cd27ee','1','Users','1','Administrator','2015-08-19 12:43:27','detailview','l6hv6efj0k8g7cop4bn6a32j57',1,0),(161,'3e10cb2a-d0fa-bf71-ca8a-55d47c0652bb','1','Contacts','7534036e-2e2c-6c89-36a5-55d4783704a5','Евгений Круг','2015-08-19 12:54:39','editview','l6hv6efj0k8g7cop4bn6a32j57',1,0),(162,'8649d5cf-8d5c-8f73-c77c-55d47ca54160','1','Contacts','5c74f27c-1264-810d-0fd2-55d47784b317','Борис Бурда','2015-08-19 12:55:01','editview','l6hv6efj0k8g7cop4bn6a32j57',1,0);
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_history`
--

LOCK TABLES `upgrade_history` WRITE;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
INSERT INTO `upgrade_history` VALUES ('4a150952-81cf-4252-86b1-55c9daf22426','upload/upgrades/langpack/rapira_pack_russian-6.5.17 (1).zip','c3b1a04cc8481d07c4708e08d0b81ff0','langpack','installed','6.5.17','RUSSIAN RAPIRA LANGUAGE PACK FOR SUGARCRM','заключительный перевод для SugaCRM CE 6.x на великий и могучий, перевод продолжен здесь: https://github.com/likhobory/SuiteCRM7RU','ru_ru','YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6NDoibmFtZSI7czo0MToiUlVTU0lBTiBSQVBJUkEgTEFOR1VBR0UgUEFDSyBGT1IgU1VHQVJDUk0iO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjE5MToi0LfQsNC60LvRjtGH0LjRgtC10LvRjNC90YvQuSDQv9C10YDQtdCy0L7QtCDQtNC70Y8gU3VnYUNSTSBDRSA2Lngg0L3QsCDQstC10LvQuNC60LjQuSDQuCDQvNC+0LPRg9GH0LjQuSwg0L/QtdGA0LXQstC+0LQg0L/RgNC+0LTQvtC70LbQtdC9INC30LTQtdGB0Yw6IGh0dHBzOi8vZ2l0aHViLmNvbS9saWtob2JvcnkvU3VpdGVDUk03UlUiO3M6NDoidHlwZSI7czo4OiJsYW5ncGFjayI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7czozOiJZZXMiO3M6MjU6ImFjY2VwdGFibGVfc3VnYXJfdmVyc2lvbnMiO2E6MDp7fXM6MjQ6ImFjY2VwdGFibGVfc3VnYXJfZmxhdm9ycyI7YToxOntpOjA7czoyOiJDRSI7fXM6NjoiYXV0aG9yIjtzOjk6Imxpa2hvYm9yeSI7czo3OiJ2ZXJzaW9uIjtzOjY6IjYuNS4xNyI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTA6IjIwMTQvMDcvMjEiO31zOjExOiJpbnN0YWxsZGVmcyI7YTozOntzOjI6ImlkIjtzOjU6InJ1X3J1IjtzOjk6ImltYWdlX2RpciI7czoxNzoiPGJhc2VwYXRoPi9pbWFnZXMiO3M6NDoiY29weSI7YTozOntpOjA7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vaW5jbHVkZSI7czoyOiJ0byI7czo3OiJpbmNsdWRlIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjE4OiI8YmFzZXBhdGg+L21vZHVsZXMiO3M6MjoidG8iO3M6NzoibW9kdWxlcyI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9pbnN0YWxsIjtzOjI6InRvIjtzOjc6Imluc3RhbGwiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9','2015-08-11 11:19:08',1),('67a60fbd-56db-bf3e-1d99-55d08dd6d511','upload/upgrades/module/Foxford2015_08_16_151732.zip','07d0db3bae801f233aab223e1825ac90','module','installed','1439731052','Foxford','','Foxford','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MzoiZm94IjtzOjY6ImF1dGhvciI7czowOiIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czo3OiJGb3hmb3JkIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxNS0wOC0xNiAxMzoxNzoyNyI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE0Mzk3MzEwNTI7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo5OntzOjI6ImlkIjtzOjc6IkZveGZvcmQiO3M6NToiYmVhbnMiO2E6Mzp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTA6ImZveF9Db3Vyc2UiO3M6NToiY2xhc3MiO3M6MTA6ImZveF9Db3Vyc2UiO3M6NDoicGF0aCI7czozMzoibW9kdWxlcy9mb3hfQ291cnNlL2ZveF9Db3Vyc2UucGhwIjtzOjM6InRhYiI7YjowO31pOjE7YTo0OntzOjY6Im1vZHVsZSI7czo4OiJmb3hfVGFzayI7czo1OiJjbGFzcyI7czo4OiJmb3hfVGFzayI7czo0OiJwYXRoIjtzOjI5OiJtb2R1bGVzL2ZveF9UYXNrL2ZveF9UYXNrLnBocCI7czozOiJ0YWIiO2I6MTt9aToyO2E6NDp7czo2OiJtb2R1bGUiO3M6MTI6ImZveF9Vc2VyVGFzayI7czo1OiJjbGFzcyI7czoxMjoiZm94X1VzZXJUYXNrIjtzOjQ6InBhdGgiO3M6Mzc6Im1vZHVsZXMvZm94X1VzZXJUYXNrL2ZveF9Vc2VyVGFzay5waHAiO3M6MzoidGFiIjtiOjA7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjc6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo4MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2ZveF9jb3Vyc2VfY29udGFjdHNfMV9Db250YWN0cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjg6IkNvbnRhY3RzIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjg1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvZm94X2NvdXJzZV9jb250YWN0c18xX2ZveF9Db3Vyc2UucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMDoiZm94X0NvdXJzZSI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czo4MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2ZveF9jb3Vyc2VfY29udGFjdHNfQ29udGFjdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJDb250YWN0cyI7fWk6MzthOjI6e3M6NDoiZnJvbSI7czo4MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2ZveF9jb3Vyc2VfY29udGFjdHNfZm94X0NvdXJzZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEwOiJmb3hfQ291cnNlIjt9aTo0O2E6Mjp7czo0OiJmcm9tIjtzOjgzOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvZm94X3VzZXJ0YXNrX2NvbnRhY3RzX0NvbnRhY3RzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6ODoiQ29udGFjdHMiO31pOjU7YToyOntzOjQ6ImZyb20iO3M6ODM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGF5b3V0ZGVmcy9mb3hfdXNlcnRhc2tfZm94X3Rhc2tfZm94X1Rhc2sucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJmb3hfVGFzayI7fWk6NjthOjI6e3M6NDoiZnJvbSI7czo3NzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL2ZveF91c2VydGFza191c2Vyc19Vc2Vycy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IlVzZXJzIjt9fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6NTp7aTowO2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6ODU6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy9mb3hfY291cnNlX2NvbnRhY3RzXzFNZXRhRGF0YS5waHAiO31pOjE7YToxOntzOjk6Im1ldGFfZGF0YSI7czo4MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL2ZveF9jb3Vyc2VfY29udGFjdHNNZXRhRGF0YS5waHAiO31pOjI7YToxOntzOjk6Im1ldGFfZGF0YSI7czo4NToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL2ZveF91c2VydGFza19jb250YWN0c01ldGFEYXRhLnBocCI7fWk6MzthOjE6e3M6OToibWV0YV9kYXRhIjtzOjg1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3JlbGF0aW9uc2hpcHMvZm94X3VzZXJ0YXNrX2ZveF90YXNrTWV0YURhdGEucGhwIjt9aTo0O2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6ODI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy9mb3hfdXNlcnRhc2tfdXNlcnNNZXRhRGF0YS5waHAiO319czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YTozOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvZm94X0NvdXJzZSI7czoyOiJ0byI7czoxODoibW9kdWxlcy9mb3hfQ291cnNlIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjQwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2ZveF9UYXNrIjtzOjI6InRvIjtzOjE2OiJtb2R1bGVzL2ZveF9UYXNrIjt9aToyO2E6Mjp7czo0OiJmcm9tIjtzOjQ0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2ZveF9Vc2VyVGFzayI7czoyOiJ0byI7czoyMDoibW9kdWxlcy9mb3hfVXNlclRhc2siO319czo4OiJsYW5ndWFnZSI7YToyMTp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL0NvbnRhY3RzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6ODoiQ29udGFjdHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvQ29udGFjdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJDb250YWN0cyI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6MjthOjM6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9mb3hfQ291cnNlLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTA6ImZveF9Db3Vyc2UiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjM7YTozOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZm94X0NvdXJzZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEwOiJmb3hfQ291cnNlIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X3J1Ijt9aTo0O2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL0NvbnRhY3RzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6ODoiQ29udGFjdHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjU7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvQ29udGFjdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJDb250YWN0cyI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6NjthOjM6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9mb3hfQ291cnNlLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTA6ImZveF9Db3Vyc2UiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjc7YTozOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZm94X0NvdXJzZS5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEwOiJmb3hfQ291cnNlIjtzOjg6Imxhbmd1YWdlIjtzOjU6InJ1X3J1Ijt9aTo4O2E6Mzp7czo0OiJmcm9tIjtzOjYzOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2ZveF9Vc2VyVGFzay5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJmb3hfVXNlclRhc2siO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjk7YTozOntzOjQ6ImZyb20iO3M6NjM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZm94X1VzZXJUYXNrLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6ImZveF9Vc2VyVGFzayI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6MTA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvQ29udGFjdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJDb250YWN0cyI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTE7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvQ29udGFjdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJDb250YWN0cyI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6MTI7YTozOntzOjQ6ImZyb20iO3M6NjM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZm94X1VzZXJUYXNrLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6ImZveF9Vc2VyVGFzayI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTM7YTozOntzOjQ6ImZyb20iO3M6NjM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZm94X1VzZXJUYXNrLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6ImZveF9Vc2VyVGFzayI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6MTQ7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZm94X1Rhc2sucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJmb3hfVGFzayI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTU7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZm94X1Rhc2sucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJmb3hfVGFzayI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6MTY7YTozOntzOjQ6ImZyb20iO3M6NjM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZm94X1VzZXJUYXNrLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6ImZveF9Vc2VyVGFzayI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTc7YTozOntzOjQ6ImZyb20iO3M6NjM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZm94X1VzZXJUYXNrLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6ImZveF9Vc2VyVGFzayI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6MTg7YTozOntzOjQ6ImZyb20iO3M6NTY6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvVXNlcnMucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJVc2VycyI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTk7YTozOntzOjQ6ImZyb20iO3M6NTY6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvVXNlcnMucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJVc2VycyI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6MjA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO319czo3OiJ2YXJkZWZzIjthOjEwOntpOjA7YToyOntzOjQ6ImZyb20iO3M6ODA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9mb3hfY291cnNlX2NvbnRhY3RzXzFfQ29udGFjdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJDb250YWN0cyI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo4MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2ZveF9jb3Vyc2VfY29udGFjdHNfMV9mb3hfQ291cnNlLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTA6ImZveF9Db3Vyc2UiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6Nzg6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9mb3hfY291cnNlX2NvbnRhY3RzX0NvbnRhY3RzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6ODoiQ29udGFjdHMiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6ODA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9mb3hfY291cnNlX2NvbnRhY3RzX2ZveF9Db3Vyc2UucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMDoiZm94X0NvdXJzZSI7fWk6NDthOjI6e3M6NDoiZnJvbSI7czo4NDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2ZveF91c2VydGFza19jb250YWN0c19mb3hfVXNlclRhc2sucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoiZm94X1VzZXJUYXNrIjt9aTo1O2E6Mjp7czo0OiJmcm9tIjtzOjgwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvZm94X3VzZXJ0YXNrX2NvbnRhY3RzX0NvbnRhY3RzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6ODoiQ29udGFjdHMiO31pOjY7YToyOntzOjQ6ImZyb20iO3M6ODQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9mb3hfdXNlcnRhc2tfZm94X3Rhc2tfZm94X1VzZXJUYXNrLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6ImZveF9Vc2VyVGFzayI7fWk6NzthOjI6e3M6NDoiZnJvbSI7czo4MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2ZveF91c2VydGFza19mb3hfdGFza19mb3hfVGFzay5waHAiO3M6OToidG9fbW9kdWxlIjtzOjg6ImZveF9UYXNrIjt9aTo4O2E6Mjp7czo0OiJmcm9tIjtzOjgxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvZm94X3VzZXJ0YXNrX3VzZXJzX2ZveF9Vc2VyVGFzay5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJmb3hfVXNlclRhc2siO31pOjk7YToyOntzOjQ6ImZyb20iO3M6NzQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9mb3hfdXNlcnRhc2tfdXNlcnNfVXNlcnMucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJVc2VycyI7fX1zOjEyOiJsYXlvdXRmaWVsZHMiO2E6Mzp7aTowO2E6MTp7czoxNzoiYWRkaXRpb25hbF9maWVsZHMiO2E6MDp7fX1pOjE7YToxOntzOjE3OiJhZGRpdGlvbmFsX2ZpZWxkcyI7YTowOnt9fWk6MjthOjE6e3M6MTc6ImFkZGl0aW9uYWxfZmllbGRzIjthOjA6e319fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==','2015-08-16 13:17:27',1),('d8d97197-4ee0-0f0f-870f-55d36897c1f0','upload/upgrades/module/yaai.zip','43e98d23f11046a152a4c5cfb51d2f1d','module','installed','2.6.0b','Asterisk SugarCRM Connector','Integrates Asterisk telephony features into SugarCRM.','Asterisk_SugarCRM_Connector','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjI6e3M6MTM6ImV4YWN0X21hdGNoZXMiO2E6MTp7aToxO3M6NToiNi40LjAiO31zOjEzOiJyZWdleF9tYXRjaGVzIjthOjI6e2k6MTtzOjg6IjZcLjRcLlxkIjtpOjI7czoxMjoiNlwuWzAtNV1cLlxkIjt9fXM6MjQ6ImFjY2VwdGFibGVfc3VnYXJfZmxhdm9ycyI7YTozOntpOjA7czoyOiJDRSI7aToxO3M6MzoiUFJPIjtpOjI7czozOiJFTlQiO31zOjY6InJlYWRtZSI7czoxNzU6IlBsZWFzZSBzZWUgdGhlIGRvY3VtZW50YXRpb24gYXQgaHR0cDovL3d3dy5naXRodWIuY29tL2JsYWszci95YWFpL1VzZXItTWFudWFsIHRoZXJlIGFyZSBzb21lIGltcG9ydGFudCBub3RlcyB5b3UgbmVlZCB0byByZWFkIGlmIHlvdSBhcmUgaW5zdGFsbGluZyBhbiB1cGRhdGVkIHZlcnNpb24gb2YgeWFhaS4iO3M6Mzoia2V5IjtzOjA6IiI7czo2OiJhdXRob3IiO3M6ODI6IkJsYWtlIFJvYmVydHNvbiAvIEtJTkFNVSBCdXNpbmVzcyBTb2x1dGlvbnMgQUcgLyBhYmNvbmEgYWN0aXZlIGJ1c2luZXNzIGNvbnN1bHRpbmciO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjUzOiJJbnRlZ3JhdGVzIEFzdGVyaXNrIHRlbGVwaG9ueSBmZWF0dXJlcyBpbnRvIFN1Z2FyQ1JNLiI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoyNzoiQXN0ZXJpc2sgU3VnYXJDUk0gQ29ubmVjdG9yIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxNzoiMjAxMi1Ob3YtMDUgMTE6MTEiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7czo2OiIyLjYuMGIiO3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NDoidHJ1ZSI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjY6e3M6MjoiaWQiO3M6Mjc6IkFzdGVyaXNrX1N1Z2FyQ1JNX0Nvbm5lY3RvciI7czo0OiJjb3B5IjthOjU6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo0MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Bc3RlcmlzayI7czoyOiJ0byI7czoyMzoiY3VzdG9tL21vZHVsZXMvQXN0ZXJpc2siO31pOjE7YToyOntzOjQ6ImZyb20iO3M6Njk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2luY2x1ZGUvU3VnYXJGaWVsZHMvRmllbGRzL1Bob25lL0xpc3RWaWV3LnRwbCI7czoyOiJ0byI7czo1MjoiY3VzdG9tL2luY2x1ZGUvU3VnYXJGaWVsZHMvRmllbGRzL1Bob25lL0xpc3RWaWV3LnRwbCI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czo2NDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvaW5jbHVkZS9qYXZhc2NyaXB0L2pxdWVyeS9qcXVlcnkucGFjay5qcyI7czoyOiJ0byI7czo0NzoiY3VzdG9tL2luY2x1ZGUvamF2YXNjcmlwdC9qcXVlcnkvanF1ZXJ5LnBhY2suanMiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6NzA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQ29uZmlndXJhdG9yL2FzdGVyaXNrX2NvbmZpZ3VyYXRvci5waHAiO3M6MjoidG8iO3M6NTM6ImN1c3RvbS9tb2R1bGVzL0NvbmZpZ3VyYXRvci9hc3Rlcmlza19jb25maWd1cmF0b3IucGhwIjt9aTo0O2E6Mjp7czo0OiJmcm9tIjtzOjcwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0NvbmZpZ3VyYXRvci9hc3Rlcmlza19jb25maWd1cmF0b3IudHBsIjtzOjI6InRvIjtzOjUzOiJjdXN0b20vbW9kdWxlcy9Db25maWd1cmF0b3IvYXN0ZXJpc2tfY29uZmlndXJhdG9yLnRwbCI7fX1zOjE0OiJhZG1pbmlzdHJhdGlvbiI7YToxOntpOjA7YToxOntzOjQ6ImZyb20iO3M6NzI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQWRtaW5pc3RyYXRpb24vYXN0ZXJpc2tfY29uZmlndXJhdG9yLnBocCI7fX1zOjg6Imxhbmd1YWdlIjthOjE1OntpOjA7YTozOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvVXNlcnMvbGFuZ3VhZ2UvZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IlVzZXJzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjYxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL1VzZXJzL2xhbmd1YWdlL2dlX2dlLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJVc2VycyI7czo4OiJsYW5ndWFnZSI7czo1OiJnZV9nZSI7fWk6MjthOjM6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Vc2Vycy9sYW5ndWFnZS9ydV9ydS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NToiVXNlcnMiO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfcnUiO31pOjM7YTozOntzOjQ6ImZyb20iO3M6NzA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQWRtaW5pc3RyYXRpb24vbGFuZ3VhZ2UvZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6NDthOjM6e3M6NDoiZnJvbSI7czo3MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9BZG1pbmlzdHJhdGlvbi9sYW5ndWFnZS9nZV9nZS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTQ6IkFkbWluaXN0cmF0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImdlX2dlIjt9aTo1O2E6Mzp7czo0OiJmcm9tIjtzOjcwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0FkbWluaXN0cmF0aW9uL2xhbmd1YWdlL3J1X3J1LmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNDoiQWRtaW5pc3RyYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfcnUiO31pOjY7YTozOntzOjQ6ImZyb20iO3M6Njg6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQ29uZmlndXJhdG9yL2xhbmd1YWdlL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoiQ29uZmlndXJhdG9yIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTo3O2E6Mzp7czo0OiJmcm9tIjtzOjY4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0NvbmZpZ3VyYXRvci9sYW5ndWFnZS9nZV9nZS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6IkNvbmZpZ3VyYXRvciI7czo4OiJsYW5ndWFnZSI7czo1OiJnZV9nZSI7fWk6ODthOjM6e3M6NDoiZnJvbSI7czo2ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Db25maWd1cmF0b3IvbGFuZ3VhZ2UvcnVfcnUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJDb25maWd1cmF0b3IiO3M6ODoibGFuZ3VhZ2UiO3M6NToicnVfcnUiO31pOjk7YTozOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQ2FsbHMvbGFuZ3VhZ2UvZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IkNhbGxzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxMDthOjM6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9DYWxscy9sYW5ndWFnZS9nZV9nZS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NToiQ2FsbHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZ2VfZ2UiO31pOjExO2E6Mzp7czo0OiJmcm9tIjtzOjYxOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0NhbGxzL2xhbmd1YWdlL3J1X3J1LmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czo1OiJDYWxscyI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fWk6MTI7YTozOntzOjQ6ImZyb20iO3M6NzI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2luY2x1ZGUvbGFuZ3VhZ2UvY2FsbF9zdGF0dXNfZG9tX19lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxMzthOjM6e3M6NDoiZnJvbSI7czo3MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvaW5jbHVkZS9sYW5ndWFnZS9jYWxsX3N0YXR1c19kb21fX2dlX2dlLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZ2VfZ2UiO31pOjE0O2E6Mzp7czo0OiJmcm9tIjtzOjcyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9pbmNsdWRlL2xhbmd1YWdlL2NhbGxfc3RhdHVzX2RvbV9fcnVfcnUubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJydV9ydSI7fX1zOjEzOiJjdXN0b21fZmllbGRzIjthOjQ6e2k6MDthOjIwOntzOjI6ImlkIjtzOjI0OiJVc2Vyc2FzdGVyaXNrX291dGJvdW5kX2MiO3M6NDoibmFtZSI7czoxOToiYXN0ZXJpc2tfb3V0Ym91bmRfYyI7czo1OiJsYWJlbCI7czoyMToiTEJMX0FTVEVSSVNLX09VVEJPVU5EIjtzOjg6ImNvbW1lbnRzIjtOO3M6NDoiaGVscCI7TjtzOjY6Im1vZHVsZSI7czo1OiJVc2VycyI7czo0OiJ0eXBlIjtzOjQ6ImJvb2wiO3M6ODoibWF4X3NpemUiO3M6MjoiNDUiO3M6MTQ6InJlcXVpcmVfb3B0aW9uIjtzOjE6IjAiO3M6MTM6ImRlZmF1bHRfdmFsdWUiO2k6MDtzOjEzOiJkYXRlX21vZGlmaWVkIjtzOjE5OiIyMDA5LTA1LTIyIDAwOjAwOjAwIjtzOjc6ImRlbGV0ZWQiO3M6MToiMCI7czo3OiJhdWRpdGVkIjtzOjE6IjAiO3M6MTE6Im1hc3NfdXBkYXRlIjtzOjE6IjAiO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7czoxOiIwIjtzOjEwOiJyZXBvcnRhYmxlIjtzOjE6IjEiO3M6NDoiZXh0MSI7TjtzOjQ6ImV4dDIiO047czo0OiJleHQzIjtOO3M6NDoiZXh0NCI7Tjt9aToxO2E6MjA6e3M6MjoiaWQiO3M6MjM6IlVzZXJzYXN0ZXJpc2tfaW5ib3VuZF9jIjtzOjQ6Im5hbWUiO3M6MTg6ImFzdGVyaXNrX2luYm91bmRfYyI7czo1OiJsYWJlbCI7czoyMDoiTEJMX0FTVEVSSVNLX0lOQk9VTkQiO3M6ODoiY29tbWVudHMiO047czo0OiJoZWxwIjtOO3M6NjoibW9kdWxlIjtzOjU6IlVzZXJzIjtzOjQ6InR5cGUiO3M6NDoiYm9vbCI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7aTowO3M6MTM6ImRhdGVfbW9kaWZpZWQiO3M6MTk6IjIwMDktMDUtMjIgMDA6MDA6MDAiO3M6NzoiZGVsZXRlZCI7czoxOiIwIjtzOjc6ImF1ZGl0ZWQiO3M6MToiMCI7czoxMToibWFzc191cGRhdGUiO3M6MToiMCI7czoxNToiZHVwbGljYXRlX21lcmdlIjtzOjE6IjAiO3M6MTA6InJlcG9ydGFibGUiO3M6MToiMSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO31pOjI7YToyMDp7czoyOiJpZCI7czoxOToiVXNlcnNhc3Rlcmlza19leHRfYyI7czo0OiJuYW1lIjtzOjE0OiJhc3Rlcmlza19leHRfYyI7czo1OiJsYWJlbCI7czoxNjoiTEJMX0FTVEVSSVNLX0VYVCI7czo4OiJjb21tZW50cyI7TjtzOjQ6ImhlbHAiO047czo2OiJtb2R1bGUiO3M6NToiVXNlcnMiO3M6NDoidHlwZSI7czo3OiJ2YXJjaGFyIjtzOjg6Im1heF9zaXplIjtzOjI6IjQ1IjtzOjE0OiJyZXF1aXJlX29wdGlvbiI7czoxOiIwIjtzOjEzOiJkZWZhdWx0X3ZhbHVlIjtOO3M6MTM6ImRhdGVfbW9kaWZpZWQiO3M6MTk6IjIwMDktMDUtMjIgMDA6MDA6MDAiO3M6NzoiZGVsZXRlZCI7czoxOiIwIjtzOjc6ImF1ZGl0ZWQiO3M6MToiMCI7czoxMToibWFzc191cGRhdGUiO3M6MToiMCI7czoxNToiZHVwbGljYXRlX21lcmdlIjtzOjE6IjAiO3M6MTA6InJlcG9ydGFibGUiO3M6MToiMSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO31pOjM7YToyMTp7czoyOiJpZCI7czoyNToiQ2FsbHNhc3Rlcmlza19jYWxsZXJfaWRfYyI7czo0OiJuYW1lIjtzOjIwOiJhc3Rlcmlza19jYWxsZXJfaWRfYyI7czo1OiJsYWJlbCI7czoyMjoiTEJMX0FTVEVSSVNLX0NBTExFUl9JRCI7czo4OiJjb21tZW50cyI7TjtzOjQ6ImhlbHAiO3M6MTY6InRyaW1tZWQgY2FsbGVySWQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjQ6InR5cGUiO3M6NzoidmFyY2hhciI7czo4OiJtYXhfc2l6ZSI7czoyOiI0NSI7czoxNDoicmVxdWlyZV9vcHRpb24iO3M6MToiMCI7czoxMzoiZGVmYXVsdF92YWx1ZSI7TjtzOjEzOiJkYXRlX21vZGlmaWVkIjtzOjE5OiIyMDA5LTA2LTE4IDE1OjM4OjQ4IjtzOjc6ImRlbGV0ZWQiO3M6MToiMCI7czo3OiJhdWRpdGVkIjtzOjE6IjAiO3M6MTE6Im1hc3NfdXBkYXRlIjtzOjE6IjAiO3M6MTU6ImR1cGxpY2F0ZV9tZXJnZSI7czoxOiIwIjtzOjEwOiJyZXBvcnRhYmxlIjtzOjE6IjAiO3M6MTA6ImltcG9ydGFibGUiO3M6NDoidHJ1ZSI7czo0OiJleHQxIjtOO3M6NDoiZXh0MiI7TjtzOjQ6ImV4dDMiO047czo0OiJleHQ0IjtOO319czoxMToibG9naWNfaG9va3MiO2E6MTp7aTowO2E6Nzp7czo2OiJtb2R1bGUiO3M6MDoiIjtzOjQ6Imhvb2siO3M6MTQ6ImFmdGVyX3VpX2ZyYW1lIjtzOjU6Im9yZGVyIjtpOjExO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjcyOiJBZGRzIGFzdGVyaXNrIHJlbGF0ZWQgamF2YXNjcmlwdCB0byBwYWdlIHRvIGVuYWJsZSBDbGljayBUbyBEaWFsL0xvZ2dpbmciO3M6NDoiZmlsZSI7czo0NjoiY3VzdG9tL21vZHVsZXMvQXN0ZXJpc2svaW5jbHVkZS9Bc3Rlcmlza0pTLnBocCI7czo1OiJjbGFzcyI7czoxMDoiQXN0ZXJpc2tKUyI7czo4OiJmdW5jdGlvbiI7czoxNDoiZWNob0phdmFTY3JpcHQiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9','2015-08-18 17:15:48',1);
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES ('10f4b6b8-4955-de97-d476-55d47b885daa','Home2_CONTACT',0,'2015-08-19 12:49:59','2015-08-19 12:49:59','9d944173-24f7-56ac-6190-55cdc0da24ce','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('148ac301-d889-5b49-9a5d-55d4797d8aa7','ETag',0,'2015-08-19 12:41:42','2015-08-19 12:48:40','9d944173-24f7-56ac-6190-55cdc0da24ce','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),('344469ac-805d-8453-ef87-55ccaba986ad','fox_Task2_FOX_TASK',0,'2015-08-13 14:37:01','2015-08-13 14:37:01','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3a47b6cf-f330-1dd3-251a-55c8bd9c785a','Contacts2_CONTACT',0,'2015-08-10 15:05:19','2015-08-10 15:05:19','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('4fbd085b-490b-9237-a4bd-55d31123cc67','ACLRoles2_ACLROLE',0,'2015-08-18 11:06:48','2015-08-18 11:06:48','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('51698d7a-6dcf-87c9-088b-55d46ded7dac','Home2_CONTACT',0,'2015-08-19 11:52:21','2015-08-19 11:52:21','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('597a0076-845d-057f-def8-55d36c202c4f','Calls2_CALL',0,'2015-08-18 17:32:01','2015-08-18 17:32:01','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('59d9ca94-ec80-af0e-f297-55c8b3ef9ece','global',0,'2015-08-10 14:20:19','2015-08-18 12:56:19','1','YTozNTp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjU5YmEwZjI1LTRhNzAtZWNjOC04OGZiLTU1YzhiMzgzMTFhNSI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6NDoiMTgwMCI7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvTW9zY293IjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO2k6LTE7czoyOiJ1dCI7czoxOiIxIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MDoiIjtzOjc6ImRlY19zZXAiO3M6MToiLCI7czo1OiJkYXRlZiI7czo1OiJkLm0uWSI7czo1OiJ0aW1lZiI7czozOiJIOmkiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjM6ImYgbCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjM6IkFsbCI7czoyNToiUmVsZWFzZXNfUkVMRUFTRV9PUkRFUl9CWSI7czoxMDoibGlzdF9vcmRlciI7czo0OiJmZG93IjtzOjE6IjAiO3M6MTU6Im1haWxfc210cHNlcnZlciI7czowOiIiO3M6MTM6Im1haWxfc210cHVzZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwYXNzIjtzOjA6IiI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO30='),('88866b7a-bbfc-ad2a-29b1-55c8b35f2a2f','Home',0,'2015-08-10 14:23:35','2015-08-19 11:59:40','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjU6e3M6MzY6IjVkM2NlNDA3LTlkOWItN2U4MC02NWY1LTU1YzhiMzFkNDBjMCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjZlMmEwY2QxLWMyNTgtM2FjNC0xMmU1LTU1Y2JhZDJjMmYxMSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNToiSm90UGFkWW9EYXNobGV0IjtzOjY6Im1vZHVsZSI7czo0OiJIb21lIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo2MToibW9kdWxlcy9mb3hfVGFzay9EYXNobGV0cy9Kb3RQYWRZb0Rhc2hsZXQvSm90UGFkWW9EYXNobGV0LnBocCI7fXM6MzY6IjIyYmMzMDg4LTI1MWEtMmFiMC0xNGNlLTU1Y2M1ZDc0YTgwYyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoyNzoiZm94X1Rhc2tDb250YWN0c0Rpc3RpYnV0aW9uIjtzOjY6Im1vZHVsZSI7czo0OiJIb21lIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo4NjoibW9kdWxlcy9mb3hfVGFzay9EYXNobGV0cy9mb3hfVGFza0NvbnRhY3RzRGlzdHJpYnV0aW9uL2ZveF9UYXNrQ29udGFjdHNEaXN0aWJ1dGlvbi5waHAiO31zOjM2OiI4YzQ3OTI0OC1kY2ZkLTI1YjQtYjIyZS01NWNjNWUwZDkzMmYiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6Mjg6ImZveF9UYXNrQ29udGFjdHNEaXN0cmlidXRpb24iO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjg3OiJtb2R1bGVzL2ZveF9UYXNrL0Rhc2hsZXRzL2ZveF9UYXNrQ29udGFjdHNEaXN0cmlidXRpb24vZm94X1Rhc2tDb250YWN0c0Rpc3RyaWJ1dGlvbi5waHAiO31zOjM2OiIxOTA0NWJhOS00YjNlLTAxNjYtZGU4ZC01NWQ0NmQwYmVjYjkiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15Q29udGFjdHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJDb250YWN0cyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQ29udGFjdHMvRGFzaGxldHMvTXlDb250YWN0c0Rhc2hsZXQvTXlDb250YWN0c0Rhc2hsZXQucGhwIjt9fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjM6e2k6MDtzOjM2OiI4YzQ3OTI0OC1kY2ZkLTI1YjQtYjIyZS01NWNjNWUwZDkzMmYiO2k6MTtzOjM2OiIxOTA0NWJhOS00YjNlLTAxNjYtZGU4ZC01NWQ0NmQwYmVjYjkiO2k6MjtzOjM2OiI1ZDNjZTQwNy05ZDliLTdlODAtNjVmNS01NWM4YjMxZDQwYzAiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MDoiIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),('890925a5-ed41-d2e6-41ed-55c8b3cdc0cd','Home2_CALL',0,'2015-08-10 14:23:35','2015-08-10 14:23:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('894f9eca-039a-aebb-b789-55c8b322b8d6','Home2_MEETING',0,'2015-08-10 14:23:35','2015-08-10 14:23:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('89947872-fbd3-44dc-d22a-55c8b3d38587','Home2_OPPORTUNITY',0,'2015-08-10 14:23:35','2015-08-10 14:23:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('89f8a03e-fd26-611b-5fb5-55c8b351f392','Home2_ACCOUNT',0,'2015-08-10 14:23:35','2015-08-10 14:23:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8a5d078a-f85d-995e-3573-55c8b3c53a39','Home2_LEAD',0,'2015-08-10 14:23:35','2015-08-10 14:23:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8aa9afad-d1bd-4198-d6ae-55c8b335c8bd','Home2_SUGARFEED',0,'2015-08-10 14:23:35','2015-08-10 14:23:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9fe7d037-3fcc-47e7-ca5f-55cdc0c0aca6','global',0,'2015-08-14 10:20:24','2015-08-19 12:48:40','9d944173-24f7-56ac-6190-55cdc0da24ce','YTozNDp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOi0xO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9Nb3Njb3ciO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjA6IiI7czo3OiJkZWNfc2VwIjtzOjE6IiwiO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6ImQubS5ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwdXNlciI7czo1OiJhZG1pbiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czo4OiJnanJmeXRuZSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6MzoiZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo2OiJtYWlsdG8iO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjlmYzJiZmFjLTQwNmEtYzIzMi01YjAyLTU1Y2RjMGExYTY5OSI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6MzoiQWxsIjt9'),('b3550baa-2f8e-766a-a8a7-55ccd08b6d2c','fox_UserTask2_FOX_USERTASK',0,'2015-08-13 17:13:57','2015-08-13 17:13:57','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('be02961b-9e71-3071-dfd3-55cdc08d40a2','Users2_USER',0,'2015-08-14 10:19:46','2015-08-14 10:19:46','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cb5c5a8a-5e1b-3f87-101c-55ca2cc0aa3a','Contacts',0,'2015-08-11 17:08:23','2015-08-11 17:08:35','1','YToxOntzOjE0OiJzdWJwYW5lbExheW91dCI7YTo2OntpOjA7czoxMDoiYWN0aXZpdGllcyI7aToxO3M6MjE6ImZveF9jb3Vyc2VfY29udGFjdHNfMSI7aToyO3M6MTk6ImZveF9jb3Vyc2VfY29udGFjdHMiO2k6MztzOjc6Imhpc3RvcnkiO2k6NDtzOjk6ImNhbXBhaWducyI7aTo1O3M6ODoiY29udGFjdHMiO319'),('e9f86931-ac99-e79c-7060-55c8b318a89d','ETag',0,'2015-08-10 14:23:29','2015-08-19 12:43:21','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MjU7fQ=='),('eda6b3a4-a2db-39b4-1258-55d47b1a0a4d','Home',0,'2015-08-19 12:48:45','2015-08-19 12:51:01','9d944173-24f7-56ac-6190-55cdc0da24ce','YToyOntzOjg6ImRhc2hsZXRzIjthOjQ6e3M6MzY6ImQwNDdhNWIxLWVhZTMtMTE1Ny01ZmY2LTU1ZDQ3Yjc1YTY3MyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImU2M2FlNjFiLWU5MzEtYzNlZC1lODlkLTU1ZDQ3YjU1ZWM3NiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoyODoiZm94X1Rhc2tDb250YWN0c0Rpc3RyaWJ1dGlvbiI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6ODc6Im1vZHVsZXMvZm94X1Rhc2svRGFzaGxldHMvZm94X1Rhc2tDb250YWN0c0Rpc3RyaWJ1dGlvbi9mb3hfVGFza0NvbnRhY3RzRGlzdHJpYnV0aW9uLnBocCI7fXM6MzY6ImY5NTUwZThhLWIxNDEtMTliMS00ZDY4LTU1ZDQ3YmM1YmI5YiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoyODoiZm94X1Rhc2tDb250YWN0c0Rpc3RyaWJ1dGlvbiI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6ODc6Im1vZHVsZXMvZm94X1Rhc2svRGFzaGxldHMvZm94X1Rhc2tDb250YWN0c0Rpc3RyaWJ1dGlvbi9mb3hfVGFza0NvbnRhY3RzRGlzdHJpYnV0aW9uLnBocCI7fXM6MzY6Ijg5ZTA1ZjQ1LWFmMGItNzRhYS0yMWY0LTU1ZDQ3YjI5MjNkMyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlDb250YWN0c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6IkNvbnRhY3RzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9Db250YWN0cy9EYXNobGV0cy9NeUNvbnRhY3RzRGFzaGxldC9NeUNvbnRhY3RzRGFzaGxldC5waHAiO319czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6NDp7aTowO3M6MzY6ImY5NTUwZThhLWIxNDEtMTliMS00ZDY4LTU1ZDQ3YmM1YmI5YiI7aToxO3M6MzY6Ijg5ZTA1ZjQ1LWFmMGItNzRhYS0yMWY0LTU1ZDQ3YjI5MjNkMyI7aToyO3M6MzY6ImU2M2FlNjFiLWU5MzEtYzNlZC1lODlkLTU1ZDQ3YjU1ZWM3NiI7aTozO3M6MzY6ImQwNDdhNWIxLWVhZTMtMTE1Ny01ZmY2LTU1ZDQ3Yjc1YTY3MyI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToxOntpOjA7czowOiIiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMiI7czoxNDoicGFnZVRpdGxlTGFiZWwiO3M6MjA6IkxCTF9IT01FX1BBR0VfMV9OQU1FIjt9fX0='),('ee25ccb2-3c89-d106-9088-55d47b8aa7e4','Home2_CALL',0,'2015-08-19 12:48:45','2015-08-19 12:48:45','9d944173-24f7-56ac-6190-55cdc0da24ce','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ee6c89ea-f255-9019-08aa-55d47bee5aa7','Home2_MEETING',0,'2015-08-19 12:48:45','2015-08-19 12:48:45','9d944173-24f7-56ac-6190-55cdc0da24ce','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('eeba186e-d3b1-7b5a-6fe6-55d47bb04e8f','Home2_OPPORTUNITY',0,'2015-08-19 12:48:45','2015-08-19 12:48:45','9d944173-24f7-56ac-6190-55cdc0da24ce','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ef0b287b-106e-2937-0ae1-55d47b0ecae3','Home2_ACCOUNT',0,'2015-08-19 12:48:45','2015-08-19 12:48:45','9d944173-24f7-56ac-6190-55cdc0da24ce','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ef4e7356-5612-f789-16a3-55d47becb5f7','Home2_LEAD',0,'2015-08-19 12:48:45','2015-08-19 12:48:45','9d944173-24f7-56ac-6190-55cdc0da24ce','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ef9a95cd-7495-b2db-4616-55d47b802179','Home2_SUGARFEED',0,'2015-08-19 12:48:45','2015-08-19 12:48:45','9d944173-24f7-56ac-6190-55cdc0da24ce','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','admin','$1$H7C7mMVV$1g2bb8T8MUBxDr.9OBb55.',0,NULL,NULL,1,NULL,'Administrator',1,0,1,NULL,'2015-08-10 14:20:19','2015-08-19 12:43:21','1','','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0),('9d944173-24f7-56ac-6190-55cdc0da24ce','Сотрудник','4961a89e8a994a3e327ce26e75069429',0,NULL,NULL,1,NULL,'Колцентра',0,0,1,NULL,'2015-08-14 10:20:24','2015-08-19 12:48:40','9d944173-24f7-56ac-6190-55cdc0da24ce','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_cstm`
--

DROP TABLE IF EXISTS `users_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_cstm` (
  `id_c` char(36) NOT NULL,
  `asterisk_outbound_c` tinyint(1) DEFAULT '0',
  `asterisk_inbound_c` tinyint(1) DEFAULT '0',
  `asterisk_ext_c` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_cstm`
--

LOCK TABLES `users_cstm` WRITE;
/*!40000 ALTER TABLE `users_cstm` DISABLE KEYS */;
INSERT INTO `users_cstm` VALUES ('1',1,1,'102'),('9d944173-24f7-56ac-6190-55cdc0da24ce',1,1,'101');
/*!40000 ALTER TABLE `users_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_feeds`
--

LOCK TABLES `users_feeds` WRITE;
/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_last_import`
--

LOCK TABLES `users_last_import` WRITE;
/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_password_link`
--

LOCK TABLES `users_password_link` WRITE;
/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_signatures`
--

LOCK TABLES `users_signatures` WRITE;
/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcals`
--

LOCK TABLES `vcals` WRITE;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
INSERT INTO `vcals` VALUES ('39e68f88-996c-c1c0-7674-55c8bfc4cc32',0,'2015-08-10 15:13:09','2015-08-18 17:36:14','1','vfb','sugar','BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\r\nBEGIN:VFREEBUSY\r\nORGANIZER;CN=Administrator:VFREEBUSY\r\nDTSTART:2015-08-17 00:00:00\r\nDTEND:2015-10-17 00:00:00\r\nFREEBUSY:20150818T130100Z/20150818T130100Z\r\nFREEBUSY:20150818T173000Z/20150818T173000Z\r\nFREEBUSY:20150818T151500Z/20150818T151500Z\r\nFREEBUSY:20150818T145700Z/20150818T145800Z\r\nFREEBUSY:20150818T160100Z/20150818T160100Z\r\nFREEBUSY:20150818T173500Z/20150818T173500Z\r\nFREEBUSY:20150818T155400Z/20150818T155500Z\r\nFREEBUSY:20150818T150300Z/20150818T150300Z\r\nFREEBUSY:20150818T155700Z/20150818T155700Z\r\nFREEBUSY:20150818T154800Z/20150818T155300Z\r\nFREEBUSY:20150818T152100Z/20150818T152200Z\r\nFREEBUSY:20150818T125700Z/20150818T125700Z\r\nFREEBUSY:20150818T155700Z/20150818T155700Z\r\nFREEBUSY:20150818T173200Z/20150818T173200Z\r\nFREEBUSY:20150818T154600Z/20150818T154600Z\r\nFREEBUSY:20150818T151300Z/20150818T151300Z\r\nFREEBUSY:20150818T155700Z/20150818T155700Z\r\nFREEBUSY:20150818T154200Z/20150818T154400Z\r\nDTSTAMP:2015-08-18 17:36:14\r\nEND:VFREEBUSY\r\nEND:VCALENDAR\r\n');
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_version` varchar(255) DEFAULT NULL,
  `db_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_version` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES ('238f6b4e-7656-7c99-2a7d-55d46d56e012',0,'2015-08-19 11:50:36','2015-08-19 11:50:36','1','1','Rebuild Relationships','4.0.0','4.0.0'),('28928d25-abe4-9d2d-e9b9-55d46dc60d2b',0,'2015-08-19 11:50:36','2015-08-19 11:50:36','1','1','Rebuild Extensions','4.0.0','4.0.0'),('640226ec-524a-0c0d-9a26-55c8b373978d',0,'2015-08-10 14:20:19','2015-08-10 14:20:19','1','1','Chart Data Cache','3.5.1','3.5.1'),('6450f6ac-7b43-bdf2-f377-55c8b3818a7f',0,'2015-08-10 14:20:19','2015-08-10 14:20:19','1','1','htaccess','3.5.1','3.5.1');
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-19 15:56:33
