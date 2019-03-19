-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: fsgw
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

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
-- Table structure for table `app_order`
--

DROP TABLE IF EXISTS `app_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` datetime(6) NOT NULL,
  `updatetime` datetime(6) NOT NULL,
  `status` int(11) NOT NULL,
  `identifier` varchar(256) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_order_user_id_f25a9fc4_fk_user_id` (`user_id`),
  CONSTRAINT `app_order_user_id_f25a9fc4_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_order`
--

LOCK TABLES `app_order` WRITE;
/*!40000 ALTER TABLE `app_order` DISABLE KEYS */;
INSERT INTO `app_order` VALUES (1,'2019-03-17 13:51:38.398986','2019-03-17 13:51:38.399558',0,'1552830698.39459638424',6),(2,'2019-03-17 13:52:21.411347','2019-03-17 13:52:21.411464',1,'1552830741.4102988287',6),(3,'2019-03-17 13:52:25.120413','2019-03-17 13:52:25.120535',2,'1552830745.11751376765',6),(4,'2019-03-17 13:52:26.054499','2019-03-17 13:52:26.054790',3,'1552830746.05293774644',6),(5,'2019-03-17 13:52:26.801040','2019-03-17 13:52:26.801159',4,'1552830746.79964858870',6),(6,'2019-03-17 13:52:28.138492','2019-03-17 13:52:28.138768',0,'1552830748.13705097811',6),(7,'2019-03-17 13:53:12.812559','2019-03-17 13:53:12.812685',0,'1552830792.80991485842',6),(8,'2019-03-17 13:53:34.220752','2019-03-17 13:53:34.220867',0,'1552830814.21940647024',6),(9,'2019-03-17 13:54:15.847443','2019-03-17 13:54:15.847564',0,'1552830855.8461228424',6),(10,'2019-03-17 13:55:09.172533','2019-03-17 13:55:09.173060',0,'1552830909.16911279524',6),(11,'2019-03-17 13:55:10.711126','2019-03-17 13:55:10.711267',0,'1552830910.70997762078',6),(12,'2019-03-17 13:55:50.052310','2019-03-17 13:55:50.052428',0,'1552830950.05056762224',6),(13,'2019-03-17 13:57:04.757956','2019-03-17 13:57:04.758099',0,'1552831024.75690229990',6),(14,'2019-03-17 13:57:18.395677','2019-03-17 13:57:18.395869',0,'1552831038.39301289042',6),(15,'2019-03-17 13:57:42.873714','2019-03-17 13:57:42.873845',0,'1552831062.8655594090',6),(16,'2019-03-17 13:58:58.968895','2019-03-17 13:58:58.968996',0,'1552831138.96799616770',6),(17,'2019-03-17 13:59:00.055602','2019-03-17 13:59:00.055714',0,'1552831140.05454133096',6),(18,'2019-03-17 13:59:52.328854','2019-03-17 13:59:52.329098',0,'1552831192.32267269563',6),(19,'2019-03-17 14:00:21.747636','2019-03-17 14:00:21.747757',0,'1552831221.74541623053',6),(20,'2019-03-17 14:00:44.794378','2019-03-17 14:00:44.794470',0,'1552831244.79354955444',6),(21,'2019-03-17 14:01:12.347836','2019-03-17 14:01:12.347956',0,'1552831272.34580452540',6),(22,'2019-03-17 14:04:12.194270','2019-03-17 14:04:12.194373',0,'1552831452.1932111138',6),(23,'2019-03-17 14:04:25.271231','2019-03-17 14:04:25.271399',0,'1552831465.2688718318',6),(24,'2019-03-17 14:04:42.173796','2019-03-17 14:04:42.173962',0,'1552831482.171179453',6),(25,'2019-03-17 14:16:57.437549','2019-03-17 14:16:57.437668',0,'1552832217.43366558562',6),(26,'2019-03-17 14:31:34.078180','2019-03-17 14:31:34.078295',0,'1552833094.0766828497',6),(27,'2019-03-17 14:39:21.813592','2019-03-17 14:39:21.813713',0,'1552833561.81163128214',6),(28,'2019-03-17 15:27:47.935616','2019-03-17 15:27:47.935737',0,'1552836467.93399487645',6),(29,'2019-03-17 15:38:28.585094','2019-03-17 15:38:28.585213',0,'1552837108.5831768399',18),(30,'2019-03-18 01:38:20.196757','2019-03-18 01:38:20.196883',0,'1552873100.19398055250',3),(31,'2019-03-18 03:07:07.553341','2019-03-18 03:07:07.553494',0,'1552878427.55192458816',3),(32,'2019-03-18 03:07:28.782902','2019-03-18 03:07:28.783019',0,'1552878448.78147361209',3),(33,'2019-03-18 03:08:09.176153','2019-03-18 03:08:09.176267',0,'1552878489.17474849715',3),(34,'2019-03-18 03:20:24.286056','2019-03-18 03:20:24.286224',0,'1552879224.28438858745',3),(35,'2019-03-18 03:21:25.591072','2019-03-18 03:21:25.591190',0,'1552879285.58764128901',3),(36,'2019-03-18 07:15:33.236819','2019-03-18 07:15:33.236937',0,'1552893333.2348041582',27),(37,'2019-03-18 07:19:20.078609','2019-03-18 07:19:20.078734',0,'1552893560.05336024381',27),(38,'2019-03-18 07:19:53.202828','2019-03-18 07:19:53.203039',0,'1552893593.19809271993',27),(39,'2019-03-18 07:20:05.091128','2019-03-18 07:20:05.091232',0,'1552893605.09014448581',27),(40,'2019-03-18 07:22:24.138144','2019-03-18 07:22:24.138263',0,'1552893744.13703232495',27),(41,'2019-03-18 07:23:10.761280','2019-03-18 07:23:10.761451',0,'1552893790.75683719854',27),(42,'2019-03-18 07:24:39.641435','2019-03-18 07:24:39.641522',0,'1552893879.64057232520',27),(43,'2019-03-18 07:24:52.942616','2019-03-18 07:24:52.942890',0,'1552893892.92636163347',27),(44,'2019-03-18 07:28:02.063156','2019-03-18 07:28:02.063268',0,'1552894082.06199653517',27),(45,'2019-03-18 07:28:33.079956','2019-03-18 07:28:33.080051',0,'1552894113.07863551299',27),(46,'2019-03-18 07:43:22.867495','2019-03-18 07:43:22.867556',0,'1552895002.866717063',3),(47,'2019-03-18 07:43:54.207855','2019-03-18 07:43:54.208069',0,'1552895034.20606573482',3),(48,'2019-03-18 07:44:07.481478','2019-03-18 07:44:07.481640',0,'1552895047.47751861888',3),(49,'2019-03-18 07:45:08.553980','2019-03-18 07:45:08.554139',0,'1552895108.55216367951',3),(50,'2019-03-18 07:45:47.442355','2019-03-18 07:45:47.442473',0,'1552895147.44089226938',3),(51,'2019-03-18 07:46:14.063659','2019-03-18 07:46:14.063777',0,'1552895174.05927092778',3),(52,'2019-03-18 07:47:52.019593','2019-03-18 07:47:52.019716',0,'1552895272.01768288261',3),(53,'2019-03-18 07:48:15.034402','2019-03-18 07:48:15.034557',0,'1552895295.0320964671',3),(54,'2019-03-18 07:50:27.709749','2019-03-18 07:50:27.709867',0,'1552895427.70841536443',3),(55,'2019-03-18 07:50:46.243664','2019-03-18 07:50:46.243782',0,'1552895446.24254324396',3),(56,'2019-03-18 07:51:16.271006','2019-03-18 07:51:16.271066',0,'1552895476.27052386300',3),(57,'2019-03-18 07:52:16.217122','2019-03-18 07:52:16.217239',0,'1552895536.21614779250',3),(58,'2019-03-18 07:52:29.368585','2019-03-18 07:52:29.368744',0,'1552895549.36726958407',3),(59,'2019-03-18 07:52:39.586546','2019-03-18 07:52:39.586846',0,'1552895559.5855567896',3),(60,'2019-03-18 07:55:54.919496','2019-03-18 07:55:54.919648',0,'1552895754.91835077762',3),(61,'2019-03-18 08:01:35.337521','2019-03-18 08:01:35.337636',0,'1552896095.33649354563',3),(62,'2019-03-18 08:06:07.686524','2019-03-18 08:06:07.686644',0,'1552896367.66696244993',3),(63,'2019-03-18 08:06:58.425596','2019-03-18 08:06:58.425691',0,'1552896418.4225245846',3),(64,'2019-03-18 08:07:37.456961','2019-03-18 08:07:37.457077',0,'1552896457.45448041111',3),(65,'2019-03-18 08:08:56.611415','2019-03-18 08:08:56.611601',0,'1552896536.60330999487',3),(66,'2019-03-18 08:11:35.630614','2019-03-18 08:11:35.630728',0,'1552896695.6296044397',3),(67,'2019-03-18 08:11:48.202174','2019-03-18 08:11:48.202384',0,'1552896708.20070059206',3),(68,'2019-03-18 08:21:51.256307','2019-03-18 08:21:51.256426',0,'1552897311.25348199592',3),(69,'2019-03-18 08:47:12.357949','2019-03-18 08:47:12.358145',0,'1552898832.3566426729',3),(70,'2019-03-18 08:57:25.286135','2019-03-18 08:57:25.286274',0,'1552899445.28134567655',3),(71,'2019-03-18 09:00:43.176028','2019-03-18 09:00:43.176145',0,'1552899643.17486382696',3),(72,'2019-03-18 09:03:02.287838','2019-03-18 09:03:02.287993',0,'1552899782.28633147043',3),(73,'2019-03-18 09:03:14.425276','2019-03-18 09:03:14.425494',0,'1552899794.42357423484',3),(74,'2019-03-18 09:23:35.021303','2019-03-18 09:23:35.021660',0,'1552901015.01901225776',3),(75,'2019-03-18 09:23:35.048613','2019-03-18 09:23:35.048745',0,'1552901015.02627352411',3),(76,'2019-03-18 09:28:32.569910','2019-03-18 09:28:32.570001',0,'1552901312.56881261363',3),(77,'2019-03-18 09:51:26.554233','2019-03-18 09:51:26.554301',0,'1552902686.55354432780',3),(78,'2019-03-18 09:52:23.385827','2019-03-18 09:52:23.385938',0,'1552902743.3845697036',3),(79,'2019-03-18 09:52:23.470762','2019-03-18 09:52:23.470877',0,'1552902743.46970733922',3),(80,'2019-03-18 09:52:36.617043','2019-03-18 09:52:36.617242',0,'1552902756.61578254156',3),(81,'2019-03-18 09:55:07.947658','2019-03-18 09:55:07.947762',0,'1552902907.94660578960',3),(82,'2019-03-18 09:55:08.053425','2019-03-18 09:55:08.053526',0,'1552902908.0521829948',3),(83,'2019-03-18 09:59:39.973513','2019-03-18 09:59:39.974061',0,'1552903179.9712889918',3),(84,'2019-03-18 09:59:40.144622','2019-03-18 09:59:40.144756',0,'1552903180.1421724628',3),(85,'2019-03-18 10:00:31.954440','2019-03-18 10:00:31.954558',0,'1552903231.95319065418',3),(86,'2019-03-18 10:00:32.079960','2019-03-18 10:00:32.080086',0,'1552903232.07304059595',3),(87,'2019-03-18 10:01:08.169209','2019-03-18 10:01:08.169323',0,'1552903268.16758322214',3),(88,'2019-03-18 10:01:08.224735','2019-03-18 10:01:08.224855',0,'1552903268.2215959796',3),(89,'2019-03-18 10:03:14.695864','2019-03-18 10:03:14.695988',0,'1552903394.69281052439',3),(90,'2019-03-18 10:03:14.767377','2019-03-18 10:03:14.767575',0,'1552903394.76290231762',3),(91,'2019-03-18 10:07:09.268533','2019-03-18 10:07:09.268650',0,'1552903629.26378422099',3),(92,'2019-03-18 10:07:52.521517','2019-03-18 10:07:52.521627',0,'1552903672.51509127903',3),(93,'2019-03-18 10:11:42.755846','2019-03-18 10:11:42.756132',0,'1552903902.75440989066',3),(94,'2019-03-18 10:11:42.795462','2019-03-18 10:11:42.795583',0,'1552903902.78973674877',3),(95,'2019-03-18 10:12:45.259987','2019-03-18 10:12:45.260084',0,'1552903965.2559714471',3),(96,'2019-03-18 10:12:45.372204','2019-03-18 10:12:45.372294',0,'1552903965.35270452870',3),(97,'2019-03-18 10:14:25.194450','2019-03-18 10:14:25.194518',0,'1552904065.1936315256',3),(98,'2019-03-18 10:14:25.215866','2019-03-18 10:14:25.216073',0,'1552904065.1970413463',3),(99,'2019-03-18 10:43:52.652358','2019-03-18 10:43:52.652490',0,'1552905832.6504543672',3),(100,'2019-03-18 10:43:52.661897','2019-03-18 10:43:52.662015',0,'1552905832.66070158446',3),(101,'2019-03-18 11:08:15.785403','2019-03-18 11:08:15.785476',0,'1552907295.78411085213',3),(102,'2019-03-18 11:08:18.940292','2019-03-18 11:08:18.940499',0,'1552907298.93895443430',3),(103,'2019-03-18 11:08:23.333741','2019-03-18 11:08:23.333811',0,'1552907303.33246168233',3),(104,'2019-03-18 11:08:41.967302','2019-03-18 11:08:41.967421',0,'1552907321.96592127930',3),(105,'2019-03-18 11:12:08.437216','2019-03-18 11:12:08.437335',0,'1552907528.4354338445',3),(106,'2019-03-18 11:12:10.063517','2019-03-18 11:12:10.063693',0,'1552907530.06180486246',3),(107,'2019-03-18 11:12:11.420400','2019-03-18 11:12:11.420521',0,'1552907531.41822551571',3),(108,'2019-03-18 11:12:12.292135','2019-03-18 11:12:12.292256',0,'1552907532.28965078571',3),(109,'2019-03-18 11:12:12.567467','2019-03-18 11:12:12.567566',0,'1552907532.56649888734',3),(110,'2019-03-18 11:14:02.544517','2019-03-18 11:14:02.544609',0,'1552907642.5426655379',3),(111,'2019-03-18 11:14:05.346799','2019-03-18 11:14:05.347165',0,'1552907645.3379136790',3),(112,'2019-03-18 11:14:10.112397','2019-03-18 11:14:10.112513',0,'1552907650.11117173372',3),(113,'2019-03-18 11:14:24.224963','2019-03-18 11:14:24.225148',0,'1552907664.22168188391',3),(114,'2019-03-18 11:43:57.472099','2019-03-18 11:43:57.472225',0,'1552909437.47026823604',3),(115,'2019-03-18 11:44:43.984237','2019-03-18 11:44:43.984357',0,'1552909483.98283557237',3),(116,'2019-03-18 11:46:40.811192','2019-03-18 11:46:40.811313',0,'1552909600.80970383055',3),(117,'2019-03-18 11:46:48.404218','2019-03-18 11:46:48.404413',0,'1552909608.39755462998',3),(118,'2019-03-18 11:47:56.394338','2019-03-18 11:47:56.394499',0,'1552909676.39298927115',3),(119,'2019-03-18 11:49:42.481944','2019-03-18 11:49:42.482061',0,'1552909782.4711197086',3),(120,'2019-03-18 11:57:56.564363','2019-03-18 11:57:56.564483',0,'1552910276.56053767604',3),(121,'2019-03-18 16:01:21.192870','2019-03-18 16:01:21.192984',0,'1552924881.1915846127',3),(122,'2019-03-19 02:47:32.049874','2019-03-19 02:47:32.050006',0,'1552963652.04525785283',3);
/*!40000 ALTER TABLE `app_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_ordergoods`
--

DROP TABLE IF EXISTS `app_ordergoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_ordergoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_ordergoods_goods_id_b3c19f94_fk_goods_id` (`goods_id`),
  KEY `app_ordergoods_order_id_ef926487_fk_app_order_id` (`order_id`),
  CONSTRAINT `app_ordergoods_goods_id_b3c19f94_fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `app_ordergoods_order_id_ef926487_fk_app_order_id` FOREIGN KEY (`order_id`) REFERENCES `app_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ordergoods`
