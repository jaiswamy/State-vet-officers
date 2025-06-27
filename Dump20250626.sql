-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: db_vetofficers
-- ------------------------------------------------------
-- Server version	5.6.22-log

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
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievements` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `particulars_event` varchar(255) DEFAULT NULL,
  `period_duration` varchar(255) DEFAULT NULL,
  `type_achievement` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `hsno` varchar(255) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,0,'dgdg','India',NULL,NULL,'dfdfg',NULL),(2,0,'bidar','India','Shembelli near Hanuman Temple','585421','Karnataka','Shemblli');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `profile_pic_id` bigint(20) DEFAULT NULL,
  `sms_password` varchar(255) DEFAULT NULL,
  `sms_sender_id` varchar(255) DEFAULT NULL,
  `sms_username` varchar(255) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hribgo0kw00r7vvaw39vjx0cq` (`address_id`),
  KEY `FK_bqq4bu608oxckso8scyqv0p2y` (`profile_pic_id`),
  KEY `FK_srrkly0y7bt6n8h3l6mh5ua0t` (`user_id_id`),
  CONSTRAINT `FK_bqq4bu608oxckso8scyqv0p2y` FOREIGN KEY (`profile_pic_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_hribgo0kw00r7vvaw39vjx0cq` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FK_srrkly0y7bt6n8h3l6mh5ua0t` FOREIGN KEY (`user_id_id`) REFERENCES `sec_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,1,2,'2025-06-19 12:20:45','2025-06-19 12:20:46','123','09448334567',NULL,NULL,NULL,NULL,6,'admin2');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awards` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `awardedfor` varchar(255) DEFAULT NULL,
  `awards_year` datetime DEFAULT NULL,
  `noof_awards` varchar(255) DEFAULT NULL,
  `particulars_awards` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comman_users`
--

