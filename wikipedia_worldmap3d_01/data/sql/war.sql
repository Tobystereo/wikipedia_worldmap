-- MySQL dump 10.13  Distrib 5.5.27, for Linux (x86_64)
--
-- Host: localhost    Database: location_db
-- ------------------------------------------------------
-- Server version	5.5.27-cll

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
-- Table structure for table `live_war`
--

DROP TABLE IF EXISTS `live_war`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_war` (
  `id` int(8) unsigned NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `type` varchar(64) NOT NULL,
  `title` varchar(255) NOT NULL,
  KEY `gc_from` (`id`),
  KEY `lat` (`lat`),
  KEY `lng` (`lng`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_war`
--

LOCK TABLES `live_war` WRITE;
/*!40000 ALTER TABLE `live_war` DISABLE KEYS */;
INSERT INTO `live_war` VALUES (103568,-22.6014,-47.8728,'','Águas de São Pedro'),(4503,34.5167,69.1333,'country','Afganistan'),(4526,24.65,46.7667,'country','Arabya Saudi'),(8821,36.7,3.21667,'country','Alherya'),(8822,-34.6,-58.3833,'country','Argentina'),(2927,42.5,1.51667,'country','Andorra'),(50912,48.5819,7.62778,'city','Achenheim'),(13389,43.95,4.817,'city','Avignon'),(30959,43.5311,5.45402,'city','Aix-en-Provence'),(45674,43.2908,5.57083,'city','Aubagne'),(50873,48.2464,-4.3153,'city','Argol, Finistère'),(50903,50.2347,3.21417,'city','Abancourt, Nord'),(65030,50.3347,3.30278,'city','Abscon'),(65056,50.2372,4.09389,'city','Aibes'),(8365,-18.9333,47.5167,'city','Antananarivo'),(13230,41.9267,8.73694,'city','Ajaccio'),(3478,52.5167,13.3833,'country','Alemanya'),(13290,44.2049,0.621153,'city','Agen'),(3572,41.3333,19.8,'country','Albanya'),(66956,50.463,2.129,'city','Azincourt'),(31230,55.4,43.8167,'','Arzamas'),(35002,41.4479,12.6291,'','Anzio'),(5989,23.7,90.35,'country','Bangladesh'),(9573,-15.75,-47.95,'country','Brasil'),(13259,44.8386,-0.578333,'city','Bordeaux'),(52663,48.3908,-4.48556,'city','Brest, Finistère'),(13176,46.2056,5.2289,'city','Bourg-en-Bresse'),(10707,-19.0333,-65.25,'','Bolivia'),(10707,-16.5,-68.15,'','Bolivia'),(10707,-17.8,-63.1667,'','Bolivia'),(78164,42.3,43.35,'','Batakan:Location map Georgia (country)'),(10511,43.6512,-79.3833,'','Batakan:Coord'),(10511,43.65,-79.38,'','Batakan:Coord'),(10511,43.4833,-79.3833,'','Batakan:Coord'),(10511,43.4844,-79.3833,'','Batakan:Coord'),(10511,43.4846,-79.3835,'','Batakan:Coord'),(10511,55.7522,37.6156,'','Batakan:Coord'),(10511,39.0981,-94.5873,'','Batakan:Coord'),(10511,55.7522,37.6156,'','Moscow'),(10511,-33.9167,18.4167,'','Batakan:Coord'),(10511,35,105,'','Batakan:Coord'),(10511,-22.9083,-43.2436,'','Batakan:Coord'),(10511,-22,-43,'','Batakan:Coord'),(10511,52.4667,-1.91667,'city','Batakan:Coord'),(20255,64.95,-19,'','Batakan:Location map Iceland'),(54922,46.25,2.2,'','Batakan:Location map Fransya'),(78154,24.25,45.1,'','Batakan:Location map Saudi Arabia'),(78161,-12.2,44.25,'','Batakan:Location map Comoros'),(78168,41.8,84.95,'','Batakan:Location map China Xinjiang'),(78183,-18.95,-174.95,'','Batakan:Location map Tonga'),(78499,-18.65,46.75,'','Batakan:Location map Madagascar'),(78502,-28.5,24.6,'','Batakan:Location map South Africa'),(85871,42.2,9.05,'','Batakan:Location map Fransya Corse'),(130066,43.6512,-79.3833,'','Batakan:Coord/doc'),(130066,43.65,-79.38,'','Batakan:Coord/doc'),(130066,43.4833,-79.3833,'','Batakan:Coord/doc'),(130066,43.4844,-79.3833,'','Batakan:Coord/doc'),(130066,43.4846,-79.3835,'','Batakan:Coord/doc'),(130066,55.7522,37.6156,'','Batakan:Coord/doc'),(130066,39.0981,-94.5873,'','Batakan:Coord/doc'),(130066,55.7522,37.6156,'','Moscow'),(130066,-33.9167,18.4167,'','Batakan:Coord/doc'),(130066,35,105,'','Batakan:Coord/doc'),(130066,-22.9083,-43.2436,'','Batakan:Coord/doc'),(130066,-22,-43,'','Batakan:Coord/doc'),(130066,52.4667,-1.91667,'city','Batakan:Coord/doc'),(153361,0.5,38,'','Batakan:Location map Kenya'),(54936,48.25,7.525,'','Batakan:Location map Fransya Alsace'),(62625,48.1,-3.075,'','Batakan:Location map Fransya Bretagne'),(64798,47.25,4.105,'','Batakan:Location map Fransya Bourgogne'),(66711,48.95,-0.475,'','Batakan:Location map Fransya Basse-Normandie'),(70320,48.63,2.5055,'','Batakan:Location map Fransya Île-de-France'),(78167,36,104,'','Batakan:Location map China'),(158135,41.35,12.6,'','Batakan:Location map Italy'),(158403,16,106.05,'','Batakan:Location map Vietnam'),(158501,0,0,'landmark','Batakan:Infobox historic site'),(78171,51.95,19.15,'','Batakan:Location map Polonya'),(8031,9.91667,-84.0667,'country','Costa Rica'),(8847,23.1333,-82.3833,'country','Cuba'),(14173,14.9167,-23.5167,'country','Cabo Verde'),(13411,4.9227,-52.3269,'city','Cayenne'),(5062,6.7,124.933,'city','Columbio, Sultan Kudarat'),(75397,43.8525,1.29278,'city','Canals, Tarn-et-Garonne'),(51724,48.8822,1.14083,'city','Corneuil'),(9004,41.8819,-87.6278,'city','Chicago'),(13346,48.0817,7.3556,'city','Colmar'),(35019,41.7467,12.6506,'','Castel Gandolfo'),(13234,47.2906,5.0428,'city','Dijon'),(19659,-29.8833,31.05,'city','Durban'),(70510,47.91,6.19778,'city','Dampvalley-Saint-Pancras'),(11930,9.03,38.74,'country','Etiyopya'),(5999,30.0333,31.2167,'country','Ehipto'),(6006,24.4667,54.3667,'country','Emiratos Arabes Unidos'),(2926,40.4333,-3.7,'country','Espanya'),(8511,38.8833,-77.0167,'country','Estados Unidos'),(3477,48.8567,2.35083,'country','Fransya'),(9363,43.7833,11.25,'','Florensya'),(3479,38,23.7167,'country','Gresya'),(9701,5.55,-0.25,'country','Ghana'),(3639,36.1333,-5.35,'country','Gibraltar'),(6007,35.6833,139.767,'country','Hapon'),(6015,35.6833,51.4167,'country','Iran'),(3482,41.9,12.4833,'country','Italya'),(4608,33.3333,44.4333,'country','Irak'),(6012,-6.175,106.828,'country','Indonesia'),(6017,31.7833,35.2167,'','Israel'),(5734,-28.5667,77.2,'country','Indya'),(8532,39.9167,116.383,'country','Kanan Katawhan Republika han Tsina'),(8632,45.4,-75.6667,'country','Kanada'),(30048,39.4667,75.9833,'city','Kashgar'),(11031,-10.1833,123.583,'','Kupang'),(19586,-51.7,-57.85,'country','Kapuropud-an Falkland'),(13349,45.7597,4.84222,'city','Lyon'),(13181,49.5639,3.62444,'city','Laon, Aisne'),(4970,6.9,126,'city','Lupon, Davao Oriental'),(7049,16.8167,121.1,'city','Lagawe, Ifugao'),(8208,14.0333,120.65,'city','Lian, Batangas'),(8454,38.7138,-9.13939,'landmark','Lisboa'),(8454,38.7286,-9.18467,'landmark','Lisboa'),(8454,38.7081,-9.13833,'landmark','Lisboa'),(15236,52.2176,0.1001,'landmark','Ludwig Wittgenstein'),(8605,17.9667,102.6,'country','Laos'),(8032,19.05,-99.3667,'country','Mehiko'),(13215,43.2964,5.36995,'city','Marseille'),(11183,24.4667,39.6,'city','Medina'),(11191,21.4167,39.8167,'city','Mecca'),(8494,-11.75,43.2,'city','Moroni, Comoros'),(6801,17.5667,120.983,'city','Malibcong, Abra'),(7156,20.4167,121.95,'city','Mahatao, Batanes'),(8212,15.6167,121.017,'city','Mataas na Kahoy, Batangas'),(54182,43.3056,0.2418,'city','Mirande'),(72862,49.5211,1.72333,'city','Molagnies'),(17470,45.2613,12.2043,'','Marco Polo'),(5155,28.6415,77.2483,'','Mohandas Karamchand Gandhi'),(9318,45.1667,10.8,'','Mantua'),(9319,45.4642,9.19028,'','Milan'),(3607,59.9333,10.6833,'country','Noruega'),(3622,52.3167,5.55,'country','Nederlandes'),(9619,9.06667,7.48333,'country','Nigerya'),(11927,-41.2833,174.45,'country','New Zealand'),(13304,48.6936,6.1846,'city','Nancy'),(66708,48.8181,-0.198333,'city','Neuvy-au-Houlme'),(13167,-21.1333,-175.2,'','Nukuʻalofa'),(8213,14.0667,120.633,'city','Nasugbu, Batangas'),(77860,48.8881,2.26861,'city','Neuilly-sur-Seine'),(9263,40.845,14.2583,'','Napoles'),(9263,40.8333,14.25,'','Napoles'),(25,14.5833,121,'country','Pilipinas'),(3493,38.7667,-9.15,'country','Portugal'),(3494,52.2167,21.0333,'country','Polonya'),(8617,33.6667,73.1667,'country','Pakistan'),(4580,48.8567,2.35083,'city','Paris'),(96185,5.36667,-74.15,'city','Paime'),(106099,45.0208,14.6324,'adm3rd','Punat'),(156555,48.8703,2.31639,'landmark','Palasyo han Élysée'),(157379,40.4181,-3.71389,'landmark','Palasyo han Moncloa'),(157379,40.4442,-3.73583,'','Palasyo han Moncloa'),(158402,10.2289,103.957,'adm1st','Phu Quoc'),(3495,51.5,-0.116667,'country','Reino Unido'),(3611,55.75,37.6167,'country','Rusya'),(10278,-4.31667,15.3167,'country','Republika Demokatika han Congo'),(13263,48.1147,-1.67944,'city','Rennes'),(9947,19,-70.6667,'country','Republika Dominicana'),(8558,41.9,12.5,'city','Roma'),(3019,37.5833,127,'country','Salatan nga Korea'),(3617,46.95,7.45,'country','Swiza'),(3624,41.9,12.45,'country','Syudad han Vaticano'),(11933,15.633,32.5331,'country','Sudan'),(13344,48.5844,7.74861,'city','Strasbourg'),(4579,48.284,6.949,'city','Saint-Dié-des-Vosges'),(85965,52.5833,13.8833,'city','Strausberg'),(25677,41.07,-4.40653,'','Santa María la Real de Nieva'),(8569,1.28333,103.833,'country','Singgapura'),(128912,4.85,31.6,'country','Salatan nga Sudan'),(13418,5.83333,-55.1667,'country','Suriname'),(19556,-54.2833,-36.5,'country','Salatan nga Georgia ngan an Salatan Kapurupod-an Sandwich'),(3628,39.9167,32.8333,'country','Turkeya'),(13255,43.6045,1.44403,'city','Toulouse'),(13388,43.13,5.92,'city','Toulon'),(14573,41.9167,45.4833,'city','Telavi'),(4573,13.75,100.483,'country','Taylandya'),(156981,40.3197,-1.6975,'landmark','Tajo'),(3630,50.45,30.5,'country','Ukranya'),(7552,21.0333,105.85,'country','Vietnam'),(10506,10.5,-66.9667,'country','Venezuela'),(53282,43.9005,3.45972,'city','Vissec'),(29330,-30.0808,-51.0228,'city','Viamão'),(22926,40.1294,-2.81417,'city','Vellisca'),(9307,45.4375,12.3358,'city','Venesya'),(109716,51.2225,18.5739,'city','Wieluń'),(8597,52.2323,21.0084,'city','Warsovya'),(56183,46.7864,0.871667,'city','Yzeures-sur-Creuse'),(30584,51.9333,15.5,'city','Zielona Góra');
/*!40000 ALTER TABLE `live_war` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-02  8:32:35