--

LOCK TABLES `app_ordergoods` WRITE;
/*!40000 ALTER TABLE `app_ordergoods` DISABLE KEYS */;
INSERT INTO `app_ordergoods` VALUES (1,0,6,1),(2,1,3,1),(3,0,5,1),(4,-1,2,1),(5,10,2,9),(6,1,1,12),(7,3,1,15),(8,2,2,19),(9,1,1,21),(10,1,2,24),(11,1,1,25),(12,1,7,26),(13,1,2,27),(14,1,1,28),(15,1,2,28),(16,2,1,29),(17,5,1,30),(18,3,2,30),(19,0,4,30),(20,2,2,31),(21,3,1,31),(22,3,8,31),(23,1,7,32),(24,1,7,33),(25,1,5,33),(26,10,1,34),(27,1,1,35),(28,2,1,36),(29,1,1,37),(30,1,1,38),(31,0,2,46),(32,3,3,46),(33,5,1,46),(34,1,2,50),(35,1,2,51),(36,1,2,54),(37,3,2,55),(38,1,2,56),(39,2,2,58),(40,1,2,59),(41,1,2,60),(42,1,2,61),(43,1,2,62),(44,1,1,62),(45,1,1,64),(46,1,2,64),(47,5,1,65),(48,2,2,65),(49,1,2,66),(50,1,2,66),(51,1,2,68),(52,1,2,69),(53,1,1,70),(54,1,1,71),(55,1,1,72),(56,1,5,72),(57,1,4,73),(58,1,1,76),(59,1,1,78),(60,1,1,81),(61,1,1,83),(62,1,1,85),(63,1,1,87),(64,1,1,90),(65,3,2,94),(66,3,2,96),(67,3,2,97),(68,3,2,100),(69,3,2,102),(70,3,2,104),(71,1,1,105),(72,1,1,106),(73,1,1,107),(74,1,1,108),(75,1,1,109),(76,1,1,111),(77,1,1,113),(78,2,1,114),(79,1,1,115),(80,1,1,117),(81,1,1,118),(82,1,1,119),(83,1,1,120),(84,2,1,121),(85,2,2,121),(86,1,1,122),(87,1,2,122);
/*!40000 ALTER TABLE `app_ordergoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add bigwheel',7,'add_bigwheel'),(20,'Can change bigwheel',7,'change_bigwheel'),(21,'Can delete bigwheel',7,'delete_bigwheel'),(22,'Can add smwheel',8,'add_smwheel'),(23,'Can change smwheel',8,'change_smwheel'),(24,'Can delete smwheel',8,'delete_smwheel'),(25,'Can add user',9,'add_user'),(26,'Can change user',9,'change_user'),(27,'Can delete user',9,'delete_user'),(28,'Can add goods',10,'add_goods'),(29,'Can change goods',10,'change_goods'),(30,'Can delete goods',10,'delete_goods'),(31,'Can add cart',11,'add_cart'),(32,'Can change cart',11,'change_cart'),(33,'Can delete cart',11,'delete_cart'),(34,'Can add order',12,'add_order'),(35,'Can change order',12,'change_order'),(36,'Can delete order',12,'delete_order'),(37,'Can add order goods',13,'add_ordergoods'),(38,'Can change order goods',13,'change_ordergoods'),(39,'Can delete order goods',13,'delete_ordergoods'),(40,'Can add details',14,'add_details'),(41,'Can change details',14,'change_details'),(42,'Can delete details',14,'delete_details');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bigwheel`
--

DROP TABLE IF EXISTS `bigwheel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bigwheel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `trackid` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bigwheel`
--

LOCK TABLES `bigwheel` WRITE;
/*!40000 ALTER TABLE `bigwheel` DISABLE KEYS */;
INSERT INTO `bigwheel` VALUES (1,'/static/img/01.png','黄金珠宝','01'),(2,'/static/img/02.png','中秋白酒','02'),(4,'/static/img/04.png','秋尚新季','04'),(5,'/static/img/05.png','风尚购物','05');
/*!40000 ALTER TABLE `bigwheel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `isselect` tinyint(1) NOT NULL,
  `isdelete` tinyint(1) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_goods_id_a0c55193_fk_goods_id` (`goods_id`),
  KEY `cart_user_id_1361a739_fk_user_id` (`user_id`),
  CONSTRAINT `cart_goods_id_a0c55193_fk_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `cart_user_id_1361a739_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (8,0,1,0,1,16),(9,-1,1,0,2,16),(10,4,1,0,2,4),(11,2,1,0,1,4),(14,1,1,0,1,3);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deimg`
--

DROP TABLE IF EXISTS `deimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deimg1` varchar(256) NOT NULL,
  `deimg2` varchar(256) NOT NULL,
  `deimg3` varchar(256) NOT NULL,
  `deimg4` varchar(256) NOT NULL,
  `deimg5` varchar(256) NOT NULL,
  `deimg6` varchar(256) NOT NULL,
  `deimg7` varchar(256) NOT NULL,
  `productid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `deimg_productid_id_9b6dbd94_fk_goods_id` (`productid_id`),
  CONSTRAINT `deimg_productid_id_9b6dbd94_fk_goods_id` FOREIGN KEY (`productid_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deimg`
--

LOCK TABLES `deimg` WRITE;
/*!40000 ALTER TABLE `deimg` DISABLE KEYS */;
INSERT INTO `deimg` VALUES (1,'/static/img/03/01.png','/static/img/03/02.png','/static/img/03/03.png','/static/img/03/04.png','/static/img/03/05.png','/static/img/03/06.png','/static/img/03/07.png',1),(2,'/static/img/03/01.png','/static/img/03/02.png','/static/img/03/03.png','/static/img/03/04.png','/static/img/03/05.png','/static/img/03/06.png','/static/img/03/07.png',2),(3,'/static/img/03/01.png','/static/img/03/02.png','/static/img/03/03.png','/static/img/03/04.png','/static/img/03/05.png','/static/img/03/06.png','/static/img/03/07.png',3),(4,'/static/img/03/01.png','/static/img/03/02.png','/static/img/03/03.png','/static/img/03/04.png','/static/img/03/05.png','/static/img/03/06.png','/static/img/03/07.png',4),(5,'/static/img/03/01.png','/static/img/03/02.png','/static/img/03/03.png','/static/img/03/04.png','/static/img/03/05.png','/static/img/03/06.png','/static/img/03/07.png',5),(6,'/static/img/03/01.png','/static/img/03/02.png','/static/img/03/03.png','/static/img/03/04.png','/static/img/03/05.png','/static/img/03/06.png','/static/img/03/07.png',6),(7,'/static/img/03/01.png','/static/img/03/02.png','/static/img/03/03.png','/static/img/03/04.png','/static/img/03/05.png','/static/img/03/06.png','/static/img/03/07.png',7),(8,'/static/img/03/01.png','/static/img/03/02.png','/static/img/03/03.png','/static/img/03/04.png','/static/img/03/05.png','/static/img/03/06.png','/static/img/03/07.png',8);
/*!40000 ALTER TABLE `deimg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app','bigwheel'),(11,'app','cart'),(14,'app','details'),(10,'app','goods'),(12,'app','order'),(13,'app','ordergoods'),(8,'app','smwheel'),(9,'app','user'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-03-14 17:04:18.924398'),(2,'auth','0001_initial','2019-03-14 17:04:21.914551'),(3,'admin','0001_initial','2019-03-14 17:04:22.527475'),(4,'admin','0002_logentry_remove_auto_add','2019-03-14 17:04:22.649395'),(5,'app','0001_initial','2019-03-14 17:04:23.255219'),(6,'contenttypes','0002_remove_content_type_name','2019-03-14 17:04:23.633914'),(7,'auth','0002_alter_permission_name_max_length','2019-03-14 17:04:23.770196'),(8,'auth','0003_alter_user_email_max_length','2019-03-14 17:04:23.984904'),(9,'auth','0004_alter_user_username_opts','2019-03-14 17:04:24.068416'),(10,'auth','0005_alter_user_last_login_null','2019-03-14 17:04:24.242205'),(11,'auth','0006_require_contenttypes_0002','2019-03-14 17:04:24.251773'),(12,'auth','0007_alter_validators_add_error_messages','2019-03-14 17:04:24.290861'),(13,'auth','0008_alter_user_username_max_length','2019-03-14 17:04:24.407657'),(14,'sessions','0001_initial','2019-03-14 17:04:24.504919'),(15,'app','0002_user','2019-03-15 01:06:39.417557'),(16,'app','0003_goods','2019-03-15 09:28:16.161764'),(17,'app','0004_cart','2019-03-16 02:13:11.090328'),(18,'app','0005_order','2019-03-17 13:33:28.861353'),(19,'app','0006_ordergoods','2019-03-17 13:39:30.898209'),(20,'app','0007_details','2019-03-18 02:15:19.908848');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('27lq721jk1d78dnurn8hyb3vhh3ebjjw','NTIzYjNhMWJmMDc4MGZhNGNkY2Q3MDMxYmMxNzZmYWM4ODkxYjZmZDp7InRva2VuIjoiNzg5NmE3ZDMwNmRhNWJlOTExYjU5MTNiMDVlYzAwN2EifQ==','2019-04-02 02:54:13.895729'),('55nnw9ikwmvjb4uyiyrvrt4j60wofcew','MWE1ZTBjYjhkZmNmMDg1OTU2MTIwYzVlNmRkYTEyY2I3M2MyNDI2Yzp7InRva2VuIjoiYjU2MzIzOTcxYmE2YzIxZTcwOGUyNDEzNDllNjE0YTMifQ==','2019-03-31 15:37:59.630036'),('5e4oeazw9fg6isbwt0fton2j32unk096','NWViODIxZTQyZDAwOTdkZTJmZjZjYTE4NGFjNjY0Yjg4Y2M2YmY5Yzp7InRva2VuIjoiMTlmNmQxOTdlMjYwMGQ4MDliNWM5MGRjNzNkNzBkNjUifQ==','2019-04-02 01:02:36.556574'),('f3oeiyy3k536z7m1zz6d9nzflhsqahju','MWQxY2E4MWU0ZjQwZTY1ZDJjYTFkMDNlOWVkZTg4YzBlY2U0Y2M0Yzp7InRva2VuIjoiOWYzMjFjMmMxMjk4YmYxYjUwMTRmNjk2OGQ3MGU5MDgifQ==','2019-03-29 03:52:06.015552'),('w6nsrgxbvzoauv2oohr4fc9qallsst29','NTUyNjQ2ZTE1YjJhYmRhMDhhYmM2ZGNlZDZlNGI0ZWRhZTEyODM4MTp7InRva2VuIjoiNzIxMjBmZjgyZTE3NjcwYzg2NWIwZDg5OWEwOGFkNjIifQ==','2019-04-01 15:56:38.245865'),('xggr0tg2idnkaqfptk051fsf6dei6aag','MjU3YzlmYjk1NDYwOGRkMzFlZDdkMTg0YTk1Njg5MDIxODgwNTA4Mzp7InRva2VuIjoiYWE3YjY0NjQyODFhZmNmZTk5MWZiYzI4N2E4YjNjNjMifQ==','2019-03-30 04:07:10.200517'),('yk865aozez457e3al2afeyhk38hpvce3','OTEyMDc5NjFmZDY0OWI4MWY3YjY5ZTNhN2NhZDc5NjdmYTZiZTZjZjp7InRva2VuIjoiMTVjYzhjOGNlZWU3NzAyY2M3Y2EyZTQ4ZDI3ZTQ3NzAifQ==','2019-04-01 12:24:31.971763');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` varchar(10) NOT NULL,
  `productimg` varchar(200) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `jifen` int(11) NOT NULL,
  `productnum` int(11) NOT NULL,
  `pingjia` int(11) NOT NULL,
  `storenums` int(11) NOT NULL,
  `product` varchar(200) NOT NULL,
  `specifics` varchar(100) DEFAULT NULL,
  `categoryid` varchar(10) NOT NULL,
  `dealer` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `productid` (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'0001','/static/img/03/01.png','眼镜1',199,188,100,130,100,'马踏飞燕','###','0001','主品说明马踏飞燕太阳镜'),(2,'0002','/static/img/03/02.png','眼镜2',299,288,200,230,200,'马踏飞燕','###','0001','主品说明马踏飞燕太阳镜'),(3,'0003','/static/img/03/03.png','眼镜3',399,388,300,330,300,'马踏飞燕','###','0001','主品说明马踏飞燕太阳镜'),(4,'0004','/static/img/03/04.png','眼镜4',499,488,400,430,400,'马踏飞燕','###','0001','主品说明马踏飞燕太阳镜'),(5,'0005','/static/img/03/05.png','眼镜5',599,588,500,530,500,'马踏飞燕','###','0001','主品说明马踏飞燕太阳镜'),(6,'0006','/static/img/03/06.png','眼镜6',699,688,600,630,600,'马踏飞燕','###','0001','主品说明马踏飞燕太阳镜'),(7,'0007','/static/img/03/07.png','眼镜7',799,788,700,730,700,'马踏飞燕','###','0001','主品说明马踏飞燕太阳镜'),(8,'0008','/static/img/03/08.png','眼镜8',899,888,800,830,800,'马踏飞燕','###','0001','主品说明清凉一夏四件套');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smwheel`
--

DROP TABLE IF EXISTS `smwheel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smwheel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `trackid` varchar(10) NOT NULL,
  `price` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smwheel`
--

LOCK TABLES `smwheel` WRITE;
/*!40000 ALTER TABLE `smwheel` DISABLE KEYS */;
INSERT INTO `smwheel` VALUES (1,'/static/img/001.png','开成印花冰丝席清凉一夏套组','06','299'),(2,'/static/img/002.png','马踏飞燕多功能太阳镜','07','199');
/*!40000 ALTER TABLE `smwheel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tel` (`tel`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'15016294393','123456','123@qq.com','dc483e80a7a0bd9ef71d8cf973673924'),(4,'15016294394','123456','123@qq.com','dc483e80a7a0bd9ef71d8cf973673924'),(5,'15016294395','123456','123@qq.com','dc483e80a7a0bd9ef71d8cf973673924'),(6,'15016294396','admin','123@qq.com','dc483e80a7a0bd9ef71d8cf973673924'),(9,'15016294301','123456','123@qq.com','dc483e80a7a0bd9ef71d8cf973673924'),(10,'','','','d41d8cd98f00b204e9800998ecf8427e'),(12,'15016294302','123456','123@qq.com','dc483e80a7a0bd9ef71d8cf973673924'),(16,'15016294300','123456','123@qq.com','dc483e80a7a0bd9ef71d8cf973673924'),(17,'15016294304','AAABBB','123@qq.com','507f513353702b50c145d5b7d138095c'),(18,'15016294312','123456','123@qq.com','dc483e80a7a0bd9ef71d8cf973673924'),(24,'15016294311','123456','123@qq.com','dc483e80a7a0bd9ef71d8cf973673924'),(25,'15016294313','123456','123@qq.com','d41d8cd98f00b204e9800998ecf8427e'),(26,'15016294315','123456','123@qq.com','d41d8cd98f00b204e9800998ecf8427e'),(27,'15016294316','123456','123@qq.com','dc483e80a7a0bd9ef71d8cf973673924'),(28,'15016294322','','','d41d8cd98f00b204e9800998ecf8427e');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-19 11:15:47