DROP TABLE IF EXISTS `comman_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comman_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `profile_pic_id` bigint(20) DEFAULT NULL,
  `sms_password` varchar(255) DEFAULT NULL,
  `sms_sender_id` varchar(255) DEFAULT NULL,
  `sms_username` varchar(255) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_o69qwvnhiy577jr55uyvxc4fb` (`address_id`),
  KEY `FK_lcks1kjaf10ckh8vyf2yurnk0` (`profile_pic_id`),
  KEY `FK_9lehq2efnkw14px20u55vlg10` (`user_id_id`),
  CONSTRAINT `FK_9lehq2efnkw14px20u55vlg10` FOREIGN KEY (`user_id_id`) REFERENCES `sec_user` (`id`),
  CONSTRAINT `FK_lcks1kjaf10ckh8vyf2yurnk0` FOREIGN KEY (`profile_pic_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_o69qwvnhiy577jr55uyvxc4fb` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comman_users`
--

LOCK TABLES `comman_users` WRITE;
/*!40000 ALTER TABLE `comman_users` DISABLE KEYS */;
INSERT INTO `comman_users` VALUES (1,1,1,'2025-06-14 13:52:15','test@gmail.com','2025-06-14 13:52:15','123','8574747474',NULL,NULL,NULL,NULL,5,'demo');
/*!40000 ALTER TABLE `comman_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confidential_reports`
--

DROP TABLE IF EXISTS `confidential_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confidential_reports` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `cadre6` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `year4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confidential_reports`
--

LOCK TABLES `confidential_reports` WRITE;
/*!40000 ALTER TABLE `confidential_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `confidential_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `doc_name` varchar(255) DEFAULT NULL,
  `docs_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
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
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experiences` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `hod_from` varchar(255) DEFAULT NULL,
  `hod_to` varchar(255) DEFAULT NULL,
  `officer_from` varchar(255) DEFAULT NULL,
  `officer_to` varchar(255) DEFAULT NULL,
  `professor_from` varchar(255) DEFAULT NULL,
  `professor_to` varchar(255) DEFAULT NULL,
  `year_of_service1` varchar(255) DEFAULT NULL,
  `year_of_service2` varchar(255) DEFAULT NULL,
  `year_of_service3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiences`
--

LOCK TABLES `experiences` WRITE;
/*!40000 ALTER TABLE `experiences` DISABLE KEYS */;
INSERT INTO `experiences` VALUES (1,0,'02/02/2020','02/02/2020','02/02/2022','02/02/2002','02/02/2020','02/02/2022','5','5','5'),(2,0,'02/02/2020','02/02/2020','02/02/2022','02/02/2020','02/02/2020','02/02/2020','3','4','4'),(3,0,'02/02/2020','03/03/2030','02/02/2022','02/02/2022','02/02/2020','02/02/2022','2','5','5'),(4,0,'02/02/2020','02/02/2020','02/02/2022','02/02/2020','02/02/2020','02/02/2020','44','dsfsdf','dgdfgdf'),(5,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,0,'02/02/2020','02/02/2020','02/02/2020','02/02/2022','02/02/2020','02/02/2020','4','4','4');
/*!40000 ALTER TABLE `experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail`
--

DROP TABLE IF EXISTS `form_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `additional_remarks` varchar(255) DEFAULT NULL,
  `address_one` varchar(255) DEFAULT NULL,
  `address_three` varchar(255) DEFAULT NULL,
  `address_two` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `age_cat` varchar(255) NOT NULL,
  `age_relax` varchar(255) NOT NULL,
  `apllication_no` varchar(255) DEFAULT NULL,
  `appliying_post` varchar(255) DEFAULT NULL,
  `appliying_sub` varchar(255) DEFAULT NULL,
  `awardedfor` varchar(255) DEFAULT NULL,
  `awards_year` datetime DEFAULT NULL,
  `bachelors_degree` varchar(255) DEFAULT NULL,
  `bachelors_degreeyear` datetime DEFAULT NULL,
  `bachelors_marks_sheet_id` bigint(20) DEFAULT NULL,
  `birthplace` varchar(255) DEFAULT NULL,
  `board_universitybachelors_degree` varchar(255) DEFAULT NULL,
  `board_universitymasters_degree` varchar(255) DEFAULT NULL,
  `board_universityphd` varchar(255) DEFAULT NULL,
  `board_universitypuc` varchar(255) DEFAULT NULL,
  `board_universitysslc` varchar(255) DEFAULT NULL,
  `case_past` varchar(255) DEFAULT NULL,
  `case_past_details` varchar(255) DEFAULT NULL,
  `case_pending` varchar(255) DEFAULT NULL,
  `case_pending_details` varchar(255) DEFAULT NULL,
  `caste_income_certificate_id` bigint(20) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `common_user_id_id` bigint(20) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `degree_name_bachelors` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ex_service_man` varchar(255) DEFAULT NULL,
  `ex_servicemen_certificate_id` bigint(20) DEFAULT NULL,
  `experience_certificate_id` bigint(20) DEFAULT NULL,
  `exposure_certificate_id` bigint(20) DEFAULT NULL,
  `externally_fcertificate_id` bigint(20) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `fvc_date` datetime DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `h_no` varchar(255) DEFAULT NULL,
  `hk_issue_date` datetime DEFAULT NULL,
  `hkrdno` varchar(255) DEFAULT NULL,
  `international_certificate_id` bigint(20) DEFAULT NULL,
  `j371` varchar(255) DEFAULT NULL,
  `kvccertificate_id` bigint(20) DEFAULT NULL,
  `kalyana_karnataka_certificate_id` bigint(20) DEFAULT NULL,
  `kannada_language` varchar(255) DEFAULT NULL,
  `kannada_medium` varchar(255) DEFAULT NULL,
  `kannada_medium_certificate_id` bigint(20) DEFAULT NULL,
  `kpsckannada_certificate_id` bigint(20) DEFAULT NULL,
  `kpsckannadaexam` varchar(255) DEFAULT NULL,
  `kvc2_id` bigint(20) DEFAULT NULL,
  `kvc_no` varchar(255) DEFAULT NULL,
  `languages_certificate_id` bigint(20) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `m_name` varchar(255) DEFAULT NULL,
  `master_marks_sheet_id` bigint(20) DEFAULT NULL,
  `masters_degree` varchar(255) DEFAULT NULL,
  `masters_degreeyear` datetime DEFAULT NULL,
  `maximumpuc` varchar(255) DEFAULT NULL,
  `maximumsslc` varchar(255) DEFAULT NULL,
  `medals_certificate_id` bigint(20) DEFAULT NULL,
  `netcertificate_id` bigint(20) DEFAULT NULL,
  `neteducation` varchar(255) DEFAULT NULL,
  `noof_awards` varchar(255) DEFAULT NULL,
  `obtainedpuc` varchar(255) DEFAULT NULL,
  `obtainedsslc` varchar(255) DEFAULT NULL,
  `other_degree_certificate_id` bigint(20) DEFAULT NULL,
  `out_station_certificate_id` bigint(20) DEFAULT NULL,
  `phd` varchar(255) DEFAULT NULL,
  `phdsubject` varchar(255) DEFAULT NULL,
  `phdyear` datetime DEFAULT NULL,
  `particulars_awards` varchar(255) DEFAULT NULL,
  `payment_info_id_id` bigint(20) DEFAULT NULL,
  `paystatus` varchar(255) DEFAULT NULL,
  `percentagebachelors_degree` varchar(255) DEFAULT NULL,
  `percentagemasters_degree` varchar(255) DEFAULT NULL,
  `percentagephd` varchar(255) DEFAULT NULL,
  `percentagepuc` varchar(255) DEFAULT NULL,
  `percentagesslc` varchar(255) DEFAULT NULL,
  `personwith_disability_certificate_id` bigint(20) DEFAULT NULL,
  `pgpdc_id` bigint(20) DEFAULT NULL,
  `phdcertificate_id` bigint(20) DEFAULT NULL,
  `phdpdc_id` bigint(20) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `picture_id` bigint(20) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `project_displaced_person` varchar(255) DEFAULT NULL,
  `puc` varchar(255) DEFAULT NULL,
  `puc_marks_sheet_id` bigint(20) DEFAULT NULL,
  `pucyear` datetime DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `reference_certificate_id` bigint(20) DEFAULT NULL,
  `reference_one` varchar(255) DEFAULT NULL,
  `reference_three` varchar(255) DEFAULT NULL,
  `reference_two` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `research_certificate_id` bigint(20) DEFAULT NULL,
  `rural_certificate_id` bigint(20) DEFAULT NULL,
  `ruralstdy` varchar(255) DEFAULT NULL,
  `signature_id` bigint(20) DEFAULT NULL,
  `socialcategory` varchar(255) DEFAULT NULL,
  `special_attainment_certificate_id` bigint(20) DEFAULT NULL,
  `sslc` varchar(255) DEFAULT NULL,
  `sslc_marks_sheet_id` bigint(20) DEFAULT NULL,
  `sslcyear` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `subcast` varchar(255) DEFAULT NULL,
  `subject_master` varchar(255) DEFAULT NULL,
  `taluka` varchar(255) DEFAULT NULL,
  `ugpdc_id` bigint(20) DEFAULT NULL,
  `village` varchar(255) DEFAULT NULL,
  `woman` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_he9ushacyljg3kvne0wxryxyr` (`bachelors_marks_sheet_id`),
  KEY `FK_9qdur7w43mnfb6xolsi3uxdt6` (`caste_income_certificate_id`),
  KEY `FK_62u1pondasmcuf8btq9xpiyhc` (`common_user_id_id`),
  KEY `FK_cs0pjgh56bndeu1xtv3q3rsnq` (`ex_servicemen_certificate_id`),
  KEY `FK_pihlg6excxpdj5oelbh38l22i` (`experience_certificate_id`),
  KEY `FK_kkdbipqo5r3i8bqb8gnbrs0g1` (`exposure_certificate_id`),
  KEY `FK_239o7c1iwksgi0mkcw7lqbisd` (`externally_fcertificate_id`),
  KEY `FK_o6606ssqtkuk76m6o40ko7x51` (`international_certificate_id`),
  KEY `FK_lmot3o7ak1xj5fn1q5me81vx9` (`kvccertificate_id`),
  KEY `FK_pjih3i7lmpb5xsh3mfo5yoerd` (`kalyana_karnataka_certificate_id`),
  KEY `FK_hdxhe85oln3uysao603ghrxq1` (`kannada_medium_certificate_id`),
  KEY `FK_7k726yjgq6smlxn0kj8uexf71` (`kpsckannada_certificate_id`),
  KEY `FK_q8ofrj64cmey98vnfyh3bexbk` (`kvc2_id`),
  KEY `FK_pvehltt6sei6r1ge4kslkb9jp` (`languages_certificate_id`),
  KEY `FK_76g1sk5ipm8ugabpm3lcpqvoc` (`master_marks_sheet_id`),
  KEY `FK_131nu6ifeyekjs11ko3corlow` (`medals_certificate_id`),
  KEY `FK_eq20jy3q4mlbuvigfbw54wpob` (`netcertificate_id`),
  KEY `FK_phnce9nnvvcngbbcas7qp206h` (`other_degree_certificate_id`),
  KEY `FK_kfkxbk2mcthyer5kgsqv8t4kh` (`out_station_certificate_id`),
  KEY `FK_7rdyg97s6u5xe3ye5d9a8o2p3` (`payment_info_id_id`),
  KEY `FK_nobwmp26iidc0a52sdsf8lad0` (`personwith_disability_certificate_id`),
  KEY `FK_9tnj60ejfmrpi345mpg36s5x1` (`pgpdc_id`),
  KEY `FK_tlfi5suorf28kb1yocpf4njhd` (`phdcertificate_id`),
  KEY `FK_s1v2f6983p941393m8340dxn6` (`phdpdc_id`),
  KEY `FK_ogf0sopt7h4rhggm9p9kdxx0e` (`picture_id`),
  KEY `FK_rf65lkojhqwysmvjglcuj6vee` (`puc_marks_sheet_id`),
  KEY `FK_3tt20er9r2xt4o5fmjvixuj51` (`reference_certificate_id`),
  KEY `FK_fcoyrknrabc052ks0cd6awpgs` (`research_certificate_id`),
  KEY `FK_aamuc4tnitjfqa0ha2v3kjgav` (`rural_certificate_id`),
  KEY `FK_jthjbaelvk59ylviftd36ayfk` (`signature_id`),
  KEY `FK_o1p8jcttk7dpt2hwfp0e4nvwv` (`special_attainment_certificate_id`),
  KEY `FK_p5ven4c31wldkrnacx190g4w9` (`sslc_marks_sheet_id`),
  KEY `FK_51rb5b4jeqndpfn3vebmcjnui` (`ugpdc_id`),
  CONSTRAINT `FK_131nu6ifeyekjs11ko3corlow` FOREIGN KEY (`medals_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_239o7c1iwksgi0mkcw7lqbisd` FOREIGN KEY (`externally_fcertificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_3tt20er9r2xt4o5fmjvixuj51` FOREIGN KEY (`reference_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_51rb5b4jeqndpfn3vebmcjnui` FOREIGN KEY (`ugpdc_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_62u1pondasmcuf8btq9xpiyhc` FOREIGN KEY (`common_user_id_id`) REFERENCES `comman_users` (`id`),
  CONSTRAINT `FK_76g1sk5ipm8ugabpm3lcpqvoc` FOREIGN KEY (`master_marks_sheet_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_7k726yjgq6smlxn0kj8uexf71` FOREIGN KEY (`kpsckannada_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_7rdyg97s6u5xe3ye5d9a8o2p3` FOREIGN KEY (`payment_info_id_id`) REFERENCES `payment_info` (`id`),
  CONSTRAINT `FK_9qdur7w43mnfb6xolsi3uxdt6` FOREIGN KEY (`caste_income_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_9tnj60ejfmrpi345mpg36s5x1` FOREIGN KEY (`pgpdc_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_aamuc4tnitjfqa0ha2v3kjgav` FOREIGN KEY (`rural_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_cs0pjgh56bndeu1xtv3q3rsnq` FOREIGN KEY (`ex_servicemen_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_eq20jy3q4mlbuvigfbw54wpob` FOREIGN KEY (`netcertificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_fcoyrknrabc052ks0cd6awpgs` FOREIGN KEY (`research_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_hdxhe85oln3uysao603ghrxq1` FOREIGN KEY (`kannada_medium_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_he9ushacyljg3kvne0wxryxyr` FOREIGN KEY (`bachelors_marks_sheet_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_jthjbaelvk59ylviftd36ayfk` FOREIGN KEY (`signature_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_kfkxbk2mcthyer5kgsqv8t4kh` FOREIGN KEY (`out_station_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_kkdbipqo5r3i8bqb8gnbrs0g1` FOREIGN KEY (`exposure_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_lmot3o7ak1xj5fn1q5me81vx9` FOREIGN KEY (`kvccertificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_nobwmp26iidc0a52sdsf8lad0` FOREIGN KEY (`personwith_disability_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_o1p8jcttk7dpt2hwfp0e4nvwv` FOREIGN KEY (`special_attainment_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_o6606ssqtkuk76m6o40ko7x51` FOREIGN KEY (`international_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_ogf0sopt7h4rhggm9p9kdxx0e` FOREIGN KEY (`picture_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_p5ven4c31wldkrnacx190g4w9` FOREIGN KEY (`sslc_marks_sheet_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_phnce9nnvvcngbbcas7qp206h` FOREIGN KEY (`other_degree_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_pihlg6excxpdj5oelbh38l22i` FOREIGN KEY (`experience_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_pjih3i7lmpb5xsh3mfo5yoerd` FOREIGN KEY (`kalyana_karnataka_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_pvehltt6sei6r1ge4kslkb9jp` FOREIGN KEY (`languages_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_q8ofrj64cmey98vnfyh3bexbk` FOREIGN KEY (`kvc2_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_rf65lkojhqwysmvjglcuj6vee` FOREIGN KEY (`puc_marks_sheet_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_s1v2f6983p941393m8340dxn6` FOREIGN KEY (`phdpdc_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_tlfi5suorf28kb1yocpf4njhd` FOREIGN KEY (`phdcertificate_id`) REFERENCES `images` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail`
--

LOCK TABLES `form_detail` WRITE;
/*!40000 ALTER TABLE `form_detail` DISABLE KEYS */;
INSERT INTO `form_detail` VALUES (1,24,'dfgdfg','gfd','dgdg','gdg','1 year and 9 days','select','No','OP20250001','Registrar',NULL,NULL,NULL,'345345','2025-06-03 00:00:00',4,NULL,'dfgdfg','gdfgf','dfgdg',NULL,NULL,'no','','no','',NULL,NULL,1,'Yes','dfg','fgdgg','2024-01-05 00:06:00','dfgfd@gmail.com',NULL,NULL,11,13,12,'gdfgdfg','test',NULL,'Male','55',NULL,NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',19,'dfgfdg','dfgdgdfg',6,'5345344','2025-06-11 00:00:00',NULL,NULL,16,NULL,NULL,NULL,NULL,NULL,10,15,'45353','dfgdfg','2025-06-10 00:00:00',NULL,1,'Paid','44','44','44',NULL,NULL,NULL,7,8,9,'8574747474',1,'585401',NULL,NULL,NULL,NULL,NULL,20,'ddfgfd','gfdgfdg','gfdgfd','Hindu',14,NULL,NULL,2,'GM',17,NULL,3,NULL,'fgfg','gfgdfg','dfgfdgfdg','dfgfdgg','fdgfg',5,'dgdgfdg',NULL),(2,24,'fhfhfgh','hfhfg','yrtyrt','ytryr','Only 16 days','select','No','OP20250002','Registrar',NULL,NULL,NULL,'4545','2025-06-09 00:00:00',24,NULL,'dfgd','dfgdfg','dfgfdgdg',NULL,NULL,'no','','no','',NULL,NULL,1,'Yes','dfgdfg','fghfh','2025-01-03 00:06:00','recruitmentcell@kvafsu.edu.in',NULL,NULL,31,33,32,'fghfgh','fhfgh',NULL,'Male','55544',NULL,NULL,38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',39,'fghfh','fghfgh',26,'4435345','2025-06-10 00:00:00',NULL,NULL,36,NULL,NULL,NULL,NULL,NULL,30,35,'5345345','dfgdfg','2025-06-04 00:00:00',NULL,2,NULL,'44','44','44',NULL,NULL,NULL,27,28,29,'9448334567',21,'585421',NULL,NULL,NULL,NULL,NULL,40,'gjhjhgj','yrtytr','tryt','Hindu',34,NULL,NULL,22,'GM',37,NULL,23,NULL,'fghfh','fhfh','fghfhfh','dfgdfg','fghfh',25,'ghh',NULL),(3,26,'gdgdfg','dfgdg','dgdfg','gdgdg','30 years and 11 months','select','No','OP20250003','Dean of Veterinary College Athani',NULL,NULL,NULL,'4334','2025-06-10 00:00:00',44,NULL,'dfgdfg','dfgdfg','dfgg',NULL,NULL,'no','','no','',NULL,NULL,1,'Yes','gdfgdfg','Bidar','1994-01-19 00:07:00','gururajkulkarni115@gmail.com',NULL,NULL,53,55,54,'DATTA RAO','C','2020-01-02 00:02:00','Male','Shembelli near Hanuman Temple',NULL,NULL,60,NULL,51,NULL,NULL,NULL,NULL,NULL,NULL,52,'43',61,'Sachchidanand','ertret',46,'343345345','2025-06-01 00:00:00',NULL,NULL,58,NULL,NULL,NULL,NULL,NULL,50,57,'5345435','dfgfdg','2025-06-10 00:00:00',NULL,3,'Paid','44','44','44',NULL,NULL,NULL,47,48,49,'9448334567',41,'585403',NULL,NULL,NULL,NULL,NULL,62,'dfgdfg','gdfgfdg','dfgdf','Hindu',56,NULL,NULL,42,'GM',59,NULL,43,NULL,'Karnataka','Shemblli','hatkar','dfdfg','Bidar',45,'Naubad',NULL),(4,23,'gfdgdgd','dfgfdgd','dfgdf','gfdfg','12 years and 4 days','select','No','OP20250004','Registrar',NULL,NULL,NULL,'34453','2025-06-04 00:00:00',66,NULL,'dfsdfsdf','dfsfsdf','sdfsdf',NULL,NULL,'no','','no','',NULL,NULL,1,'Yes','ddfgdfg','ffhgfh','2013-01-19 00:06:00','FGHFGH@gmail.com',NULL,NULL,73,74,NULL,'FHGFGHFGH','FHHHFGHF',NULL,'Male','45',NULL,NULL,79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',80,'FHFHFGH','FGHGFHFH',68,'4234234','2025-06-02 00:00:00',NULL,NULL,77,NULL,NULL,NULL,NULL,NULL,72,76,'35353','sdfsfd','2025-06-03 00:00:00',NULL,4,'Paid','44','44','33',NULL,NULL,NULL,69,70,71,'9879879879',63,'585401',NULL,NULL,NULL,NULL,NULL,81,'dgdfdfg','gdfgdfg','dfgdfg','Hindu',75,NULL,NULL,64,'GM',78,NULL,65,NULL,'fghgfhfgh','fhgfh','fghfhfgh','sdfsdf','fghfh',67,'gfhfh',NULL),(5,0,NULL,NULL,NULL,NULL,'30 years, 11 months, and 3 days','select','No','OP20250005','Registrar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Yes',NULL,'hhfhfh','1994-01-20 00:07:00','recruitmentcell@kvafsu.edu.in',NULL,NULL,NULL,NULL,NULL,'TESTING','fhfhgfh',NULL,'Male','Shembelli near Hanuman Temple',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'Sachchidanand','etertret',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9448334567',NULL,'585403',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hindu',NULL,NULL,NULL,NULL,'GM',NULL,NULL,NULL,NULL,'Karnataka','Shemblli','hatkar',NULL,'teert',NULL,'Naubad',NULL),(6,24,'fghfghfghffgf fhgfhf','dgdg','gfhgfhgf','gfhfgh','3 years and 17 days','select','No','OP20250006','Registrar',NULL,NULL,NULL,'9877899','2025-06-03 00:00:00',85,NULL,'dfgdfg','dfgfdg','dfgdfgdfg',NULL,NULL,'no','','no','',NULL,NULL,1,'Yes','dfdgdfg','gdfgdfg','2022-01-09 00:06:00','dfgfdgd@gmail.com',NULL,NULL,92,94,93,'dfgdgdfg','dfgdgdg',NULL,'Male','897',NULL,NULL,99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',100,'dgdgd','dggdfgdf',87,'879879','2025-06-10 00:00:00',NULL,NULL,97,NULL,NULL,NULL,NULL,NULL,91,96,'343443','dfgdfg','2025-06-10 00:00:00',NULL,5,'Paid','44','44','85',NULL,NULL,NULL,88,89,90,'8798897787',82,'585401',NULL,NULL,NULL,NULL,NULL,101,'hfdhgdgd','hfhfgh','dgdfg','Hindu',95,NULL,NULL,83,'GM',98,NULL,84,NULL,'dfgdf','dgfdgfd','dfgfdgdgfdg','dfgdfg','dfgdfg',86,'dfgfdgdfg',NULL);
/*!40000 ALTER TABLE `form_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_achievements`
--

DROP TABLE IF EXISTS `form_detail_achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_achievements` (
  `form_detail_achievements1_id` bigint(20) DEFAULT NULL,
  `achievements_id` bigint(20) DEFAULT NULL,
  KEY `FK_qxt0shyyw6xah2vceph6nbg6j` (`achievements_id`),
  KEY `FK_rdas03avj7aw3udo5hlipxeh` (`form_detail_achievements1_id`),
  CONSTRAINT `FK_qxt0shyyw6xah2vceph6nbg6j` FOREIGN KEY (`achievements_id`) REFERENCES `achievements` (`id`),
  CONSTRAINT `FK_rdas03avj7aw3udo5hlipxeh` FOREIGN KEY (`form_detail_achievements1_id`) REFERENCES `form_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_achievements`
--

LOCK TABLES `form_detail_achievements` WRITE;
/*!40000 ALTER TABLE `form_detail_achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_detail_achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_confidential_reports`
--

DROP TABLE IF EXISTS `form_detail_confidential_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_confidential_reports` (
  `form_detail_creports_id` bigint(20) DEFAULT NULL,
  `confidential_reports_id` bigint(20) DEFAULT NULL,
  KEY `FK_e8soif2rowtd6lo2atkb8v4n7` (`confidential_reports_id`),
  KEY `FK_20k7n58gi2yw4u940uvsc66w7` (`form_detail_creports_id`),
  CONSTRAINT `FK_20k7n58gi2yw4u940uvsc66w7` FOREIGN KEY (`form_detail_creports_id`) REFERENCES `form_detail` (`id`),
  CONSTRAINT `FK_e8soif2rowtd6lo2atkb8v4n7` FOREIGN KEY (`confidential_reports_id`) REFERENCES `confidential_reports` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_confidential_reports`
--

LOCK TABLES `form_detail_confidential_reports` WRITE;
/*!40000 ALTER TABLE `form_detail_confidential_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_detail_confidential_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_experiences`
--

DROP TABLE IF EXISTS `form_detail_experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_experiences` (
  `form_detail_experiences1_id` bigint(20) DEFAULT NULL,
  `experiences_id` bigint(20) DEFAULT NULL,
  KEY `FK_486lwch29o81f5kkapmpqq81j` (`experiences_id`),
  KEY `FK_k5rppg91atofnta3wxw0frqmj` (`form_detail_experiences1_id`),
  CONSTRAINT `FK_486lwch29o81f5kkapmpqq81j` FOREIGN KEY (`experiences_id`) REFERENCES `experiences` (`id`),
  CONSTRAINT `FK_k5rppg91atofnta3wxw0frqmj` FOREIGN KEY (`form_detail_experiences1_id`) REFERENCES `form_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_experiences`
--

LOCK TABLES `form_detail_experiences` WRITE;
/*!40000 ALTER TABLE `form_detail_experiences` DISABLE KEYS */;
INSERT INTO `form_detail_experiences` VALUES (1,1),(2,2),(3,3),(4,4),(4,5),(6,6);
/*!40000 ALTER TABLE `form_detail_experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_funded_project`
--

DROP TABLE IF EXISTS `form_detail_funded_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_funded_project` (
  `form_detail_fproject_id` bigint(20) DEFAULT NULL,
  `funded_project_id` bigint(20) DEFAULT NULL,
  KEY `FK_dfkar8i6hp2d3cfpc1ysdr2vj` (`funded_project_id`),
  KEY `FK_do1xyeyi4hqci7q3hmfj4nspj` (`form_detail_fproject_id`),
  CONSTRAINT `FK_dfkar8i6hp2d3cfpc1ysdr2vj` FOREIGN KEY (`funded_project_id`) REFERENCES `funded_project` (`id`),
  CONSTRAINT `FK_do1xyeyi4hqci7q3hmfj4nspj` FOREIGN KEY (`form_detail_fproject_id`) REFERENCES `form_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_funded_project`
--

LOCK TABLES `form_detail_funded_project` WRITE;
/*!40000 ALTER TABLE `form_detail_funded_project` DISABLE KEYS */;
INSERT INTO `form_detail_funded_project` VALUES (1,1),(2,2),(3,3),(4,4),(6,5);
/*!40000 ALTER TABLE `form_detail_funded_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_intenational_exposure`
--

DROP TABLE IF EXISTS `form_detail_intenational_exposure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_intenational_exposure` (
  `form_detail_intenational_exposure1_id` bigint(20) DEFAULT NULL,
  `intenational_exposure_id` bigint(20) DEFAULT NULL,
  KEY `FK_bv2r0ipoe4h3truvaf8ctvpck` (`intenational_exposure_id`),
  KEY `FK_kuh49nvdrpt5b4554y9m2lwmp` (`form_detail_intenational_exposure1_id`),
  CONSTRAINT `FK_bv2r0ipoe4h3truvaf8ctvpck` FOREIGN KEY (`intenational_exposure_id`) REFERENCES `intenational_exposure` (`id`),
  CONSTRAINT `FK_kuh49nvdrpt5b4554y9m2lwmp` FOREIGN KEY (`form_detail_intenational_exposure1_id`) REFERENCES `form_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_intenational_exposure`
--

LOCK TABLES `form_detail_intenational_exposure` WRITE;
/*!40000 ALTER TABLE `form_detail_intenational_exposure` DISABLE KEYS */;
INSERT INTO `form_detail_intenational_exposure` VALUES (1,1),(2,2),(3,3),(4,4),(6,5);
/*!40000 ALTER TABLE `form_detail_intenational_exposure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_languages`
--

DROP TABLE IF EXISTS `form_detail_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_languages` (
  `form_detail_languages1_id` bigint(20) DEFAULT NULL,
  `languages_id` bigint(20) DEFAULT NULL,
  KEY `FK_6rv5gpcrf8jhcu9fdq2b8e1o` (`languages_id`),
  KEY `FK_7uck465lvv5ju1u1tpjhidtjw` (`form_detail_languages1_id`),
  CONSTRAINT `FK_6rv5gpcrf8jhcu9fdq2b8e1o` FOREIGN KEY (`languages_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `FK_7uck465lvv5ju1u1tpjhidtjw` FOREIGN KEY (`form_detail_languages1_id`) REFERENCES `form_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_languages`
--

LOCK TABLES `form_detail_languages` WRITE;
/*!40000 ALTER TABLE `form_detail_languages` DISABLE KEYS */;
INSERT INTO `form_detail_languages` VALUES (1,1),(2,2),(3,3),(4,4),(6,5);
/*!40000 ALTER TABLE `form_detail_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_other_degrees`
--

DROP TABLE IF EXISTS `form_detail_other_degrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_other_degrees` (
  `form_detail_other_degrees1_id` bigint(20) DEFAULT NULL,
  `other_degrees_id` bigint(20) DEFAULT NULL,
  KEY `FK_eo9cc4ud9g4rq2gvk2873fe7h` (`other_degrees_id`),
  KEY `FK_ekgqaaqcrh54ux3x6weamuva1` (`form_detail_other_degrees1_id`),
  CONSTRAINT `FK_ekgqaaqcrh54ux3x6weamuva1` FOREIGN KEY (`form_detail_other_degrees1_id`) REFERENCES `form_detail` (`id`),
  CONSTRAINT `FK_eo9cc4ud9g4rq2gvk2873fe7h` FOREIGN KEY (`other_degrees_id`) REFERENCES `other_degrees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_other_degrees`
--

LOCK TABLES `form_detail_other_degrees` WRITE;
/*!40000 ALTER TABLE `form_detail_other_degrees` DISABLE KEYS */;
INSERT INTO `form_detail_other_degrees` VALUES (1,1),(2,2),(3,3),(4,4),(6,5);
/*!40000 ALTER TABLE `form_detail_other_degrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_outstation_service`
--

DROP TABLE IF EXISTS `form_detail_outstation_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_outstation_service` (
  `form_detail_outstation_service1_id` bigint(20) DEFAULT NULL,
  `outstation_service_id` bigint(20) DEFAULT NULL,
  KEY `FK_n6yrdm7q4th48jydq5acp9rb` (`outstation_service_id`),
  KEY `FK_1s234jjxvxy30cpy1ee5981e8` (`form_detail_outstation_service1_id`),
  CONSTRAINT `FK_1s234jjxvxy30cpy1ee5981e8` FOREIGN KEY (`form_detail_outstation_service1_id`) REFERENCES `form_detail` (`id`),
  CONSTRAINT `FK_n6yrdm7q4th48jydq5acp9rb` FOREIGN KEY (`outstation_service_id`) REFERENCES `outstation_service` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_outstation_service`
--

LOCK TABLES `form_detail_outstation_service` WRITE;
/*!40000 ALTER TABLE `form_detail_outstation_service` DISABLE KEYS */;
INSERT INTO `form_detail_outstation_service` VALUES (1,1),(2,2),(3,3),(4,4),(6,5);
/*!40000 ALTER TABLE `form_detail_outstation_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_patent`
--

DROP TABLE IF EXISTS `form_detail_patent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_patent` (
  `form_detail_patent1_id` bigint(20) DEFAULT NULL,
  `patent_id` bigint(20) DEFAULT NULL,
  KEY `FK_qrn6qd457s4lsc87jp1odk9vr` (`patent_id`),
  KEY `FK_5x5r5fpbx40lxbbc9crkyhgpk` (`form_detail_patent1_id`),
  CONSTRAINT `FK_5x5r5fpbx40lxbbc9crkyhgpk` FOREIGN KEY (`form_detail_patent1_id`) REFERENCES `form_detail` (`id`),
  CONSTRAINT `FK_qrn6qd457s4lsc87jp1odk9vr` FOREIGN KEY (`patent_id`) REFERENCES `patent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_patent`
--

LOCK TABLES `form_detail_patent` WRITE;
/*!40000 ALTER TABLE `form_detail_patent` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_detail_patent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_scientific_publication`
--

DROP TABLE IF EXISTS `form_detail_scientific_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_scientific_publication` (
  `form_detail_sp_id` bigint(20) DEFAULT NULL,
  `scientific_publication_id` bigint(20) DEFAULT NULL,
  KEY `FK_2btjgjbp2eftgyomtm0rcc6ac` (`scientific_publication_id`),
  KEY `FK_8dm8nieiscscs57rjhjoeb0o8` (`form_detail_sp_id`),
  CONSTRAINT `FK_2btjgjbp2eftgyomtm0rcc6ac` FOREIGN KEY (`scientific_publication_id`) REFERENCES `scientific_publication` (`id`),
  CONSTRAINT `FK_8dm8nieiscscs57rjhjoeb0o8` FOREIGN KEY (`form_detail_sp_id`) REFERENCES `form_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_scientific_publication`
--

LOCK TABLES `form_detail_scientific_publication` WRITE;
/*!40000 ALTER TABLE `form_detail_scientific_publication` DISABLE KEYS */;
INSERT INTO `form_detail_scientific_publication` VALUES (1,1),(2,2),(3,3),(4,4),(6,5);
/*!40000 ALTER TABLE `form_detail_scientific_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_special_attainment`
--

DROP TABLE IF EXISTS `form_detail_special_attainment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_special_attainment` (
  `form_detail_special_attainment1_id` bigint(20) DEFAULT NULL,
  `special_attainment_id` bigint(20) DEFAULT NULL,
  KEY `FK_ld3horbfjr9puyiby0w6uh51l` (`special_attainment_id`),
  KEY `FK_r1p3a2c8l9e4knjopsdcmr1sk` (`form_detail_special_attainment1_id`),
  CONSTRAINT `FK_ld3horbfjr9puyiby0w6uh51l` FOREIGN KEY (`special_attainment_id`) REFERENCES `special_attainment` (`id`),
  CONSTRAINT `FK_r1p3a2c8l9e4knjopsdcmr1sk` FOREIGN KEY (`form_detail_special_attainment1_id`) REFERENCES `form_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_special_attainment`
--

LOCK TABLES `form_detail_special_attainment` WRITE;
/*!40000 ALTER TABLE `form_detail_special_attainment` DISABLE KEYS */;
INSERT INTO `form_detail_special_attainment` VALUES (1,1),(2,2),(3,3),(4,4),(6,5);
/*!40000 ALTER TABLE `form_detail_special_attainment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_special_awards`
--

DROP TABLE IF EXISTS `form_detail_special_awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_special_awards` (
  `form_detail_special_awards2_id` bigint(20) DEFAULT NULL,
  `special_awards_id` bigint(20) DEFAULT NULL,
  KEY `FK_ped9eqibffe3mae20kwgwm360` (`special_awards_id`),
  KEY `FK_lgu7daf3idrligxp8stk8tfnu` (`form_detail_special_awards2_id`),
  CONSTRAINT `FK_lgu7daf3idrligxp8stk8tfnu` FOREIGN KEY (`form_detail_special_awards2_id`) REFERENCES `form_detail` (`id`),
  CONSTRAINT `FK_ped9eqibffe3mae20kwgwm360` FOREIGN KEY (`special_awards_id`) REFERENCES `special_awards` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_special_awards`
--

LOCK TABLES `form_detail_special_awards` WRITE;
/*!40000 ALTER TABLE `form_detail_special_awards` DISABLE KEYS */;
INSERT INTO `form_detail_special_awards` VALUES (1,1),(2,2),(3,3),(4,4),(6,5);
/*!40000 ALTER TABLE `form_detail_special_awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_workshops`
--

DROP TABLE IF EXISTS `form_detail_workshops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_workshops` (
  `form_detail_wshop_id` bigint(20) DEFAULT NULL,
  `workshops_id` bigint(20) DEFAULT NULL,
  KEY `FK_j852exc5348dbrr7gmks64ahq` (`workshops_id`),
  KEY `FK_b2a0grahaciv9gj0ycdr6h2y9` (`form_detail_wshop_id`),
  CONSTRAINT `FK_b2a0grahaciv9gj0ycdr6h2y9` FOREIGN KEY (`form_detail_wshop_id`) REFERENCES `form_detail` (`id`),
  CONSTRAINT `FK_j852exc5348dbrr7gmks64ahq` FOREIGN KEY (`workshops_id`) REFERENCES `workshops` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_workshops`
--

LOCK TABLES `form_detail_workshops` WRITE;
/*!40000 ALTER TABLE `form_detail_workshops` DISABLE KEYS */;
INSERT INTO `form_detail_workshops` VALUES (1,1),(2,2),(3,3),(4,4),(6,5);
/*!40000 ALTER TABLE `form_detail_workshops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funded_project`
--

DROP TABLE IF EXISTS `funded_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funded_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `co_investigator` varchar(255) DEFAULT NULL,
  `perticular_project` varchar(255) DEFAULT NULL,
  `principal_investigator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funded_project`
--

LOCK TABLES `funded_project` WRITE;
/*!40000 ALTER TABLE `funded_project` DISABLE KEYS */;
INSERT INTO `funded_project` VALUES (1,0,'hgfh','Projects costing Rs 5 to 10 lakhs','fgh'),(2,0,'sdfsdf','Projects costing Rs 1 to  5 lakhs','sdfsf'),(3,0,'sdfsdf','Projects costing Rs 5 to 10 lakhs','sdfsf'),(4,0,NULL,NULL,NULL),(5,0,'dfdfg','Projects costing Rs 5 to 10 lakhs','dfgd');
/*!40000 ALTER TABLE `funded_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `image_description` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `imgpath` varchar(255) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,0,'2025-06-14 14:13:17','/opt/jobformOfficers/jimages/OP20250001/(Picture)_Screenshot (208).png','2025-06-14 14:13:17','Screenshot (208).png'),(2,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(Signature)_GuruRaj_Frontend Developer Resume.pdf','2025-06-14 14:13:18','GuruRaj_Frontend Developer Resume.pdf'),(3,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(SSLC MarksSheet)_Project_work.docx','2025-06-14 14:13:18','Project_work.docx'),(4,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(Bachelors MarksSheet)_GuruRaj_Frontend Developer Resume.pdf','2025-06-14 14:13:18','GuruRaj_Frontend Developer Resume.pdf'),(5,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(Bachelors MarksSheet PDC)_Project_work.pdf','2025-06-14 14:13:18','Project_work.pdf'),(6,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(Master MarksSheet)_Project_work.pdf','2025-06-14 14:13:18','Project_work.pdf'),(7,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(Master MarksSheet PDC)_Project_work.pdf','2025-06-14 14:13:18','Project_work.pdf'),(8,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(PhD Certificate)_Project_work.pdf','2025-06-14 14:13:18','Project_work.pdf'),(9,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(PhD Certificate PDC)_Project_work.pdf','2025-06-14 14:13:18','Project_work.pdf'),(10,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(other Degree Certificate)_Project_work.pdf','2025-06-14 14:13:18','Project_work.pdf'),(11,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(Experience Certificate)_Project_work.pdf','2025-06-14 14:13:18','Project_work.pdf'),(12,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(Externally funded Projects)_Project_work.pdf','2025-06-14 14:13:18','Project_work.pdf'),(13,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(Exposure of conducting)_Project_work.pdf','2025-06-14 14:13:18','Project_work.pdf'),(14,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/( Research  Extension Publications)_Project_work.pdf','2025-06-14 14:13:18','Project_work.pdf'),(15,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(Out Station Service)_Project_work.pdf','2025-06-14 14:13:18','Project_work.pdf'),(16,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(Medals  Awards  Recognition)_Project_work.pdf','2025-06-14 14:13:18','Project_work.pdf'),(17,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(Special Attainment)_Project_work.pdf','2025-06-14 14:13:18','Project_work.pdf'),(18,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(International Exposure)_Project_work.pdf','2025-06-14 14:13:18','Project_work.pdf'),(19,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(Languages Known)_Project_work.pdf','2025-06-14 14:13:18','Project_work.pdf'),(20,0,'2025-06-14 14:13:18','/opt/jobformOfficers/jimages/OP20250001/(Reference)_Project_work.pdf','2025-06-14 14:13:18','Project_work.pdf'),(21,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(Picture)_(Picture)_mallinath.jpg','2025-06-19 12:17:42','(Picture)_mallinath.jpg'),(22,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(Signature)_1749617026788.jpg','2025-06-19 12:17:42','1749617026788.jpg'),(23,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(SSLC MarksSheet)_(Picture)_mallinath.jpg','2025-06-19 12:17:42','(Picture)_mallinath.jpg'),(24,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(Bachelors MarksSheet)_1749617026788.jpg','2025-06-19 12:17:42','1749617026788.jpg'),(25,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(Bachelors MarksSheet PDC)_1749617026788.jpg','2025-06-19 12:17:42','1749617026788.jpg'),(26,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(Master MarksSheet)_1749617026788.jpg','2025-06-19 12:17:42','1749617026788.jpg'),(27,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(Master MarksSheet PDC)_1749617026788.jpg','2025-06-19 12:17:42','1749617026788.jpg'),(28,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(PhD Certificate)_(Picture)_mallinath.jpg','2025-06-19 12:17:42','(Picture)_mallinath.jpg'),(29,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(PhD Certificate PDC)_1749617026788.jpg','2025-06-19 12:17:42','1749617026788.jpg'),(30,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(other Degree Certificate)_1749617026788.jpg','2025-06-19 12:17:42','1749617026788.jpg'),(31,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(Experience Certificate)_1749617026788.jpg','2025-06-19 12:17:42','1749617026788.jpg'),(32,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(Externally funded Projects)_anjum.pdf','2025-06-19 12:17:42','anjum.pdf'),(33,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(Exposure of conducting)_(Picture)_mallinath.jpg','2025-06-19 12:17:42','(Picture)_mallinath.jpg'),(34,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/( Research  Extension Publications)_1749617026788.jpg','2025-06-19 12:17:42','1749617026788.jpg'),(35,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(Out Station Service)_(Picture)_mallinath.jpg','2025-06-19 12:17:42','(Picture)_mallinath.jpg'),(36,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(Medals  Awards  Recognition)_(Picture)_mallinath.jpg','2025-06-19 12:17:42','(Picture)_mallinath.jpg'),(37,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(Special Attainment)_1749617026788.jpg','2025-06-19 12:17:42','1749617026788.jpg'),(38,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(International Exposure)_1749617026788.jpg','2025-06-19 12:17:42','1749617026788.jpg'),(39,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(Languages Known)_(Picture)_mallinath.jpg','2025-06-19 12:17:42','(Picture)_mallinath.jpg'),(40,0,'2025-06-19 12:17:42','/opt/jobformOfficers/jimages/OP20250002/(Reference)_(Picture)_mallinath.jpg','2025-06-19 12:17:42','(Picture)_mallinath.jpg'),(41,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(Picture)_(PUC MarksSheet)_inter.pdf','2025-06-19 12:28:56','(PUC MarksSheet)_inter.pdf'),(42,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(Signature)_(Picture)_mallinath.jpg','2025-06-19 12:28:56','(Picture)_mallinath.jpg'),(43,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(SSLC MarksSheet)_(Picture)_mallinath.jpg','2025-06-19 12:28:56','(Picture)_mallinath.jpg'),(44,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(Bachelors MarksSheet)_Project_work.pdf','2025-06-19 12:28:56','Project_work.pdf'),(45,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(Bachelors MarksSheet PDC)_Project_work.pdf','2025-06-19 12:28:56','Project_work.pdf'),(46,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(Master MarksSheet)_Project_work.pdf','2025-06-19 12:28:56','Project_work.pdf'),(47,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(Master MarksSheet PDC)_Project_work.pdf','2025-06-19 12:28:56','Project_work.pdf'),(48,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(PhD Certificate)_Project_work.pdf','2025-06-19 12:28:56','Project_work.pdf'),(49,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(PhD Certificate PDC)_Project_work.docx','2025-06-19 12:28:56','Project_work.docx'),(50,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(other Degree Certificate)_Project_work.docx','2025-06-19 12:28:56','Project_work.docx'),(51,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(KVC Certificate front)_(Picture)_mallinath.jpg','2025-06-19 12:28:56','(Picture)_mallinath.jpg'),(52,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(KVC Certificate back)_1749617026788.jpg','2025-06-19 12:28:56','1749617026788.jpg'),(53,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(Experience Certificate)_Project_work.pdf','2025-06-19 12:28:56','Project_work.pdf'),(54,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(Externally funded Projects)_Project_work.pdf','2025-06-19 12:28:56','Project_work.pdf'),(55,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(Exposure of conducting)_Project_work.pdf','2025-06-19 12:28:56','Project_work.pdf'),(56,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/( Research  Extension Publications)_Project_work.pdf','2025-06-19 12:28:56','Project_work.pdf'),(57,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(Out Station Service)_Project_work.pdf','2025-06-19 12:28:56','Project_work.pdf'),(58,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(Medals  Awards  Recognition)_Project_work.pdf','2025-06-19 12:28:56','Project_work.pdf'),(59,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(Special Attainment)_Project_work.pdf','2025-06-19 12:28:56','Project_work.pdf'),(60,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(International Exposure)_(Picture)_mallinath.jpg','2025-06-19 12:28:56','(Picture)_mallinath.jpg'),(61,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(Languages Known)_1749617026788.jpg','2025-06-19 12:28:56','1749617026788.jpg'),(62,0,'2025-06-19 12:28:56','/opt/jobformOfficers/jimages/OP20250003/(Reference)_1749617026788.jpg','2025-06-19 12:28:56','1749617026788.jpg'),(63,0,'2025-06-23 11:52:06','/opt/jobformOfficers/jimages/OP20250004/(Picture)_GuruRaj_Frontend Developer Resume.pdf','2025-06-23 11:52:06','GuruRaj_Frontend Developer Resume.pdf'),(64,0,'2025-06-23 11:52:06','/opt/jobformOfficers/jimages/OP20250004/(Signature)_GuruRaj_Frontend Developer Resume.pdf','2025-06-23 11:52:06','GuruRaj_Frontend Developer Resume.pdf'),(65,0,'2025-06-23 11:52:06','/opt/jobformOfficers/jimages/OP20250004/(SSLC MarksSheet)_GuruRaj_Frontend Developer Resume.pdf','2025-06-23 11:52:06','GuruRaj_Frontend Developer Resume.pdf'),(66,0,'2025-06-23 11:52:06','/opt/jobformOfficers/jimages/OP20250004/(Bachelors MarksSheet)_GuruRaj_Frontend Developer Resume.pdf','2025-06-23 11:52:06','GuruRaj_Frontend Developer Resume.pdf'),(67,0,'2025-06-23 11:52:07','/opt/jobformOfficers/jimages/OP20250004/(Bachelors MarksSheet PDC)_Internship_Certificate.docx','2025-06-23 11:52:07','Internship_Certificate.docx'),(68,0,'2025-06-23 11:52:07','/opt/jobformOfficers/jimages/OP20250004/(Master MarksSheet)_GuruRaj_Frontend Developer Resume.pdf','2025-06-23 11:52:07','GuruRaj_Frontend Developer Resume.pdf'),(69,0,'2025-06-23 11:52:07','/opt/jobformOfficers/jimages/OP20250004/(Master MarksSheet PDC)_Gururaj Kualkarni-offer letter 11.docx','2025-06-23 11:52:07','Gururaj Kualkarni-offer letter 11.docx'),(70,0,'2025-06-23 11:52:07','/opt/jobformOfficers/jimages/OP20250004/(PhD Certificate)_Gururaj Kualkarni-offer letter 11.docx','2025-06-23 11:52:07','Gururaj Kualkarni-offer letter 11.docx'),(71,0,'2025-06-23 11:52:07','/opt/jobformOfficers/jimages/OP20250004/(PhD Certificate PDC)_GuruRaj_Frontend Developer Resume.pdf','2025-06-23 11:52:07','GuruRaj_Frontend Developer Resume.pdf'),(72,0,'2025-06-23 11:52:07','/opt/jobformOfficers/jimages/OP20250004/(other Degree Certificate)_GuruRaj_Frontend Developer Resume.pdf','2025-06-23 11:52:07','GuruRaj_Frontend Developer Resume.pdf'),(73,0,'2025-06-23 11:52:07','/opt/jobformOfficers/jimages/OP20250004/(Experience Certificate)_GuruRaj_Frontend Developer Resume.pdf','2025-06-23 11:52:07','GuruRaj_Frontend Developer Resume.pdf'),(74,0,'2025-06-23 11:52:07','/opt/jobformOfficers/jimages/OP20250004/(Exposure of conducting)_GuruRaj_Frontend Developer Resume.pdf','2025-06-23 11:52:07','GuruRaj_Frontend Developer Resume.pdf'),(75,0,'2025-06-23 11:52:07','/opt/jobformOfficers/jimages/OP20250004/( Research  Extension Publications)_Gururaj Kualkarni-offer letter 11.docx','2025-06-23 11:52:07','Gururaj Kualkarni-offer letter 11.docx'),(76,0,'2025-06-23 11:52:07','/opt/jobformOfficers/jimages/OP20250004/(Out Station Service)_GuruRaj_Frontend Developer Resume.pdf','2025-06-23 11:52:07','GuruRaj_Frontend Developer Resume.pdf'),(77,0,'2025-06-23 11:52:07','/opt/jobformOfficers/jimages/OP20250004/(Medals  Awards  Recognition)_GuruRaj_Frontend Developer Resume.pdf','2025-06-23 11:52:07','GuruRaj_Frontend Developer Resume.pdf'),(78,0,'2025-06-23 11:52:07','/opt/jobformOfficers/jimages/OP20250004/(Special Attainment)_GuruRaj_Frontend Developer Resume.pdf','2025-06-23 11:52:07','GuruRaj_Frontend Developer Resume.pdf'),(79,0,'2025-06-23 11:52:07','/opt/jobformOfficers/jimages/OP20250004/(International Exposure)_GuruRaj_Frontend Developer Resume.pdf','2025-06-23 11:52:07','GuruRaj_Frontend Developer Resume.pdf'),(80,0,'2025-06-23 11:52:07','/opt/jobformOfficers/jimages/OP20250004/(Languages Known)_kabil.webp','2025-06-23 11:52:07','kabil.webp'),(81,0,'2025-06-23 11:52:07','/opt/jobformOfficers/jimages/OP20250004/(Reference)_kabil.webp','2025-06-23 11:52:07','kabil.webp'),(82,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(Picture)_GuruRaj_Frontend Developer Resume.pdf','2025-06-26 11:01:32','GuruRaj_Frontend Developer Resume.pdf'),(83,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(Signature)_GuruRaj_Frontend Developer Resume.pdf','2025-06-26 11:01:32','GuruRaj_Frontend Developer Resume.pdf'),(84,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(SSLC MarksSheet)_Gururaj Kualkarni-offer letter 11.docx','2025-06-26 11:01:32','Gururaj Kualkarni-offer letter 11.docx'),(85,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(Bachelors MarksSheet)_Gururaj Kualkarni-offer letter 11.docx','2025-06-26 11:01:32','Gururaj Kualkarni-offer letter 11.docx'),(86,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(Bachelors MarksSheet PDC)_Gururaj Kualkarni-offer letter 11.docx','2025-06-26 11:01:32','Gururaj Kualkarni-offer letter 11.docx'),(87,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(Master MarksSheet)_Gururaj Kualkarni-offer letter 11.docx','2025-06-26 11:01:32','Gururaj Kualkarni-offer letter 11.docx'),(88,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(Master MarksSheet PDC)_Gururaj Kualkarni-offer letter 11.docx','2025-06-26 11:01:32','Gururaj Kualkarni-offer letter 11.docx'),(89,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(PhD Certificate)_GuruRaj_Frontend Developer Resume.pdf','2025-06-26 11:01:32','GuruRaj_Frontend Developer Resume.pdf'),(90,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(PhD Certificate PDC)_Gururaj Kualkarni-offer letter 11.docx','2025-06-26 11:01:32','Gururaj Kualkarni-offer letter 11.docx'),(91,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(other Degree Certificate)_GuruRaj_Frontend Developer Resume.pdf','2025-06-26 11:01:32','GuruRaj_Frontend Developer Resume.pdf'),(92,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(Experience Certificate)_GuruRaj_Frontend Developer Resume.pdf','2025-06-26 11:01:32','GuruRaj_Frontend Developer Resume.pdf'),(93,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(Externally funded Projects)_Gururaj Kualkarni-offer letter 11.docx','2025-06-26 11:01:32','Gururaj Kualkarni-offer letter 11.docx'),(94,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(Exposure of conducting)_GuruRaj_Frontend Developer Resume.pdf','2025-06-26 11:01:32','GuruRaj_Frontend Developer Resume.pdf'),(95,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/( Research  Extension Publications)_Gururaj Kualkarni-offer letter 11.docx','2025-06-26 11:01:32','Gururaj Kualkarni-offer letter 11.docx'),(96,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(Out Station Service)_GuruRaj_Frontend Developer Resume.pdf','2025-06-26 11:01:32','GuruRaj_Frontend Developer Resume.pdf'),(97,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(Medals  Awards  Recognition)_Gururaj Kualkarni-offer letter 11.docx','2025-06-26 11:01:32','Gururaj Kualkarni-offer letter 11.docx'),(98,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(Special Attainment)_GuruRaj_Frontend Developer Resume.pdf','2025-06-26 11:01:32','GuruRaj_Frontend Developer Resume.pdf'),(99,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(International Exposure)_Gururaj Kualkarni-offer letter 11.docx','2025-06-26 11:01:32','Gururaj Kualkarni-offer letter 11.docx'),(100,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(Languages Known)_Gururaj Kualkarni-offer letter 11.docx','2025-06-26 11:01:32','Gururaj Kualkarni-offer letter 11.docx'),(101,0,'2025-06-26 11:01:32','/opt/jobformOfficers/jimages/OP20250006/(Reference)_GuruRaj_Frontend Developer Resume.pdf','2025-06-26 11:01:32','GuruRaj_Frontend Developer Resume.pdf');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intenational_exposure`
--

DROP TABLE IF EXISTS `intenational_exposure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intenational_exposure` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `country_visited` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `purpose_of_visit` varchar(255) DEFAULT NULL,
  `visited_from` varchar(255) DEFAULT NULL,
  `visited_to` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intenational_exposure`
--

LOCK TABLES `intenational_exposure` WRITE;
/*!40000 ALTER TABLE `intenational_exposure` DISABLE KEYS */;
INSERT INTO `intenational_exposure` VALUES (1,0,'fhfhfgh','4','gh','02/02/2022','02/02/2020'),(2,0,'sdfsdf','3','sdfsdf','02/02/2020','02/02/2002'),(3,0,'fghgfh','5','fghfghfg','02/02/2020','02/02/2020'),(4,0,'dgfdgd','5','dfgdg','02/02/2020','02/02/2020'),(5,0,'dgdgdfg','4','dgdfgdfg','02/02/2020','02/02/2020');
/*!40000 ALTER TABLE `intenational_exposure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `examinationpassed` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `reading` varchar(255) DEFAULT NULL,
  `speaking` varchar(255) DEFAULT NULL,
  `writing` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,0,'fghfh','fghgfh','Yes','Yes','Yes'),(2,0,'sdfsdf','sdfsdf','Yes','Yes','Yes'),(3,0,'fghfgh','fhfhfh','Yes','Yes','Yes'),(4,0,'dfgdfg','dgfdf','Yes','Yes','Yes'),(5,0,'dfgdfdf','dfdfgdg','Yes','Yes','Yes');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_degrees`
--

DROP TABLE IF EXISTS `other_degrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `other_degrees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `additional_type` varchar(255) DEFAULT NULL,
  `board_universityother_diploma` varchar(255) DEFAULT NULL,
  `nameof_degree` varchar(255) DEFAULT NULL,
  `other_diploma` varchar(255) DEFAULT NULL,
  `other_diplomayear` varchar(255) DEFAULT NULL,
  `percentageother_diploma` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_degrees`
--

LOCK TABLES `other_degrees` WRITE;
/*!40000 ALTER TABLE `other_degrees` DISABLE KEYS */;
INSERT INTO `other_degrees` VALUES (1,0,'Higher Academic Training(Above 21 day\'s)','dgdfg','fdgdgfdg','dfgfdg','02/02/2020','44'),(2,0,'Higher Academic Training(Above 21 day\'s)','dfgdf','dgdfgdg','345345','02/02/2022','44'),(3,0,'Diploma','dfgdfg','dfgdg','434343','02/02/2022','44'),(4,0,'Certificate Course','dfgdfgdfg','fgdfgdg','43334','02/02/2022','44'),(5,0,'PG Diploma','dfgdfgd','dfgfdgdfg','433443','02/02/2020','44');
/*!40000 ALTER TABLE `other_degrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outstation_service`
--

DROP TABLE IF EXISTS `outstation_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outstation_service` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `addressplace` varchar(255) DEFAULT NULL,
  `class_city` varchar(255) DEFAULT NULL,
  `collage_institutes` varchar(255) DEFAULT NULL,
  `service_from` varchar(255) DEFAULT NULL,
  `service_to` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outstation_service`
--

LOCK TABLES `outstation_service` WRITE;
/*!40000 ALTER TABLE `outstation_service` DISABLE KEYS */;
INSERT INTO `outstation_service` VALUES (1,0,'fghgfh','fghfgh','fhhfh','02/02/2020','02/02/2020'),(2,0,'sdfsf','sdfdsf','sdfsdf','02/02/2020','02/02/2020'),(3,0,'sdfsf','fghfgh','sdfsdf','02/02/2022','02/02/2022'),(4,0,'dfgdfg','fdgfdgdfg','ddfgfdg','02/02/2020','02/02/2022'),(5,0,'dfgdgdg','dfgd','dfgfdgd','02/02/2020','02/02/2020');
/*!40000 ALTER TABLE `outstation_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patent`
--

DROP TABLE IF EXISTS `patent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `details1` varchar(255) DEFAULT NULL,
  `year1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent`
--

LOCK TABLES `patent` WRITE;
/*!40000 ALTER TABLE `patent` DISABLE KEYS */;
/*!40000 ALTER TABLE `patent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_info`
--

DROP TABLE IF EXISTS `payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `bank_ref_no` varchar(255) DEFAULT NULL,
  `createddate` datetime NOT NULL,
  `discription` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `paymentrequest_id` varchar(255) DEFAULT NULL,
  `paymethod` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `terms` bit(1) NOT NULL,
  `totalamount` varchar(255) DEFAULT NULL,
  `transaction_date` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_info`
--

LOCK TABLES `payment_info` WRITE;
/*!40000 ALTER TABLE `payment_info` DISABLE KEYS */;
INSERT INTO `payment_info` VALUES (1,0,'1b673784f38484f076d17a2938f41be1','2025-06-16 12:35:00','Succesfully done payment','test','S2506160746J7Y',NULL,NULL,'8574747474','success','\0','1.0','2025-06-16 07:06:04','56154746','1'),(2,0,NULL,'2025-06-19 12:21:25',NULL,NULL,'45646ertrete','erte53453',NULL,NULL,'success','','500',NULL,'45435dsfds','fhfgh'),(3,0,'09d732a6c4460f040ac220c1aaecee12','2025-06-19 12:31:23','Succesfully done payment','C','S2506190746P8W',NULL,NULL,'9448334567','success','\0','1.0','2025-06-19 07:02:27','13581886','3'),(4,0,'7a971345c9b1a2bd94b43e4f2008cf05','2025-06-23 11:54:58','Succesfully done payment','FHHHFGHF','S2506230746TUU',NULL,NULL,'9879879879','success','\0','1.0','2025-06-23 06:26:03','43117370','4'),(5,0,'77eb6ef19a6153d7ca8843748e03d2f1','2025-06-26 11:04:33','Succesfully done payment','dfgdgdg','S25062607472C6',NULL,NULL,'8798897787','success','\0','1.0','2025-06-26 05:35:41','14004755','6');
/*!40000 ALTER TABLE `payment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scientific_publication`
--

DROP TABLE IF EXISTS `scientific_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scientific_publication` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `above_three_authors` varchar(255) DEFAULT NULL,
  `levels` varchar(255) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `three_authors` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scientific_publication`
--

LOCK TABLES `scientific_publication` WRITE;
/*!40000 ALTER TABLE `scientific_publication` DISABLE KEYS */;
INSERT INTO `scientific_publication` VALUES (1,0,'5','International level','C) Full length papers presented & published in Seminar /Symposia / Conference proceedings','5'),(2,0,'3','International level','B) Research Notes/ Abstracts published in Journals / Seminars / Symposia / Conference','3'),(3,0,'3','International level','C) Full length papers presented & published in Seminar /Symposia / Conference proceedings','3'),(4,0,'6',NULL,'C) Full length papers presented & published in Seminar /Symposia / Conference proceedings','fghfgh'),(5,0,'4','International level','D) Short communications presented & published in Seminar /Symposia / Conference','4');
/*!40000 ALTER TABLE `scientific_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_role`
--

DROP TABLE IF EXISTS `sec_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `authority` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_oah023x2ltqw09mdue7w0mcxb` (`authority`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_role`
--

LOCK TABLES `sec_role` WRITE;
/*!40000 ALTER TABLE `sec_role` DISABLE KEYS */;
INSERT INTO `sec_role` VALUES (1,0,'ROLE_SUPERADMIN'),(2,0,'ROLE_ADMIN'),(3,0,'ROLE_USER'),(4,0,'ROLE_COMMANUSERS');
/*!40000 ALTER TABLE `sec_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user`
--

DROP TABLE IF EXISTS `sec_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `account_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `admin_id_id` bigint(20) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `comman_users_id_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_expired` bit(1) NOT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `profile_pic_id` bigint(20) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5ctbdrlf3eismye20vsdtk8w8` (`username`),
  KEY `FK_tlddqljigbpjwdd3nw1rcr9ge` (`admin_id_id`),
  KEY `FK_r7q66xerm6r1mafg6cbnslwy1` (`comman_users_id_id`),
  KEY `FK_2qmct013ebecl50p8wswtj6ln` (`profile_pic_id`),
  CONSTRAINT `FK_2qmct013ebecl50p8wswtj6ln` FOREIGN KEY (`profile_pic_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_r7q66xerm6r1mafg6cbnslwy1` FOREIGN KEY (`comman_users_id_id`) REFERENCES `comman_users` (`id`),
  CONSTRAINT `FK_tlddqljigbpjwdd3nw1rcr9ge` FOREIGN KEY (`admin_id_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user`
--

LOCK TABLES `sec_user` WRITE;
/*!40000 ALTER TABLE `sec_user` DISABLE KEYS */;
INSERT INTO `sec_user` VALUES (1,0,'\0','\0',NULL,NULL,NULL,NULL,'','$2a$10$VjKzcaQzuXQxqTieL.ltdukS5lOwrwX0eigM41r2CwvMtkX/u8zte','\0',NULL,NULL,NULL,'superadmin'),(2,0,'\0','\0',NULL,NULL,NULL,NULL,'','$2a$10$PpaJV.b2aEOxqzj8KzrYReHVTfBmiXBRQxjXKQi5Odgaa.4gNDp2G','\0',NULL,NULL,NULL,'admin'),(3,0,'\0','\0',NULL,NULL,NULL,NULL,'','$2a$10$5Ioszd02DsODEGS7pDvF0u6AM7MPZo5eUTR9bFup3XWb/qSTlOKE6','\0',NULL,NULL,NULL,'user'),(4,0,'\0','\0',NULL,NULL,NULL,NULL,'','$2a$10$YseDD891YKuR7cvuVDOZCum6yAV/jyNVdKMiZT4/RvJojdDHfuFpW','\0',NULL,NULL,NULL,'commanusers'),(5,0,'\0','\0',NULL,'dgdg',1,'test@gmail.com','','$2a$10$JY3/.BbHUpe03XFdq1EESO9rWiOqy1ltcvkJsO1oC6CoGyS7UNgdi','\0',NULL,NULL,'dfdfg','demo'),(6,0,'\0','\0',1,'bidar',NULL,NULL,'','$2a$10$flV6aqufHWtBTYXNZm9S1ud/059Vz.tGwX6lMzVpnVIdXlRwN5Faa','\0',NULL,NULL,'Karnataka','admin2');
/*!40000 ALTER TABLE `sec_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_sec_role`
--

DROP TABLE IF EXISTS `sec_user_sec_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_sec_role` (
  `sec_user_id` bigint(20) NOT NULL,
  `sec_role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`sec_user_id`,`sec_role_id`),
  KEY `FK_bshvqhdx8h9mb4rrbo1ahnp7q` (`sec_role_id`),
  CONSTRAINT `FK_bshvqhdx8h9mb4rrbo1ahnp7q` FOREIGN KEY (`sec_role_id`) REFERENCES `sec_role` (`id`),
  CONSTRAINT `FK_f1eew3u65ajs3e50xvacwgron` FOREIGN KEY (`sec_user_id`) REFERENCES `sec_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_sec_role`
--

LOCK TABLES `sec_user_sec_role` WRITE;
/*!40000 ALTER TABLE `sec_user_sec_role` DISABLE KEYS */;
INSERT INTO `sec_user_sec_role` VALUES (1,1),(2,2),(6,2),(3,3),(4,4),(5,4);
/*!40000 ALTER TABLE `sec_user_sec_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_attainment`
--

DROP TABLE IF EXISTS `special_attainment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `special_attainment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `details` varchar(255) DEFAULT NULL,
  `special_attainment` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_attainment`
--

LOCK TABLES `special_attainment` WRITE;
/*!40000 ALTER TABLE `special_attainment` DISABLE KEYS */;
INSERT INTO `special_attainment` VALUES (1,0,'fhfhfh','D) Chairman of International Conference Session,','5'),(2,0,'sdfdsf','H) Institute Management Committee/ Research Council/Extension Council of other Universities,','3'),(3,0,'fghgfh','E) Members of Academic Council/Governing Body of other Universities/institutes,','45'),(4,0,'fghfh','I)Editorial Board of National/International Journals,','5'),(5,0,'dfgdfgdg','J) Technology released included in Package of Practices,','4');
/*!40000 ALTER TABLE `special_attainment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_awards`
--

DROP TABLE IF EXISTS `special_awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `special_awards` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `individualawards` varchar(255) DEFAULT NULL,
  `memberawards` varchar(255) DEFAULT NULL,
  `noof_awards` varchar(255) DEFAULT NULL,
  `particulars_awards` varchar(255) DEFAULT NULL,
  `teamaward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_awards`
--

LOCK TABLES `special_awards` WRITE;
/*!40000 ALTER TABLE `special_awards` DISABLE KEYS */;
INSERT INTO `special_awards` VALUES (1,0,'Yes','Leader','International','fghfgh','Yes'),(2,0,'Yes','Leader','International','dsfdsfsf','Yes'),(3,0,'Yes','Leader','National','fghgfh','Yes'),(4,0,'Yes','Leader','National','fhfhfd','Yes'),(5,0,'Yes','Leader','International','ddfdf','Yes');
/*!40000 ALTER TABLE `special_awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercreation`
--

DROP TABLE IF EXISTS `usercreation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usercreation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `admin_id_id` bigint(20) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `profile_pic_id` bigint(20) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_himob4q3c7in2ggs85e9b2jnx` (`address_id`),
  KEY `FK_qm1i2yctq65xj6aubh640wv1e` (`admin_id_id`),
  KEY `FK_13bxlafo36qgwolf7vslofynw` (`profile_pic_id`),
  KEY `FK_je7p1526dv5c1ulpukgyiwit3` (`user_id_id`),
  CONSTRAINT `FK_13bxlafo36qgwolf7vslofynw` FOREIGN KEY (`profile_pic_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_himob4q3c7in2ggs85e9b2jnx` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FK_je7p1526dv5c1ulpukgyiwit3` FOREIGN KEY (`user_id_id`) REFERENCES `sec_user` (`id`),
  CONSTRAINT `FK_qm1i2yctq65xj6aubh640wv1e` FOREIGN KEY (`admin_id_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercreation`
--

LOCK TABLES `usercreation` WRITE;
/*!40000 ALTER TABLE `usercreation` DISABLE KEYS */;
/*!40000 ALTER TABLE `usercreation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workshops`
--

DROP TABLE IF EXISTS `workshops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workshops` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `ass_leader_director` varchar(255) DEFAULT NULL,
  `co_director` varchar(255) DEFAULT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `eventparticipated` varchar(255) DEFAULT NULL,
  `leader_director` varchar(255) DEFAULT NULL,
  `level3` varchar(255) DEFAULT NULL,
  `type10` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workshops`
--

LOCK TABLES `workshops` WRITE;
/*!40000 ALTER TABLE `workshops` DISABLE KEYS */;
INSERT INTO `workshops` VALUES (1,0,'fghfh','fhfgh','gfhfh','fhfh','fghfh','International','Winter Institute'),(2,0,'fsdfdsf','sdfdsfds','sdfsdf','3','sdfsdf','International','Matsyamela'),(3,0,'fsdfdsf','sdfdsfds','sdfsdf','3','sdfsdf','International','Kukkatamela'),(4,0,'fgh','fghfgh','fhfh','fhfhfh','fhfgh','International','Kukkatamela'),(5,0,'dfgdg','dgdfgdg','dfgfdgf','dfgdg','dfgdfg','International','Training Programmes');
/*!40000 ALTER TABLE `workshops` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-26 12:47:59
