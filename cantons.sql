--
-- Table structure for table `CANTON`
--

DROP TABLE IF EXISTS `CANTON`;
CREATE TABLE `CANTON` (
  `NOM_C` varchar(14) DEFAULT NULL,
  `CHEF_LIEU` varchar(11) DEFAULT NULL,
  `DATE_ENTREE` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CANTON`
--

LOCK TABLES `CANTON` WRITE;
INSERT INTO `CANTON` VALUES ('Appenzell R.E.','Herisau',1513),('Appenzell R.I.','Appenzell',1513),('Argovie','Aarau',1803),('Bâle-Campagne','Liestal',1501),('Bâle-Ville','Bâle',1501),('Berne','Berne',1353),('Fribourg','Fribourg',1481),('Genève','Genève',1815),('Glaris','Glaris',1352),('Grisons','Coire',1803),('Jura','Delémont',1979),('Lucerne','Lucerne',1332),('Neuchatel','Neuchatel',1815),('Nidwald','Stans',1291),('Obwald','Sarnen',1291),('Saint-Gall','Saint-Gall',1803),('Schaffhouse','Schaffhouse',1501),('Schwytz','Schwytz',1291),('Soleure','Soleure',1481),('Tessin','Bellinzone',1803),('Thurgovie','Frauenfeld',1803),('Uri','Altdorf',1291),('Valais','Sion',1815),('Vaud','Lausanne',1803),('Zoug','Zoug',1352),('Zurich','Zurich',1351);
UNLOCK TABLES;

--
-- Table structure for table `LANGUE`
--

DROP TABLE IF EXISTS `LANGUE`;
CREATE TABLE `LANGUE` (
  `NOM_CANTON` varchar(14) DEFAULT NULL,
  `LANGUE_PARLEE` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `LANGUE`
--

LOCK TABLES `LANGUE` WRITE;
INSERT INTO `LANGUE` VALUES ('Appenzell R.E.','allemand'),('Appenzell R.I.','allemand'),('Argovie','allemand'),('Bâle-Campagne','allemand'),('Bâle-Ville','allemand'),('Berne','allemand'),('Berne','français'),('Fribourg','allemand'),('Fribourg','français'),('Genève','français'),('Glaris','allemand'),('Grisons','allemand'),('Grisons','romanche'),('Grisons','italien'),('Jura','français'),('Lucerne','allemand'),('Neuchâtel','français'),('Nidwald','allemand'),('Obwald','allemand'),('Saint-Gall','allemand'),('Schaffhouse','allemand'),('Schwytz','allemand'),('Soleure','allemand'),('Tessin','italien'),('Thurgovie','allemand'),('Uri','allemand'),('Valais','français'),('Valais','allemand'),('Vaud','français'),('Zoug','allemand'),('Zurich','allemand');
UNLOCK TABLES;