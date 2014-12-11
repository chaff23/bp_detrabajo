-- MySQL dump 10.13  Distrib 5.1.44, for apple-darwin8.11.1 (i386)
--
-- Host: localhost    Database: bunker
-- ------------------------------------------------------
-- Server version	5.1.44

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
-- Table structure for table `articulos_categoria`
--

DROP TABLE IF EXISTS `articulos_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos_categoria` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(10) NOT NULL DEFAULT '',
  `belong` int(3) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos_categoria`
--

LOCK TABLES `articulos_categoria` WRITE;
/*!40000 ALTER TABLE `articulos_categoria` DISABLE KEYS */;
INSERT INTO `articulos_categoria` VALUES (1,'Blog','',0);
/*!40000 ALTER TABLE `articulos_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulos_conflicto`
--

DROP TABLE IF EXISTS `articulos_conflicto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos_conflicto` (
  `id` smallint(1) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos_conflicto`
--

LOCK TABLES `articulos_conflicto` WRITE;
/*!40000 ALTER TABLE `articulos_conflicto` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulos_conflicto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulos_ediciones`
--

DROP TABLE IF EXISTS `articulos_ediciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos_ediciones` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `imagen` varchar(10) NOT NULL,
  `ruta` varchar(159) NOT NULL,
  `liberada` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos_ediciones`
--

LOCK TABLES `articulos_ediciones` WRITE;
/*!40000 ALTER TABLE `articulos_ediciones` DISABLE KEYS */;
INSERT INTO `articulos_ediciones` VALUES (0,'Ninguna','','',1);
/*!40000 ALTER TABLE `articulos_ediciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulos_fotoedicion`
--

DROP TABLE IF EXISTS `articulos_fotoedicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos_fotoedicion` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(50) NOT NULL,
  `paginas` varchar(50) DEFAULT NULL,
  `edicion` int(3) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=566 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos_fotoedicion`
--

LOCK TABLES `articulos_fotoedicion` WRITE;
/*!40000 ALTER TABLE `articulos_fotoedicion` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulos_fotoedicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulos_index`
--

DROP TABLE IF EXISTS `articulos_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos_index` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `categoria` smallint(2) NOT NULL DEFAULT '0',
  `titulo` varchar(250) DEFAULT NULL,
  `subtitulo` varchar(250) DEFAULT NULL,
  `edicion` int(5) NOT NULL DEFAULT '0',
  `contenido` text NOT NULL,
  `publicado` smallint(1) NOT NULL DEFAULT '0',
  `autor` int(5) NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `imagen` varchar(20) NOT NULL DEFAULT '',
  `conflicto` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`),
  FULLTEXT KEY `titulo` (`titulo`,`subtitulo`,`contenido`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos_index`
--

LOCK TABLES `articulos_index` WRITE;
/*!40000 ALTER TABLE `articulos_index` DISABLE KEYS */;
INSERT INTO `articulos_index` VALUES (1,1,'Ideas para que los niños coman','',0,'<p>Me pregunto qui&eacute;n no ha utilizado alg&uacute;n truco para hacer comer a un hijo, alguna vez. Me acuerdo que algunos d&iacute;as el dar de comer a m&iacute; hija era una verdadera tortura. Ten&iacute;amos que usar mucha imaginaci&oacute;n para que ella se tragara una sola cucharadita de algo. Bail&aacute;bamos, hac&iacute;amos caranto&ntilde;as delante de ella, y as&iacute;, muchas veces, era la &uacute;nica forma que ten&iacute;amos para conseguir que ella se alimentara. Claro est&aacute; que a los ni&ntilde;os no les agradan todos los sabores ni todos los olores, pero no pueden dejar de comer.</p>\r\n<p>Comer no debe ser una obligaci&oacute;n y s&iacute; un h&aacute;bito</p>\r\n<p>Cuando los ni&ntilde;os no quieren comer<br />Eso de tener que introducir los alimentos poco a poco nos ha dado muchos dolores de cabeza. El pescado, el huevo, las frutas, las verduras y la carne,, madre m&iacute;a, era de enloquecer. Es lo mismo cuando llevas a tu hijo por primera vez a una guarder&iacute;a. El periodo de adaptaci&oacute;n, es decir, llevarlo un d&iacute;a por una hora, el siguiente por dos horas, y as&iacute; sucesivamente hasta que &eacute;l se adapte completamente al local, se hace muy, pero que muy largo. Los padres que hacemos trucos para hacer comer a nuestros hijos sabemos, de sobra, que este no es el mejor m&eacute;todo para hacer con que los ni&ntilde;os coman. No es la manera m&aacute;s adecuada para educarlos en este sentido. El alimentarse es un h&aacute;bito que debe ser ense&ntilde;ado a los ni&ntilde;os desde que son muy peque&ntilde;os. &iquest;C&oacute;mo? Pues hablando con ellos sobre lo que est&aacute;n comiendo, lo altos y fuertes que se van a poner, de lo inteligentes que ser&aacute;n, esos detalles que llaman la atenci&oacute;n y estimulan mucho a los ni&ntilde;os.</p>\r\n<p>Otra forma de educar a los ni&ntilde;os sobre la importancia de la alimentaci&oacute;n es explorar un supermercado o un mercado con &eacute;l. Durante las compras, ens&eacute;&ntilde;ale la diferencia entre los productos sanos, que se debe comer mucho, y los que no son tan sanos, de los que no se puede abusar. Despu&eacute;s de las compras, inv&iacute;tale a que se vaya contigo a la cocina, para preparar la comida. Que &eacute;l te vea lavar y cortar las verduras, y preparar la comida. Haz con que las mezclas de alimentos y de productos, sea algo divertido para &eacute;l. Que &eacute;l se distraiga con las formas de las frutas, verduras, de c&oacute;mo se pela la manzana, o de c&oacute;mo lloras pelando una cebolla.</p>\r\n<p>Otra forma para convencer a los ni&ntilde;os de que los alimentos son importantes, es ofrecerles libros, revistas, o contarles cuentos sobre el tema. En el libro Cuentos para comer sin cuentos, hay propuestas realmente atrayentes y divertidas. Es una forma de jugar con los alimentos y evitar las pesadillas en la mesa. La presentaci&oacute;n de los platos tambi&eacute;n es muy importante a la hora de ponerlos delante del ni&ntilde;o. Un mu&ntilde;eco en que sus ojos son dos rodajas de zanahoria, en que su nariz es un trozo de patata, y su boca un buen pedazo de tomate, har&aacute; con que el ni&ntilde;o se sienta atra&iacute;do por com&eacute;rselo todo. Tambi&eacute;n es fundamental que elijas recetas de cocina con tu hijo. Crear buenos h&aacute;bitos a la hora de comer es la mejor forma de prevenir la obesidad, problemas como la anemia infantil u otras enfermedad. A la hora de dar de comer a tu hijo piensa en ello y ya ver&aacute;s qu&eacute; &aacute;nimo te va a entrar...</p>\r\n<p>Vilma Medina. Directora de GuiaInfantil.com</p>\r\n<p>&nbsp;</p>',1,1,'2014-07-29 03:06:24','nino_come.jpg',0),(3,1,'Cuatro posiciones para ayudar al bebé a expulsar gases','',0,'<p>Es importante elegir la mejor posici&oacute;n para favorecer la expulsi&oacute;n de estos gases tan molestos para tu beb&eacute;. A continuaci&oacute;n cuatro posturas que ayudar&aacute;n a eliminar los gases del ni&ntilde;o:</p>\r\n<p><strong>*Sobre el pecho.</strong>&nbsp;Esta es la forma m&aacute;s com&uacute;n de sostener al peque&ntilde;o. Apoyado sobre el pecho, casi erguido, de tal manera que su cabeza quede a la altura de tu hombro. Dar ligeros golpecitos en su espalda, para estimular el eructo. Es recomendable colocar una toalla u otro pa&ntilde;o sobre el hombro, para no ensuciarse la ropa en el caso de que el beb&eacute; regurgite algo de comida, lo cual es bastante habitual.</p>\r\n<p><strong>*Boca abajo.</strong>&nbsp;Esta posici&oacute;n consiste en sujetar al ni&ntilde;o, acostado boca abajo, sobre uno de tus brazos. Con la mano libre se da al peque&ntilde;o golpecitos en la espalda. El beb&eacute; presiona con su propio peso su barriga contra el brazo de quien lo sostiene, y esto propicia la expulsi&oacute;n del aire. Es importante que su cabecita siempre quede un poco m&aacute;s alta que el resto del cuerpo.</p>\r\n<p><strong>*Sobre las piernas.</strong>&nbsp;El cuerpo del beb&eacute; en una posici&oacute;n similar a la anterior, pero en vez de sujetarse con un brazo, si&eacute;ntate y ap&oacute;yalo sobre tu regazo.</p>\r\n<p><strong>*Sentado.</strong>&nbsp;Esta posici&oacute;n es efectiva cuando el ni&ntilde;o ha crecido un poco y puede mantenerse sentado.. Mientras que con una mano le sostienes su barbilla, con la otra le aplicas los mismos golpecitos ligeros descritos para las posturas anteriores.</p>',1,2,'2014-11-28 21:23:41','baby-crying.jpg',0);
/*!40000 ALTER TABLE `articulos_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulos_mensaje`
--

DROP TABLE IF EXISTS `articulos_mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos_mensaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel` int(8) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `contenido` text,
  `publicado` smallint(1) NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos_mensaje`
--

LOCK TABLES `articulos_mensaje` WRITE;
/*!40000 ALTER TABLE `articulos_mensaje` DISABLE KEYS */;
INSERT INTO `articulos_mensaje` VALUES (1,2,'Hermosi','para@la','paranoia gonzalez','Qué bonito todo',0,'2014-09-12 23:03:00'),(2,2,'Otra cosa','cghis@moco','JPoncjho','Pos sí',0,'2014-09-12 23:03:41');
/*!40000 ALTER TABLE `articulos_mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulos_resaque`
--

DROP TABLE IF EXISTS `articulos_resaque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos_resaque` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `vincula` int(3) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos_resaque`
--

LOCK TABLES `articulos_resaque` WRITE;
/*!40000 ALTER TABLE `articulos_resaque` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulos_resaque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners_dir`
--

DROP TABLE IF EXISTS `banners_dir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners_dir` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(10) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners_dir`
--

LOCK TABLES `banners_dir` WRITE;
/*!40000 ALTER TABLE `banners_dir` DISABLE KEYS */;
INSERT INTO `banners_dir` VALUES (0,'Central',''),(1,'Izq. Superior',''),(2,'Der. Superior',''),(3,'Izq. Inferior',''),(4,'Der. Inferior',''),(5,'Inferior',''),(7,'Superior',''),(6,'Ninguno','');
/*!40000 ALTER TABLE `banners_dir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners_ext`
--

DROP TABLE IF EXISTS `banners_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners_ext` (
  `id` smallint(1) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners_ext`
--

LOCK TABLES `banners_ext` WRITE;
/*!40000 ALTER TABLE `banners_ext` DISABLE KEYS */;
INSERT INTO `banners_ext` VALUES (1,'jpg'),(2,'swf'),(3,'gif');
/*!40000 ALTER TABLE `banners_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners_index`
--

DROP TABLE IF EXISTS `banners_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners_index` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(50) DEFAULT NULL,
  `orientacion` smallint(1) NOT NULL DEFAULT '1',
  `visible` smallint(1) NOT NULL DEFAULT '0',
  `nombre` varchar(250) NOT NULL,
  `contenido` text,
  `orden` int(2) NOT NULL DEFAULT '0',
  `banner` smallint(2) NOT NULL DEFAULT '6',
  `liga` varchar(250) NOT NULL,
  `count` int(11) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners_index`
--

LOCK TABLES `banners_index` WRITE;
/*!40000 ALTER TABLE `banners_index` DISABLE KEYS */;
INSERT INTO `banners_index` VALUES (1,'image1.jpg',1,1,'Aristoteles 1','',0,0,'',0),(2,'image2.jpg',1,1,'Aristoteles 2','',0,0,'',0),(3,'image3.jpg',1,1,'gentío','',0,0,'',0),(4,'IMG_0398.JPG',1,0,'testimonialsss','',0,0,'',0),(5,'IMG_0391.JPG',1,0,'Otra prueba','',0,0,'',0);
/*!40000 ALTER TABLE `banners_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caja_index`
--

DROP TABLE IF EXISTS `caja_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caja_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abre` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sesion` smallint(1) NOT NULL DEFAULT '0',
  `cierra` datetime DEFAULT NULL,
  `cantidad` decimal(19,2) DEFAULT '0.00',
  `cajero` int(5) NOT NULL DEFAULT '0',
  `fondo` decimal(19,2) NOT NULL DEFAULT '0.00',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja_index`
--

LOCK TABLES `caja_index` WRITE;
/*!40000 ALTER TABLE `caja_index` DISABLE KEYS */;
INSERT INTO `caja_index` VALUES (1,'2014-07-09 04:20:00',0,'2014-07-08 23:24:34','11367.00',2,'200.00'),(2,'2014-07-09 04:28:57',0,'2014-07-08 23:34:02','2994.00',2,'250.00'),(3,'2014-07-10 00:45:06',0,'2014-07-09 00:19:12','7320.00',1,'200.00'),(4,'2014-07-10 18:32:38',0,'2014-07-10 23:28:18','225.00',1,'300.00'),(5,'2014-07-11 19:04:02',0,'2014-07-11 16:19:02','105.00',1,'200.00'),(6,'2014-07-15 00:37:36',0,'2014-07-14 20:39:42','390.00',1,'300.00'),(7,'2014-07-15 14:31:35',0,'2014-07-15 10:29:53','318.00',1,'220.00'),(8,'2014-07-16 16:35:40',0,'2014-07-16 00:44:15','219.00',1,'200.00'),(9,'2014-07-17 18:09:11',0,NULL,'0.00',1,'200.00'),(10,'2014-10-20 19:46:14',0,'2014-10-20 15:48:54','0.00',1,'300.00'),(11,'2014-10-20 19:49:32',0,'2014-10-27 22:57:01','5000.00',1,'255.00');
/*!40000 ALTER TABLE `caja_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_asigna`
--

DROP TABLE IF EXISTS `catalogo_asigna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogo_asigna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` int(5) NOT NULL,
  `pieza` int(11) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_asigna`
--

LOCK TABLES `catalogo_asigna` WRITE;
/*!40000 ALTER TABLE `catalogo_asigna` DISABLE KEYS */;
INSERT INTO `catalogo_asigna` VALUES (1,1,1),(2,1,4),(3,1,14),(4,1,11),(9,2,26),(6,2,5),(7,2,9),(8,2,8),(10,2,2),(11,2,4),(12,2,10),(13,2,1);
/*!40000 ALTER TABLE `catalogo_asigna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_categoria`
--

DROP TABLE IF EXISTS `catalogo_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogo_categoria` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(30) DEFAULT NULL,
  `belong` smallint(2) NOT NULL DEFAULT '0',
  `subelong` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_categoria`
--

LOCK TABLES `catalogo_categoria` WRITE;
/*!40000 ALTER TABLE `catalogo_categoria` DISABLE KEYS */;
INSERT INTO `catalogo_categoria` VALUES (1,'Servicios','',0,0),(2,'Imagen','',0,0);
/*!40000 ALTER TABLE `catalogo_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_dimensiones`
--

DROP TABLE IF EXISTS `catalogo_dimensiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogo_dimensiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `precio` decimal(19,2) NOT NULL DEFAULT '0.00',
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `vincula` int(11) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_dimensiones`
--

LOCK TABLES `catalogo_dimensiones` WRITE;
/*!40000 ALTER TABLE `catalogo_dimensiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogo_dimensiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_index`
--

DROP TABLE IF EXISTS `catalogo_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogo_index` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `descripcion` text,
  `imagen` varchar(100) NOT NULL DEFAULT 'sin_titulo',
  `subnombre` varchar(100) DEFAULT NULL,
  `categoria` int(3) NOT NULL DEFAULT '0',
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `existe` int(4) NOT NULL DEFAULT '1',
  `bolean` smallint(1) NOT NULL DEFAULT '0',
  `precio` decimal(19,2) NOT NULL DEFAULT '0.00',
  `dimensiones` varchar(150) DEFAULT NULL,
  `orden` int(8) NOT NULL DEFAULT '0',
  `precio_alta2` decimal(19,2) NOT NULL DEFAULT '0.00',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_index`
--

LOCK TABLES `catalogo_index` WRITE;
/*!40000 ALTER TABLE `catalogo_index` DISABLE KEYS */;
INSERT INTO `catalogo_index` VALUES (1,'Personal','<p>Construcci&oacute;n de imagen personal. Elaboraci&oacute;n de hoja de vida</p>','sin_titulo','U',2,1,1,0,'0.00','',0,'0.00'),(2,'Web','<p>Dise&ntilde;o y construcci&oacute;n de sitio web que se vea en todas las plataformas.</p>','sin_titulo','C',2,1,1,0,'0.00','',0,'0.00'),(3,'Publicidad en Facebook','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','sin_titulo',NULL,1,1,1,0,'0.00',NULL,0,'0.00'),(4,'Publicidad en YouTube','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','sin_titulo',NULL,1,1,1,0,'0.00',NULL,0,'0.00'),(5,'Campañas Online','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','sin_titulo','',1,1,1,0,'0.00','',0,'0.00'),(6,'Posicionamiento en buscadores','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','sin_titulo',NULL,1,1,1,0,'0.00',NULL,0,'0.00'),(7,'Diseño Web','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','sin_titulo','',1,1,1,0,'0.00','',0,'0.00'),(8,'Social Media Marketing','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','sin_titulo',NULL,1,1,1,0,'0.00',NULL,0,'0.00');
/*!40000 ALTER TABLE `catalogo_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_label`
--

DROP TABLE IF EXISTS `catalogo_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogo_label` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_label`
--

LOCK TABLES `catalogo_label` WRITE;
/*!40000 ALTER TABLE `catalogo_label` DISABLE KEYS */;
INSERT INTO `catalogo_label` VALUES (1,'Rolando',''),(2,'Adriana','');
/*!40000 ALTER TABLE `catalogo_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_masfotos`
--

DROP TABLE IF EXISTS `catalogo_masfotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogo_masfotos` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `descripcion` text,
  `imagen` varchar(100) DEFAULT NULL,
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `vincula` int(11) NOT NULL,
  `orden` int(3) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_masfotos`
--

LOCK TABLES `catalogo_masfotos` WRITE;
/*!40000 ALTER TABLE `catalogo_masfotos` DISABLE KEYS */;
INSERT INTO `catalogo_masfotos` VALUES (8,'Cuna Bambineto','','cunas026.jpg',1,9,0),(2,'Cuna Nogal','','cunas001.jpg',1,5,0),(3,'Cuna nogal','','cunas004.jpg',0,5,0),(4,'Cuna Nogal','<p>Con l&aacute;mpara integrada.</p>','cunas005.jpg',1,5,0),(5,'Cuna Nogal','<p>Cabcera acolchada para seguridad y protecci&oacute;n del beb&eacute;.</p>','cunas008.jpg',1,5,0),(6,'Cuna Litera','','cunas014.jpg',1,7,0),(7,'Cama-cuna Junior','','cunas017.jpg',1,8,0),(9,'Cuna Bambineto','','cunas027.jpg',1,9,0),(10,'Cuna pequeÃ±os espacios','<p>Tama&ntilde;o justo para colocar junto a la cama de mam&aacute;.</p>','cunas031.jpg',1,10,0),(11,'Carriola PortabebÃ©','<p>Dos art&iacute;culos en uno.</p>','carriolas002.jpg',1,11,0);
/*!40000 ALTER TABLE `catalogo_masfotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_temporadas`
--

DROP TABLE IF EXISTS `catalogo_temporadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogo_temporadas` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `desde` date NOT NULL,
  `hasta` date NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_temporadas`
--

LOCK TABLES `catalogo_temporadas` WRITE;
/*!40000 ALTER TABLE `catalogo_temporadas` DISABLE KEYS */;
INSERT INTO `catalogo_temporadas` VALUES (1,'baja','2012-05-01','2012-10-31'),(2,'alta','2012-11-01','2012-12-20'),(3,'altisima','2012-12-21','2013-01-04'),(4,'alta2','2013-01-05','2013-04-30');
/*!40000 ALTER TABLE `catalogo_temporadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citas` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `contenido` text NOT NULL,
  `autor` varchar(100) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES (1,'<p>&nbsp;Justicia es el h&aacute;bito de dar a cada quien lo suyo.</p>','Ulpiano'),(2,'Nada hay mÃ¡s injusto que buscar premio en la justicia.','Marco Tulio CicerÃ³n'),(3,'El derecho, si no sirve para hacer la vida mÃ¡s amable, no sirve de nada.','Carlos SaÃºl Menem'),(4,'Quien tiene el derecho de criticar debe tener el corazÃ³n para ayudar.','Abraham Lincoln'),(5,'Ganamos justicia mÃ¡s rÃ¡pidamente, si hacemos justicia a la parte contraria.','Mahatma Gandhi');
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coment`
--

DROP TABLE IF EXISTS `coment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL DEFAULT '',
  `remite` varchar(150) NOT NULL DEFAULT '',
  `correo` varchar(50) NOT NULL DEFAULT '',
  `comentario` text,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `relativo` int(11) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coment`
--

LOCK TABLES `coment` WRITE;
/*!40000 ALTER TABLE `coment` DISABLE KEYS */;
INSERT INTO `coment` VALUES (1,'Algo estÃ¡ pasando...','Alicia','','que mis mensajes no aparecen, TRABAJEEEEN!!!','2010-12-03 08:40:26',2);
/*!40000 ALTER TABLE `coment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprar_directorio`
--

DROP TABLE IF EXISTS `comprar_directorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprar_directorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(128) NOT NULL DEFAULT '',
  `passwd` varchar(128) DEFAULT NULL,
  `name` varchar(250) NOT NULL DEFAULT '',
  `address` varchar(250) NOT NULL DEFAULT '',
  `city` varchar(150) NOT NULL DEFAULT '',
  `state` varchar(150) NOT NULL DEFAULT '',
  `country` varchar(20) DEFAULT NULL,
  `zip` varchar(10) NOT NULL DEFAULT '',
  `mail` varchar(35) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `activated` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprar_directorio`
--

LOCK TABLES `comprar_directorio` WRITE;
/*!40000 ALTER TABLE `comprar_directorio` DISABLE KEYS */;
INSERT INTO `comprar_directorio` VALUES (0,'none',NULL,'ninguno','','','',NULL,'','','','2012-11-28 18:26:53',0),(1,'alicia','','Alicia Normanda Lindá','Revolución 199','Santa Anita, Tlaq.,','Jalisco','México','45600','normanda.alicia@gmail.com','10 86 2136','2012-11-08 18:01:21',1),(2,'ferbere','6654ffd4afc21be41bd0aa110eecdb27','Ramsés Figueroa','Revolución 199','Santa Anita, Tlaq.,','Jalisco','México','45600','saargo@gmail.com','10 86 2136','2012-11-08 20:03:55',1),(3,'oliver','acae273a5a5c88b46b36d65a25f5f435','Oliver Palurdo','Revolución 199','Santa Anita, Tlaq.,','Jalisco','México','45600','oliver@ferbere.com','10 86 2136','2012-11-08 20:06:42',1);
/*!40000 ALTER TABLE `comprar_directorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprar_index`
--

DROP TABLE IF EXISTS `comprar_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comprar_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(250) NOT NULL,
  `suma` decimal(19,2) NOT NULL DEFAULT '0.00',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `catalogo` int(3) NOT NULL,
  `precio` decimal(19,2) NOT NULL DEFAULT '0.00',
  `desde` date NOT NULL,
  `hasta` date NOT NULL,
  `cliente` int(11) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprar_index`
--

LOCK TABLES `comprar_index` WRITE;
/*!40000 ALTER TABLE `comprar_index` DISABLE KEYS */;
INSERT INTO `comprar_index` VALUES (1,'ferbere','2610.00','2012-11-29 01:16:42',3,'290.00','2013-01-05','2013-01-14',3),(2,'ferbere','540.00','2012-11-29 01:52:47',2,'270.00','2013-02-12','2013-02-14',2),(3,'alicia','2960.00','2012-11-29 01:54:31',1,'185.00','2012-05-01','2012-05-17',1),(4,'claire','3780.00','2012-11-29 01:57:09',2,'270.00','2012-11-01','2012-11-15',3),(5,'alicia','2430.00','2012-11-29 16:05:37',2,'270.00','2013-01-05','2013-01-14',3),(6,'claire','2960.00','2012-11-29 16:06:15',1,'185.00','2012-05-01','2012-05-17',2),(7,'claire','2800.00','2012-11-29 16:06:48',2,'175.00','2012-05-01','2012-05-17',3),(8,'claire','8388.33','2012-11-29 16:07:15',1,'280.00','2013-03-15','2013-04-14',1),(9,'claire','35693.13','2012-11-29 16:07:35',3,'195.00','2012-05-01','2012-10-31',3),(10,'claire','270.00','2012-11-29 16:07:54',2,'270.00','2012-12-21','2012-12-20',1);
/*!40000 ALTER TABLE `comprar_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `congreso_coordina`
--

DROP TABLE IF EXISTS `congreso_coordina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `congreso_coordina` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `coordinador_id` int(5) NOT NULL,
  `dia_id` int(5) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `congreso_coordina`
--

LOCK TABLES `congreso_coordina` WRITE;
/*!40000 ALTER TABLE `congreso_coordina` DISABLE KEYS */;
INSERT INTO `congreso_coordina` VALUES (1,8,1),(2,17,1),(3,25,1),(4,5,2),(5,2,2),(6,26,2),(7,12,3),(8,27,3),(9,28,3),(10,17,4),(11,29,4);
/*!40000 ALTER TABLE `congreso_coordina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `congreso_dia`
--

DROP TABLE IF EXISTS `congreso_dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `congreso_dia` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `congreso` smallint(2) NOT NULL DEFAULT '1',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `congreso_dia`
--

LOCK TABLES `congreso_dia` WRITE;
/*!40000 ALTER TABLE `congreso_dia` DISABLE KEYS */;
INSERT INTO `congreso_dia` VALUES (1,'Miércoles 18 de julio de 2012',1),(2,'Jueves 19 de julio de 2012',1),(3,'Viernes 20 de julio de 2012',1),(4,'Sábado 21 de julio de 2012',1),(5,'Domingo 22 de julio de 2012',1),(6,'Martes 17 de julio de 2012',2);
/*!40000 ALTER TABLE `congreso_dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `congreso_imparte`
--

DROP TABLE IF EXISTS `congreso_imparte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `congreso_imparte` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `imparte` varchar(250) NOT NULL DEFAULT '',
  `perfil` varchar(250) NOT NULL DEFAULT '',
  `curri` text NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `congreso_imparte`
--

LOCK TABLES `congreso_imparte` WRITE;
/*!40000 ALTER TABLE `congreso_imparte` DISABLE KEYS */;
INSERT INTO `congreso_imparte` VALUES (1,'Dr. Salvador Bueno Valenzuela','','Tesorero de la Academia Mexicana de Neurología'),(2,'Dr. Carlos Cuevas','','Presidente de la Academia Mexicana de Neurología'),(3,'Dr. Ulises Aguilar Baturoni','','Fisiologia y doctorado de Fisiologia  H. Syracussa New York Jefe de Neurofisiologia Hospital Juarez 2000 jefe de unidad de fisiologia UNAM. '),(4,'Dr. Francisco Javier Puerta Cuestas','','Neurofisiólogo y Somnólogo. Jefe del Servicio de Neurofisolofìa y de la Unidad de sueño Hospital la Ribera Valencia España. Ex presidente de la Sociedad Española de Sueño.'),(5,'Dra. Guadalupe Bonilla Mejía','','Neurologa IMSS centro medico nacional Neurofisiologia. Unidad Universitaria de Neurofisiologia H. Juarez 2000 Felow sueño Hospital la Ribera, Valencia España'),(6,'Dr. Juan Castrejón Chávez','','Neurólogo IMSS Centro Médico Nacional Neurofisiología. INNN Manuel velasco Suarez. Felos sueño Hospital la Ribera valencia Espana.'),(7,'Dr. Federico Micheli','','Neurólogo, Argentina'),(8,'Dra. Marisela Concepción Parra Bernal','','Neuróloga-Gerontóloga, Presidenta de ANNIMSS. México'),(9,'Dr. Bernardo Ng','','Psiquiatra. Tijuana, BC, México'),(10,'Dr. Francisco Javier Puertas, Dr. Juan Castrejón y Dra. Guadalupe Bonilla','',''),(11,'Dr. Victor M. Rivera-Olmos','','Neurólgo, profesor titular de Neurología, Baylor College of Medicine Maxine Mesinger Multiple Sclerosis Clinic, The Methodist Hospital, Houston, Texas, USA'),(12,'Dr. Miguel Ángel Macías Islas','','Profesor titular del departamento de Neurociencias, Centro Universitario de Ciencias de la Salud, Universidad de Guadalajara. Jefe del Departamento de Neurología, Hospital de Especialidades, Centro Médico Nacional de Occidente IMSS, Guadalajara, Jalisco.'),(13,'Dra. Adriana Horta','','IMSS, México'),(14,'Dr. Victor Rivera y Dr. Leonardo Llamas L.','',''),(21,'Dr. Antonio Rizzoli Córdoba ','','HIM'),(15,'Dra. Karina Vélez','','Neurólogoa IMSS. México'),(16,'Dr. Jaime Ruíz Chávez ','',''),(17,'Dra. Edith Alva Moncayo','','Neuróloga pediatra, H. La Raza IMSS, Secretaria de ANNIMSS. México'),(18,'Dra. María Castro Tarín  ','',''),(19,'Dra. Eunice López Correa ','',''),(20,'Dra. Guadalupe González de la Rosa','',''),(22,'Dr. David King-Stephens','Neurólogo, epileptólogo de los  E.U.','Escuela de Medicina, Universidad LaSalle, México. Internado en Medicina Interna en la Universidad de Yale, EUA (1998-1990).<br>\r\nResidencia en Neurología en la Universidad de Columbia, NY, EUA (1990-1993).<br>\r\nSubespecialidad en Epilepsia, Universidad de Yale, EUA (1993-1996).<br>\r\nDirector de neurofisiología, Co-director Servicio de Eplipsia, California Pacific Medical Center, San Francisco, CA, EUA (1999-presente).<br>\r\nPubliaciones: Neurology, Epilepsia, Epilepsia Research.'),(23,'Dr. Héctor González Usigli','','Subespecialidad en Trastornos del Movimiento desde Julio de 2011, en el departamento de Neurología de la Universidad de Cincinnati<br>\r\n\r\nResidencia en Neurología en el Hospital de Especialidades, Centro Médico Nacional de Occidente, IMSS, Universidad de Guadalajara.<br>\r\n\r\nEstudios de Medicina en la Universidad de Guadalajara, Centro Universitario de Ciencias de la Salud (1992.1998)'),(24,'Por confirmar (EU)','',''),(25,'Dr. Mario Mireles R.','',''),(26,'Dr. Francisco Javier Jiménez Gil','',''),(27,'Dr. Juan Lozano Zárate','',''),(28,'Dr. Roberto Partida Medina','',''),(29,'Dr. Leonardo Eleazar Cruz Alcalá','',''),(30,'Dra. Ingrid Eloísa Estrada Bellmann','','');
/*!40000 ALTER TABLE `congreso_imparte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `congreso_programa`
--

DROP TABLE IF EXISTS `congreso_programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `congreso_programa` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `tema` varchar(250) NOT NULL,
  `subtema` varchar(250) NOT NULL DEFAULT '',
  `tipo` int(2) NOT NULL DEFAULT '0',
  `imparte` int(3) NOT NULL DEFAULT '0',
  `dirigido` int(2) NOT NULL DEFAULT '0',
  `descripcion` text NOT NULL,
  `lugar` int(2) NOT NULL DEFAULT '0',
  `hora_i` time NOT NULL DEFAULT '00:00:00',
  `hora_t` time NOT NULL DEFAULT '00:00:00',
  `dia` smallint(2) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `congreso_programa`
--

LOCK TABLES `congreso_programa` WRITE;
/*!40000 ALTER TABLE `congreso_programa` DISABLE KEYS */;
INSERT INTO `congreso_programa` VALUES (1,'Inscripción y Registro','',1,0,0,'',0,'12:30:00','20:00:00',1),(2,'Pósters y Trabajos Libres','',2,1,0,'',0,'17:00:00','19:00:00',1),(3,'Inauguración','',1,0,0,'A cargo del Dr. Carlos Cuevas Presidente de la Academia Mexicana de Neurología.<br> Cena de Bienvenida.<br><br>\r\nInvitada especial Fundadora de la ANNIMSS<br> \r\nDra. Teresita Corona Vázquez. Directora de Instituto Nacional de Neurologia y Neurocirugía\r\n',0,'20:00:00','23:00:00',1),(4,'Ontogénesis y fisiología del sueño','',0,3,0,'',0,'08:00:00','08:40:00',2),(5,'Narcolepsia','',0,4,0,'',0,'08:40:00','09:40:00',2),(6,'Parasomnias','',0,5,0,'',0,'09:40:00','10:00:00',2),(7,'Síndrome de piernas inquietas y movimientos periódicos de piernas','',0,4,0,'',0,'10:30:00','11:30:00',2),(8,'Trastornos del sueño en Parkinson y Demencia','',0,6,0,'',0,'11:30:00','12:00:00',2),(9,'Actualidades del tratamiento de Enfermedad de Parkinson','',0,7,0,'',0,'12:00:00','13:00:00',2),(10,'Demencia y Parkinson','',0,2,0,'',0,'13:00:00','13:30:00',2),(11,'Simposio: Demencia de Alzheimer','',0,8,0,'',0,'14:00:00','14:30:00',2),(12,'Simposio: Actualidades del manejo de Alzheimer','',0,9,0,'',0,'14:30:00','15:00:00',2),(13,'Sesión de Casos Clínicos del Trastornos del Sueño','',0,10,0,'',0,'15:00:00','16:00:00',2),(14,'Rifa','',1,0,0,'',0,'16:00:00','17:00:00',2),(15,'Simposio: Actividades en tratamiento de la Esclerosis Múltiple ','',0,11,0,'',0,'08:00:00','09:00:00',3),(16,'Cognición y hallazgos neurofisiológicos en Esclerosis Múltiple','',0,12,0,'',0,'09:00:00','09:30:00',3),(38,'Simposio: Más allá de las manifestaciones motoras de la Enfermedad de Parkinson','',0,23,0,'',0,'11:00:00','11:40:00',3),(18,'Casos clínicos en Esclerosis Múltiple','',0,14,0,'',0,'09:30:00','10:30:00',3),(19,'Receso','',1,1,0,'',0,'10:30:00','11:00:00',3),(20,'Casos clínicos en Enfermedad Parkinson','',0,7,0,'',0,'11:40:00','12:40:00',3),(21,'Receso','',1,1,0,'',0,'12:40:00','13:00:00',3),(22,'Tratamiento profiláctico de la Migraña. Experiencia en Mexico','',0,15,0,'',0,'14:00:00','14:40:00',3),(23,'Rifa','',1,1,0,'',0,'14:40:00','15:00:00',3),(24,'Tiempo libre','',1,1,0,'',0,'15:00:00','20:00:00',3),(25,'Cena y entrega de reconocimientos','',1,1,0,'',0,'20:30:00','23:00:00',3),(26,'Simposio: Controversias en la aplicación de Inmunoglobulinas en Patologia Neurológica','',0,16,0,'',0,'08:00:00','09:00:00',4),(27,'Instrumento diagnóstico de los problemas del desarrollo infantil en México y Encuesta sobre las escalas de evaluación del desarrollo del niño a los asistentes.','',0,21,0,'',0,'09:00:00','09:40:00',4),(28,'Avances sobre tratamiento de Síndrome Epilépticos Catastróficos con los nuevos antiepilépticos Vs convencionales','',0,17,0,'',0,'09:40:00','10:10:00',4),(29,'Receso','',1,1,0,'',0,'11:10:00','11:40:00',4),(30,'TDAH  Avances en fisiopatología y aplicación en terapia farmacológica','',0,18,0,'',0,'11:40:00','12:20:00',4),(31,'Comorbilidades de TDAH en la paciente pediátrica','',0,19,0,'',0,'12:20:00','13:00:00',4),(32,'Tratamiento alternativo en TDAH en niños ','',0,20,0,'',0,'13:00:00','13:40:00',4),(33,'Comida de clausura y premiaciones','',1,1,0,'',0,'14:00:00','17:00:00',4),(34,'Salida','',1,0,0,'',0,'08:00:00','12:00:00',5),(35,'Receso','',1,0,0,'',0,'10:00:00','10:30:00',2),(36,'Receso','',1,0,0,'',0,'13:30:00','14:00:00',2),(37,'Simposio: Avances en el tratamiento de la epilepsia evidencias Vs. experiencias','',0,22,0,'',0,'10:10:00','11:10:00',4),(39,'Simposio: \"Diagnóstico de la Enfermedad de Pompe\" (comida)','',0,24,0,'',0,'13:00:00','14:00:00',3),(40,'Rifa','',1,0,0,'',0,'13:40:00','14:00:00',4),(41,'Incripciones (gratuitas)','',1,0,0,'',0,'08:00:00','09:00:00',6),(42,'Mitos y realidades en Epilepsia','',0,17,0,'',0,'09:00:00','10:00:00',6),(43,'Diagnóstico y tratamiento de Cefaleas','',0,1,0,'',0,'10:00:00','11:00:00',6),(44,'Trastornos de Déficit de Atención en Niños y Adolescentes','',0,17,0,'',0,'11:00:00','11:30:00',6),(45,'Trastornos de Déficit de Atención en Adultos','',0,8,0,'',0,'11:30:00','12:00:00',6),(46,'Mesa Redonda','',1,0,0,'',0,'12:00:00','12:30:00',6),(47,'Receso','',1,0,0,'',0,'12:30:00','13:00:00',6),(48,'Falla de memoria y demencias','',0,8,0,'',0,'13:00:00','14:00:00',6),(49,'Enfermedad de Parkinson, Diagnóstico y tratamiento','',0,30,0,'',0,'14:00:00','15:00:00',6);
/*!40000 ALTER TABLE `congreso_programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contador`
--

DROP TABLE IF EXISTS `contador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) DEFAULT NULL,
  `hora` varchar(8) DEFAULT NULL,
  `fecha` varchar(20) DEFAULT NULL,
  `segundos` varchar(30) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contador`
--

LOCK TABLES `contador` WRITE;
/*!40000 ALTER TABLE `contador` DISABLE KEYS */;
INSERT INTO `contador` VALUES (209,'','12:05:38','Fri 16 Nov 2012','1353045938'),(210,'::1','12:07:00','Fri 16 Nov 2012','1353046020'),(211,'::1','06:07:49','Fri 16 Nov 2012','1353067669'),(212,'::1','07:08:52','Fri 16 Nov 2012','1353071332'),(213,'::1','09:07:15','Fri 16 Nov 2012','1353078435'),(214,'::1','01:25:59','Tue 20 Nov 2012','1353439559'),(215,'::1','02:27:10','Tue 20 Nov 2012','1353443230'),(216,'::1','04:23:18','Tue 20 Nov 2012','1353450198'),(217,'::1','10:06:00','Tue 20 Nov 2012','1353470760'),(218,'::1','05:58:14','Mon 26 Nov 2012','1353974294'),(219,'::1','07:33:00','Mon 26 Nov 2012','1353979980'),(220,'::1','12:20:49','Tue 27 Nov 2012','1354040449'),(221,'::1','01:21:21','Tue 27 Nov 2012','1354044081'),(222,'::1','02:21:27','Tue 27 Nov 2012','1354047687'),(223,'::1','03:45:26','Tue 27 Nov 2012','1354052726'),(224,'::1','04:55:27','Tue 27 Nov 2012','1354056927'),(225,'::1','11:56:30','Wed 28 Nov 2012','1354125390'),(226,'::1','07:09:36','Wed 28 Nov 2012','1354151376'),(227,'::1','09:42:03','Thu 29 Nov 2012','1354203723');
/*!40000 ALTER TABLE `contador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corporativa_index`
--

DROP TABLE IF EXISTS `corporativa_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corporativa_index` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(60) NOT NULL DEFAULT '',
  `subtitulo` varchar(50) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `banner` smallint(6) NOT NULL DEFAULT '0',
  `publicado` smallint(1) NOT NULL DEFAULT '0',
  `autor` int(5) NOT NULL DEFAULT '0',
  `ruta` smallint(2) NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `imagen` varchar(50) NOT NULL DEFAULT '',
  `orden` int(2) NOT NULL DEFAULT '0',
  `sistemas2` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporativa_index`
--

LOCK TABLES `corporativa_index` WRITE;
/*!40000 ALTER TABLE `corporativa_index` DISABLE KEYS */;
INSERT INTO `corporativa_index` VALUES (1,'Imagen','imagen.php','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',0,1,1,4,'2011-03-19 03:18:36','',1,0),(2,'Comunicación','comunicacion.php','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',0,1,1,4,'2011-03-19 03:16:41','',2,0),(3,'Marketing Digital','marketing_digital.php','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',0,1,1,4,'2011-07-04 22:06:54','',3,0),(4,'Herramientas','herramientas.php','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',0,1,1,0,'0000-00-00 00:00:00','',4,0),(7,'Su mensaje...','sumensaje','<p>Su mensaje se ha enviado exitosamente.<br><br>\r\nEn breve nos pondremos en contacto con usted</p>\r\n<p>Muchas gracias.</p>',0,1,1,0,'0000-00-00 00:00:00','',0,0),(8,'Página en construcción','','<p>Todavía estamos construyendo esta página.</p>',1,1,1,0,'0000-00-00 00:00:00','',0,0);
/*!40000 ALTER TABLE `corporativa_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corporativa_resaque`
--

DROP TABLE IF EXISTS `corporativa_resaque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corporativa_resaque` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `vincula` int(3) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporativa_resaque`
--

LOCK TABLES `corporativa_resaque` WRITE;
/*!40000 ALTER TABLE `corporativa_resaque` DISABLE KEYS */;
/*!40000 ALTER TABLE `corporativa_resaque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corporativa_rutas`
--

DROP TABLE IF EXISTS `corporativa_rutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corporativa_rutas` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporativa_rutas`
--

LOCK TABLES `corporativa_rutas` WRITE;
/*!40000 ALTER TABLE `corporativa_rutas` DISABLE KEYS */;
INSERT INTO `corporativa_rutas` VALUES (0,'ninguno');
/*!40000 ALTER TABLE `corporativa_rutas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descargar_index`
--

DROP TABLE IF EXISTS `descargar_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descargar_index` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(50) NOT NULL,
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `disponible` smallint(1) NOT NULL DEFAULT '4',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descargar_index`
--

LOCK TABLES `descargar_index` WRITE;
/*!40000 ALTER TABLE `descargar_index` DISABLE KEYS */;
INSERT INTO `descargar_index` VALUES (3,'alice-in-chains.jpg',1,3),(4,'fracc.jpg',1,3),(5,'davinci.jpg',1,2);
/*!40000 ALTER TABLE `descargar_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directorio`
--

DROP TABLE IF EXISTS `directorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL DEFAULT '',
  `apellidos` varchar(250) DEFAULT NULL,
  `grupo` int(11) NOT NULL DEFAULT '0',
  `imagen` varchar(10) NOT NULL DEFAULT '',
  `tratamiento` varchar(50) NOT NULL DEFAULT '',
  `apodo` varchar(50) NOT NULL DEFAULT '',
  `empresa` varchar(150) NOT NULL DEFAULT '',
  `cargo` varchar(150) NOT NULL DEFAULT '',
  `telefono_tr1` varchar(30) NOT NULL DEFAULT '',
  `telefono_tr2` varchar(30) NOT NULL DEFAULT '',
  `telefono_pa1` varchar(30) NOT NULL DEFAULT '',
  `telefono_pa2` varchar(30) NOT NULL DEFAULT '',
  `fax_tr` varchar(30) NOT NULL DEFAULT '',
  `fax_pa` varchar(30) NOT NULL DEFAULT '',
  `celular1` varchar(30) NOT NULL DEFAULT '',
  `celular2` varchar(30) NOT NULL DEFAULT '',
  `buscapersonas` varchar(80) NOT NULL DEFAULT '',
  `mail` varchar(50) NOT NULL DEFAULT '',
  `mail2` varchar(50) NOT NULL DEFAULT '',
  `msn` varchar(50) NOT NULL DEFAULT '',
  `google_talk` varchar(50) NOT NULL DEFAULT '',
  `skype` varchar(50) NOT NULL DEFAULT '',
  `facebook` varchar(50) NOT NULL DEFAULT '',
  `twitter` varchar(50) NOT NULL DEFAULT '',
  `direccion_tr` varchar(250) NOT NULL DEFAULT '',
  `ciudad_tr` varchar(150) NOT NULL DEFAULT '',
  `estado_tr` varchar(50) NOT NULL DEFAULT '',
  `cp_tr` varchar(10) NOT NULL DEFAULT '',
  `pais_tr` varchar(30) NOT NULL DEFAULT '',
  `direccion_tr2` varchar(250) NOT NULL DEFAULT '',
  `ciudad_tr2` varchar(150) NOT NULL DEFAULT '',
  `estado_tr2` varchar(50) NOT NULL DEFAULT '',
  `cp_tr2` varchar(10) NOT NULL DEFAULT '',
  `pais_tr2` varchar(30) NOT NULL DEFAULT '',
  `direccion_pa` varchar(250) NOT NULL DEFAULT '',
  `ciudad_pa` varchar(150) NOT NULL DEFAULT '',
  `estado_pa` varchar(50) NOT NULL DEFAULT '',
  `cp_pa` varchar(10) NOT NULL DEFAULT '',
  `pais_pa` varchar(30) NOT NULL DEFAULT '',
  `cumpleanos` date DEFAULT NULL,
  `web` varchar(50) NOT NULL DEFAULT '',
  `aniversario` date DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` timestamp NULL DEFAULT NULL,
  `notas` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directorio`
--

LOCK TABLES `directorio` WRITE;
/*!40000 ALTER TABLE `directorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `directorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categoria`
--

DROP TABLE IF EXISTS `faq_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categoria` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(10) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categoria`
--

LOCK TABLES `faq_categoria` WRITE;
/*!40000 ALTER TABLE `faq_categoria` DISABLE KEYS */;
INSERT INTO `faq_categoria` VALUES (0,'Ninguna',''),(1,'General',''),(2,'Unusual','');
/*!40000 ALTER TABLE `faq_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_index`
--

DROP TABLE IF EXISTS `faq_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_index` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `pregunta` text NOT NULL,
  `respuesta` text NOT NULL,
  `frecuencia` int(11) NOT NULL,
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `categoria` int(3) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_index`
--

LOCK TABLES `faq_index` WRITE;
/*!40000 ALTER TABLE `faq_index` DISABLE KEYS */;
INSERT INTO `faq_index` VALUES (1,'First','<p>Tell me about yourself?</p>','<p>This question or something similar usually starts every interview.  Your answer should be well-rehearsed, confidently delivered and last between 3-5 minutes.  It should also:<br />Focus on the areas of most relevance to the job in question<br />Include some impressive achievements e.g. improvements made<br />Convey your enthusiasm for the job<br />Avoid personal or irrelevant information e.g. your children, un-related jobs</p>',0,1,1),(2,'Second','<p>What are your key skills/strengths?</p>','<p>Focus on what you know they are looking for, even if it has been a smaller part of what you have been doing to date.  The job advert or person specification form will give you the information you need about their requirements.</p>',0,1,1),(3,'Third','<p>What are your weaknesses?</p>','<p>Choose a weakness that: Doesn\'t matter for the job e.g. languages for a UK firm.  Is a positive e.g. \"I like to make things happen and get frustrated if too long is spent sitting around discussing it without action\" <br />Used to be a weakness but which you have improved upon e.g. presentations</p>',0,1,1),(7,'Fourth','<p>Why did you leave your last job?</p>','<p>Your answer should be positive and upbeat even if the circumstances were difficult.  If you were made redundant, depersonalise it by talking about company restructuring rather than your individual circumstance.  Never criticise a previous employer no matter how tempting.</p>',0,1,2),(8,'Fitfh','<p>Why do you want this job?</p>','<p>Your answer should reinforce why you are such a good fit for the job and then convey your enthusiasm for the role e.g.</p>\r\n<p>Good match between your skills and their requirements<br />Interested in the product/market/sector<br />Company\'s excellent reputation, exciting challenge etc.<br />Do not say (even if it\'s true) that you just need a job, or you want it because it\'s local.</p>\r\n<p>&nbsp;</p>',0,1,2),(9,'Sixth','<p>Tell me about a difficult scenario at work and how you dealt with it</p>','<p>They are testing how you cope under pressure as well as your problem-solving and communication skills.  Good examples are where you:</p>\r\n<p>Helped resolve or improve a difficult situation<br />Were resilient in adverse conditions<br />Showed emotional intelligence and cool-headedness<br />Avoid any examples which still feel sensitive, because in a high-pressure interview situation, old emotions can easily resurface and throw you off balance.</p>\r\n<p>&nbsp;</p>',0,1,2),(10,'Seventh','<p>Tell me about an achievement of which you are proud?</p>','<p>Choose work-related examples that shows a tangible benefit to the business.   Personal achievements should only be included if they are very impressive or prestigous. More experienced candidates looking for a specific roles eg Sales Director Jobs should focus on closely related areas eg driving an increase in sales or building a successful sales team</p>',0,1,1);
/*!40000 ALTER TABLE `faq_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos_categoria`
--

DROP TABLE IF EXISTS `fotos_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos_categoria` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(30) DEFAULT NULL,
  `belong` smallint(2) NOT NULL DEFAULT '0',
  `subelong` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_categoria`
--

LOCK TABLES `fotos_categoria` WRITE;
/*!40000 ALTER TABLE `fotos_categoria` DISABLE KEYS */;
INSERT INTO `fotos_categoria` VALUES (1,'Detalle index','',0,0);
/*!40000 ALTER TABLE `fotos_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos_dimensiones`
--

DROP TABLE IF EXISTS `fotos_dimensiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos_dimensiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `precio` decimal(19,2) NOT NULL DEFAULT '0.00',
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `vincula` int(11) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_dimensiones`
--

LOCK TABLES `fotos_dimensiones` WRITE;
/*!40000 ALTER TABLE `fotos_dimensiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `fotos_dimensiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos_ext`
--

DROP TABLE IF EXISTS `fotos_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos_ext` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL DEFAULT '',
  `descripcion` varchar(20) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_ext`
--

LOCK TABLES `fotos_ext` WRITE;
/*!40000 ALTER TABLE `fotos_ext` DISABLE KEYS */;
INSERT INTO `fotos_ext` VALUES (7,'ninguno','sin formato'),(1,'jpg','fotos'),(2,'png','fotos'),(3,'swf','flash'),(4,'mov','video'),(5,'avi','video');
/*!40000 ALTER TABLE `fotos_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos_index`
--

DROP TABLE IF EXISTS `fotos_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos_index` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL DEFAULT '',
  `descripcion` text,
  `imagen` varchar(100) NOT NULL DEFAULT 'sin_titulo',
  `subnombre` varchar(100) DEFAULT NULL,
  `categoria` int(3) NOT NULL DEFAULT '0',
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `ext` smallint(2) NOT NULL DEFAULT '0',
  `bolean` smallint(1) NOT NULL DEFAULT '0',
  `orden` int(3) NOT NULL DEFAULT '0',
  `fecha` date DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_index`
--

LOCK TABLES `fotos_index` WRITE;
/*!40000 ALTER TABLE `fotos_index` DISABLE KEYS */;
INSERT INTO `fotos_index` VALUES (1,'Peluches','<p>Esta imagen debe ser reemplazada.</p>','teddy2.png','',1,1,0,0,0,'0000-00-00');
/*!40000 ALTER TABLE `fotos_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gadgets_botones_admin`
--

DROP TABLE IF EXISTS `gadgets_botones_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gadgets_botones_admin` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `boton` varchar(50) DEFAULT NULL,
  `imagen` varchar(20) NOT NULL DEFAULT '',
  `ext` char(3) NOT NULL DEFAULT '',
  `ruta` varchar(100) NOT NULL,
  `gadget` smallint(2) NOT NULL DEFAULT '0',
  `privilegios` smallint(1) DEFAULT '2',
  `visible` smallint(1) NOT NULL DEFAULT '1',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadgets_botones_admin`
--

LOCK TABLES `gadgets_botones_admin` WRITE;
/*!40000 ALTER TABLE `gadgets_botones_admin` DISABLE KEYS */;
INSERT INTO `gadgets_botones_admin` VALUES (1,'Art&iacute;culo nuevo','new','png','if_articulos.php',2,2,1),(2,'Editar art&iacute;culo','edit','png','bus_articulos.php',2,2,1),(3,'Categor&iacute;a nueva','new','png','if_categoria.php',2,2,1),(4,'Agregar gadget','gadget','png','if_gadgets.php',1,2,1),(5,'Editar gadget','edit','png','bus_gadgets.php',1,2,1),(6,'Nueva informaci&oacute;n','new','png','if_corporativa.php',4,2,1),(7,'Editar informaci&oacute;n','edit','png','bus_corporativa.php',4,2,1),(8,'Agregar foto','camara','png','if_fotos.php',5,2,1),(9,'Administrar fotos','photo','png','bus_fotos.php',5,2,1),(10,'Editar categor&iacute;a','edit','png','bus_categoria.php',2,2,1),(11,'Agregar botón Admin','work','png','if_botones_admin.php',1,2,1),(12,'Agregar a cat&aacute;logo','new','png','if_catalogo.php',8,2,1),(13,'Editar cat&aacute;logo','edit','png','bus_catalogo.php',8,2,1),(14,'Nueva categoría','new','png','if_categoria.php',8,2,1),(15,'Editar categoría','edit','png','bus_categoria.php',8,2,1),(16,'Editar Botón Admin','edit','png','bus_botones_admin.php',1,2,1),(17,'Agregar submnú','new','png','if_submenu.php',29,2,1),(18,'Editar submnú','edit','png','bus_submenu.php',29,2,1),(19,'Agregar banner','new','png','if_banner.php',9,2,1),(20,'Editar banner','edit','png','bus_banner.php',9,2,1),(21,'Nuevo','new','png','if_proyectos.php',10,2,1),(22,'Editar proyecto','edit','png','bus_proyectos.php',10,2,1),(23,'Agregar usuario','new','png','if_autor.php',3,2,1),(24,'Modificar usuario','edit','png','bus_user.php',3,5,1),(25,'Revisar mensajes','camara','png','bus_mensajes.php',6,2,1),(26,'Revisar visitantes','camara','png','contador.php',7,2,1),(27,'Agregar Resaque','resaque','png','if_resaque.php',2,2,0),(28,'chas','none','png','if_corporativa_a.php',4,2,1),(29,'chas2','none','png','ip_corporativa_a.php',4,2,1),(31,'Agregar botón menú','boton','png','if_botones.php',29,2,1),(32,'Modifica articulo','none','png','if_articulos_a.php',2,2,1),(33,'Modifica categoria','none','png','if_categoria_a.php',2,2,1),(34,'Editar resaque','edit','png','bus_resaque.php',2,2,0),(35,'Editar resaque2','none','png','if_resaque_a.php',2,2,0),(36,'Editar user','none','png','if_autor_a.php',3,2,1),(37,'Editar foto','none','png','if_fotos_a.php',5,2,1),(38,'Revisar mensajes2','none','png','mensaje.php',6,2,1),(39,'borra articulo','none','png','borra.php',2,2,1),(40,'Modifica categoria catalogo','none','png','if_categoria_a.php',8,2,1),(41,'Modifica catalogo','none','png','if_catalogo_a.php',8,2,1),(42,'modificar banner','none','png','if_banner_a.php',9,2,1),(43,'Maqueta','new','png','if_maqueta.php',9,2,1),(44,'Editar maqueta','edit','png','bus_maqueta.php',9,2,1),(45,'Modificar maqueta','none','png','if_maqueta_a.php',9,2,1),(46,'Modificar proyectos','none','png','if_proyectos_a.php',10,2,1),(47,'Agregar publicaci?n','new','png','if_publicaciones.php',11,2,1),(48,'Editar publicaciones','edit','png','bus_publicaciones.php',11,2,1),(49,'Modificar publicaciones','none','png','if_publicaciones_a.php',11,2,1),(50,'Noticia nueva','new','png','if_noticias.php',12,2,1),(51,'Editar noticia','edit','png','bus_noticias.php',12,2,1),(52,'Modificar noticia','none','png','if_noticias_a.php',12,2,1),(53,'Agregar testimonio','new','png','if_testimonios.php',13,2,1),(54,'Editar testimonio','edit','png','bus_testimonios.php',13,2,1),(55,'Modificar testimonio','none','png','if_testimonios_a.php',13,2,1),(56,'configuracion','new','png','if_configura_a.php',14,2,1),(57,'Crear hoja de estilo','new','png','if_templates.php',14,2,1),(58,'templates INVI','none','png','if_templates_a.php',14,2,1),(59,'Editar hoja de estilo','edit','png','bus_templates.php',14,2,1),(60,'Modificar botón menú','edit','png','bus_botones.php',29,2,1),(61,'botones admin INV','none','png','if_botones_admin_a.php',1,2,1),(62,'Agregar evento','new','png','if_evento.php',15,2,1),(63,'Editar evento','edit','png','bus_evento.php',15,2,1),(64,'evento INVI','none','png','if_evento_a.php',15,2,1),(65,'Agregar ponente','new','png','if_imparte.php',15,2,1),(66,'Editar ponente','edit','png','bus_imparte.php',15,2,1),(67,'ponente INVI','none','png','if_imparte_a.php',15,2,1),(68,'Agregar documento','new','png','if_descargar.php',16,2,1),(69,'Editar descarga','edit','png','bus_descargar.php',16,2,1),(70,'descarga INVI','none','png','if_descargar_a.php',16,2,1),(71,'Agregar video','new','png','if_video.php',17,2,1),(72,'Editar video','edit','png','bus_video.php',17,2,1),(73,'Editar video INVI','none','png','if_video_a.php',17,2,1),(74,'Editar boton INVI','none','png','if_botones_a.php',29,2,1),(75,'editar gadget INVI','none','png','if_gadgets_a.php',1,2,1),(76,'Agregar liga','new','png','if_ligas.php',18,2,1),(77,'Editar ligas','edit','png','bus_ligas.php',18,2,1),(78,'Editar ligas INVI','none','png','if_ligas_a.php',18,2,1),(79,'Agrega patrocinador','new','png','if_patrocinador.php',19,2,1),(80,'Editar Patrocinador','edit','png','bus_patrocinador.php',19,2,1),(81,'Editar Patrocinador INVI','none','png','if_patrocinador_a.php',19,2,1),(83,'Agregar/ editar coordinador','edit','png','bus_coordina.php',15,2,1),(84,'Editar coordina INVI','none','png','if_coordina.php',15,2,1),(85,'Agrega d','new','png','if_dia.php',15,2,1),(86,'Edita d','edit','png','bus_dia.php',15,2,1),(87,'Edita d?a INVI','none','png','if_dia_a.php',15,2,1),(88,'Agregar ruta','new','png','if_ruta.php',4,2,1),(89,'Editar ruta','edit','png','bus_ruta.php',4,2,1),(90,'Editar ruta INVI','none','png','if_ruta_a.php',4,2,1),(91,'Agregar resaque','new','png','if_resaque.php',4,2,1),(92,'Editar resaque','edit','png','bus_resaque.php',4,2,1),(93,'Editar resaque INVI','none','png','if_resaque_a.php',4,2,1),(94,'Movimientos','new','png','registro.php',20,3,1),(128,'Edita FAQ','edit','png','bus_faq.php',22,1,1),(127,'Agrega FAQ','new','png','if_faq.php',22,1,1),(97,'Hacer respaldo ahora','new','png','exe_respaldo.php',31,2,1),(123,'Agrega categoria','new','png','if_categoria.php',5,1,1),(99,'Agregar edición','new','png','if_ediciones.php',2,2,1),(100,'Editar edición','edit','png','bus_ediciones.php',2,2,1),(101,'Edta ediciones INVI','none','png','if_ediciones_a.php',2,2,1),(102,'Agrega foto edici?n','new','png','if_fotoedicion.php',2,2,0),(103,'Edita fotoedicion','edit','png','bus_fotoedicion.php',2,2,0),(104,'Edita fotoedicion INVI','none','png','if_fotoedicion_a.php',2,2,0),(105,'Redactar mail masivo','edit','png','if_massive_mail.php',6,2,1),(106,'Edita mail masivo','edit','png','bus_massive_mail.php',6,2,1),(107,'Crea grupo env','new','png','if_massive_grupo.php',6,2,1),(108,'Edita grupo env','edit','png','bus_massive_grupo.php',6,2,1),(109,'Edita grupo env?o INVI','none','png','if_massive_grupo_a.php',6,2,1),(110,'Editar mail masivo INVI','none','png','if_massive_mail_a.php',6,2,1),(111,'enviado','none','png','enviado.php',6,2,1),(112,'EXE mail INVI','none','png','exe_massive_mail.php',6,2,1),(113,'Agrega contacto','new','png','if_massive_directorio.php',6,2,1),(114,'Editar contacto','edit','png','bus_massive_directorio.php',6,2,1),(115,'Editar contacto INVI','none','png','if_massive_directorio_a.php',6,2,1),(116,'PDF','new','png','pdf.php',6,2,1),(117,'Agrega contenido idioma','new','png','if_content.php',21,1,1),(118,'Editar contenido idioma','edit','png','bus_content.php',21,1,1),(119,'Editar idioma INVI','none','png','if_content_a.php',21,1,1),(120,'Agregar idioma','new','png','if_language.php',21,1,1),(121,'Editar idioma','edit','png','bus_language.php',21,1,1),(122,'Editar idioma INVI','none','png','if_language_a.php',21,1,1),(124,'Edita categoria','edit','png','bus_categoria.php',5,1,1),(125,'Edita catetgoria INVI','none','png','if_categoria_a.php',5,1,1),(126,'Clientes registrados','boton','png','bus_directorio.php',20,3,1),(129,'Edita FAQ INVI','none','png','if_faq_a.php',22,1,1),(130,'TEST','boton','png','ip_registro_a.php',15,1,1),(131,'Agrega categoria','new','png','if_categoria.php',22,1,1),(132,'Edita categoria','edit','png','bus_categoria.php',22,1,1),(133,'Edita categoria INVI','none','png','if_categoria_a.php',22,1,1),(134,'Clientes registrados INVO','none','png','if_directorio_a.php',20,1,1),(145,'TEST','new','png','test.php',8,1,0),(144,'Asigna piezas al INVI','none','png','bus_asigna.php',8,1,1),(138,'Agregar movimiento','new','png','if_registro.php',20,3,1),(139,'Edita registro INVI','none','png','if_registro_a.php',20,2,1),(140,'Agrega etiqueta','new','png','if_label.php',8,2,0),(141,'Edita etiqueta','edit','png','bus_label.php',8,2,0),(142,'Edita etiqueta INVI','none','png','if_label_a.php',8,2,1),(143,'Asigna piezas catalogo INVI','none','png','scroll_tool.php',8,2,1),(146,'Respaldos en sistema','edit','png','bus_respaldo.php',31,2,1),(147,'Agrega código','new','png','if_qr.php',32,2,1),(148,'Edita código','edit','png','bus_qr.php',32,2,1),(149,'Edita código INVI','none','png','if_qr_a.php',32,2,1),(150,'contenidos','edit','png','bus_contenidos.php',34,1,1),(151,'mostrar INVI','none','png','sh_contenidos.php',34,1,1),(152,'correcto INVI','none','png','correcto.php',34,1,1),(153,'abrir','calculator','png','abrir.php',35,4,1),(154,'caja INVI','none','png','caja.php',35,4,1),(155,'Cerrar caja INVI','none','png','ip_cerrar.php',35,4,1),(156,'Agrega complex template','new','png','if_complex.php',14,1,1),(157,'Edita complex template','edit','png','bus_complex.php',14,1,1),(158,'Edita complex template INVi','none','png','if_complex_a.php',14,1,1),(159,'+ fotos','camara','png','if_masfotos.php',8,2,1),(160,'Edita + fotos','photo','png','bus_masfotos.php',8,2,1),(161,'Edita + fotos INVI','none','png','if_masfotos_a.php',8,2,1);
/*!40000 ALTER TABLE `gadgets_botones_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gadgets_botones_posicion`
--

DROP TABLE IF EXISTS `gadgets_botones_posicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gadgets_botones_posicion` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(10) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadgets_botones_posicion`
--

LOCK TABLES `gadgets_botones_posicion` WRITE;
/*!40000 ALTER TABLE `gadgets_botones_posicion` DISABLE KEYS */;
/*!40000 ALTER TABLE `gadgets_botones_posicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gadgets_index`
--

DROP TABLE IF EXISTS `gadgets_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gadgets_index` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `gadget` varchar(20) NOT NULL DEFAULT '',
  `ruta` varchar(50) NOT NULL DEFAULT '',
  `visible` smallint(1) NOT NULL DEFAULT '0',
  `privilegios` smallint(1) NOT NULL DEFAULT '1',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gadgets_index`
--

LOCK TABLES `gadgets_index` WRITE;
/*!40000 ALTER TABLE `gadgets_index` DISABLE KEYS */;
INSERT INTO `gadgets_index` VALUES (1,'gadgets','if_gadgets.php',1,1),(2,'articulos','if_articulos.php',1,2),(3,'usuario','if_autor.php',1,5),(4,'corporativa','if_corporativa.php',1,2),(5,'fotos','if_fotos.php',1,2),(6,'mensajes','bus_mensajes.php',1,5),(7,'contador','contador.php',1,2),(8,'catalogo','if_catalogo.php',1,2),(9,'banners','if_banner.php',1,2),(10,'proyectos','if_proyectos.php',1,2),(11,'publicaciones','if_publicaciones.php',1,2),(12,'noticias','if_noticias.php',1,2),(13,'testimonios','if_testimonios.php',1,2),(14,'configura','if_configura_a.php',1,1),(15,'congreso','if_evento.php',1,2),(16,'descargar','if_descargar.php',1,2),(17,'video','if_video.php',1,2),(18,'ligas','if_ligas.php',1,2),(19,'patrocinador','if_patrocinador.php',1,2),(20,'comprar','registro.php',1,5),(21,'language','if_language.php',1,1),(22,'faq','if_faq.php',0,1),(23,'hotel','if_habitacion.php',0,1),(24,'homeopop','if_medicamento.php',0,1),(25,'genealogia','if_registro.php',0,1),(27,'citas','if_citas.php',0,1),(28,'consulta','if_consulta.php',1,1),(29,'menus','if_botones.php',1,1),(30,'eventos','if_eventos.php',1,1),(31,'respaldo','bus_respaldo.php',1,2),(32,'qr','if_qr.php',1,2),(33,'quiz','if_quiz.php',1,1),(34,'socialmedia','bus_contenidos.php',1,1),(35,'caja','caja.php',1,4);
/*!40000 ALTER TABLE `gadgets_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_ext`
--

DROP TABLE IF EXISTS `general_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_ext` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL,
  `descripcion` varchar(20) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_ext`
--

LOCK TABLES `general_ext` WRITE;
/*!40000 ALTER TABLE `general_ext` DISABLE KEYS */;
INSERT INTO `general_ext` VALUES (0,'ninguno','sin formato'),(1,'jpg','fotos'),(2,'png','fotos'),(3,'swf','flash'),(4,'mov','video'),(5,'avi','video');
/*!40000 ALTER TABLE `general_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_orientacion`
--

DROP TABLE IF EXISTS `general_orientacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_orientacion` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_orientacion`
--

LOCK TABLES `general_orientacion` WRITE;
/*!40000 ALTER TABLE `general_orientacion` DISABLE KEYS */;
INSERT INTO `general_orientacion` VALUES (1,'horizontal'),(2,'vertical');
/*!40000 ALTER TABLE `general_orientacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_visible`
--

DROP TABLE IF EXISTS `general_visible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_visible` (
  `id` smallint(1) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(5) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_visible`
--

LOCK TABLES `general_visible` WRITE;
/*!40000 ALTER TABLE `general_visible` DISABLE KEYS */;
INSERT INTO `general_visible` VALUES (0,'No'),(1,'Si');
/*!40000 ALTER TABLE `general_visible` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_content`
--

DROP TABLE IF EXISTS `language_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `subtitulo` varchar(50) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `idioma` int(5) NOT NULL,
  `vinculo` int(11) NOT NULL,
  `contenido` text,
  `visible` smallint(1) NOT NULL DEFAULT '0',
  `secc_vincula` varchar(50) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_content`
--

LOCK TABLES `language_content` WRITE;
/*!40000 ALTER TABLE `language_content` DISABLE KEYS */;
INSERT INTO `language_content` VALUES (1,'Calappa','Sayulita · Villas','','',2,1,'<p>Es un conjunto de tres villas de lujo, ubicadas dentro del exclusivo condominio P&aacute;jaro de Fuego*, en Sayulita, Nayarit. Cada una de ellas est&aacute; equipada con aire acondicionado, televisi&oacute;n de pantalla plana en la sala de estar y en cada habitaci&oacute;n, lavavajillas, lavadora, calentador de agua, en fin. Habr&iacute;a que dar click a los botones correspondientes a las villas, para ver en lo particular qu&eacute; ofrece cada una.</p>\r\n<p>El condominio est&aacute; a menos de diez minutos de la playa, caminando; a veinte, en coche, del Aeropuerto Internacional de Puerto Vallarta; y muy pr&oacute;ximo a m&aacute;s de cinco campos de golf e innumerables restaurantes y boutiques. D&eacute; un paseo por las p&aacute;ginas de nuestro sitio, empiece ahora mismo a descubrir la Riviera Nayarit.</p>\r\n<p>&nbsp;</p>',1,''),(2,'','','En donde','fork',2,14,'',1,'gadgets_botones'),(3,'','','Pueblo','village',2,15,'',1,'gadgets_botones'),(4,'','','Servicios','wash',2,16,'',1,'gadgets_botones'),(5,'','','Me gusta','f',2,5,'',1,'gadgets_botones'),(6,'','','Danos un +','g+',2,6,'',1,'gadgets_botones'),(7,'','','Pinea algo','p',2,7,'',1,'gadgets_botones'),(8,'','','Inicio','',2,1,'',1,'gadgets_botones'),(9,'','','Villa BlueCrab','',2,2,'',1,'gadgets_botones'),(10,'','','Villa RedCrab','',2,3,'',1,'gadgets_botones'),(11,'','','Villa GreenCrab','',2,4,'',1,'gadgets_botones'),(12,'','','Disponibilidad','availability',2,11,'',1,'gadgets_botones'),(13,'','','Sayulita','palm',2,8,'',1,'gadgets_botones'),(14,'','','Alrededor','around',2,10,'',1,'gadgets_botones'),(15,'','','Campos de Golf','golf',2,17,'',1,'gadgets_botones'),(16,'','','Aeropuerto','plane',2,18,'',1,'gadgets_botones'),(17,'','','Actividades','dolphin',2,19,'',1,'gadgets_botones'),(18,'','','Contacto','contat',2,9,'',1,'gadgets_botones'),(19,'','','español','es',2,12,'',1,'gadgets_botones'),(20,'','','english','us',2,13,'',1,'gadgets_botones'),(21,'Acerca de Calappa','','','logo',2,5,'<p>Es una voz con que se distingue a un g&eacute;nero de cangrego, pertenecientes a la familia Calappidae, de donde deriva el Cangrejo Real. En la antig&uuml;edad se le relacionaba con la permanencia y la dureza, por asociaci&oacute;n con su caparaz&oacute;n. Puede ser un s&iacute;mbolo de evasi&oacute;n y contemplaci&oacute;n &mdash;locuci&oacute;n espa&ntilde;ola de: pensando en la inmortalidad del cangrejo&mdash;.</p>\r\n<p>En filosof&iacute;a, la inmortalidad del cangrejo se basa en que el cangrejo no tiene conciencia de s&iacute; mismo, y por lo tanto, tampoco tiene conciencia de que su existencia acabar&aacute;. Desde su punto de vista, y a todo efecto pr&aacute;ctico para &eacute;l mismo, el cangrejo es inmortal. Por ello, en la antig&uuml;edad, tanto al cangrejo como al escarabajo se les utiliz&oacute; para representar la inmortalidad.</p>\r\n<p>En ese sentido evasivo, hemos pensado en utilizar al cangrejo. Y concretamente a ese cangrejo rojo, que parece un ba&ntilde;ista saj&oacute;n que ha estado mucho tiempo expuesto al sol.<br />Un ba&ntilde;ista de ojos azules: un gringo. Y la idea es que, sin decirlo, el cliente se sienta invitado por alguien parecido a &eacute;l, que lo mira a los ojos sin parpadear.</p>\r\n<p>&nbsp;</p>',1,'corporativa_index'),(22,'','','Sesión','',2,20,'',1,'gadgets_botones'),(23,'','','Alojamiento','hosting',2,21,'',1,'gadgets_botones'),(24,'','','Testimonios','pen',2,22,'',1,'gadgets_botones'),(25,'','','Preguntas frecuentes','faq',2,23,'',1,'gadgets_botones');
/*!40000 ALTER TABLE `language_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_index`
--

DROP TABLE IF EXISTS `language_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_index` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_index`
--

LOCK TABLES `language_index` WRITE;
/*!40000 ALTER TABLE `language_index` DISABLE KEYS */;
INSERT INTO `language_index` VALUES (1,'english',''),(2,'español','');
/*!40000 ALTER TABLE `language_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligas_index`
--

DROP TABLE IF EXISTS `ligas_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ligas_index` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `ruta` varchar(150) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `localidad` int(2) NOT NULL DEFAULT '0',
  `imagen` varchar(30) DEFAULT NULL,
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `orden` smallint(2) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligas_index`
--

LOCK TABLES `ligas_index` WRITE;
/*!40000 ALTER TABLE `ligas_index` DISABLE KEYS */;
INSERT INTO `ligas_index` VALUES (1,'Academia Mexicana de Neurología, A. C.','http://www.neurologia.org.mx','Es un órgano colegiado que agrupa a más de 1,000 Neurólogos nacionales y extranjeros.					',0,'amn.jpg',1,NULL);
/*!40000 ALTER TABLE `ligas_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_index`
--

DROP TABLE IF EXISTS `mails_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dirigido` varchar(120) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '0',
  `titulo` varchar(255) NOT NULL DEFAULT '',
  `mensaje` text,
  `tiempo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `replies` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mensaje_id` (`replies`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_index`
--

LOCK TABLES `mails_index` WRITE;
/*!40000 ALTER TABLE `mails_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `mails_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_massive_confirmacion`
--

DROP TABLE IF EXISTS `mails_massive_confirmacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_massive_confirmacion` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_confirmacion`
--

LOCK TABLES `mails_massive_confirmacion` WRITE;
/*!40000 ALTER TABLE `mails_massive_confirmacion` DISABLE KEYS */;
INSERT INTO `mails_massive_confirmacion` VALUES (0,'sin confirmar'),(1,'confirmado'),(2,'no va');
/*!40000 ALTER TABLE `mails_massive_confirmacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_massive_directorio`
--

DROP TABLE IF EXISTS `mails_massive_directorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_massive_directorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `grupo` smallint(1) NOT NULL DEFAULT '1',
  `telefono_celular` varchar(20) DEFAULT NULL,
  `telefono_particular` varchar(20) DEFAULT NULL,
  `telefono_trabajo` varchar(20) DEFAULT NULL,
  `invitacion` smallint(1) NOT NULL DEFAULT '1',
  `confirmacion` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_directorio`
--

LOCK TABLES `mails_massive_directorio` WRITE;
/*!40000 ALTER TABLE `mails_massive_directorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `mails_massive_directorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_massive_directorio_invi`
--

DROP TABLE IF EXISTS `mails_massive_directorio_invi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_massive_directorio_invi` (
  `id` smallint(1) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_directorio_invi`
--

LOCK TABLES `mails_massive_directorio_invi` WRITE;
/*!40000 ALTER TABLE `mails_massive_directorio_invi` DISABLE KEYS */;
INSERT INTO `mails_massive_directorio_invi` VALUES (1,'Sólo mail'),(2,'Con estac.'),(3,'Sin estac.');
/*!40000 ALTER TABLE `mails_massive_directorio_invi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_massive_enviados`
--

DROP TABLE IF EXISTS `mails_massive_enviados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_massive_enviados` (
  `id` smallint(1) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(2) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_enviados`
--

LOCK TABLES `mails_massive_enviados` WRITE;
/*!40000 ALTER TABLE `mails_massive_enviados` DISABLE KEYS */;
INSERT INTO `mails_massive_enviados` VALUES (0,'No'),(1,'Si');
/*!40000 ALTER TABLE `mails_massive_enviados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_massive_grupo`
--

DROP TABLE IF EXISTS `mails_massive_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_massive_grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text,
  `imagen` varchar(50) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_grupo`
--

LOCK TABLES `mails_massive_grupo` WRITE;
/*!40000 ALTER TABLE `mails_massive_grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mails_massive_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_massive_mensajes`
--

DROP TABLE IF EXISTS `mails_massive_mensajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_massive_mensajes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `mensaje` text,
  `grupo` smallint(2) NOT NULL DEFAULT '1',
  `enviado` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_mensajes`
--

LOCK TABLES `mails_massive_mensajes` WRITE;
/*!40000 ALTER TABLE `mails_massive_mensajes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mails_massive_mensajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_massive_phone`
--

DROP TABLE IF EXISTS `mails_massive_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_massive_phone` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `numero` varchar(20) NOT NULL,
  `vincula` int(11) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_phone`
--

LOCK TABLES `mails_massive_phone` WRITE;
/*!40000 ALTER TABLE `mails_massive_phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `mails_massive_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails_massive_relacion`
--

DROP TABLE IF EXISTS `mails_massive_relacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails_massive_relacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mensaje_id` int(11) NOT NULL,
  `directorio_id` int(11) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails_massive_relacion`
--

LOCK TABLES `mails_massive_relacion` WRITE;
/*!40000 ALTER TABLE `mails_massive_relacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `mails_massive_relacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_botones`
--

DROP TABLE IF EXISTS `menus_botones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_botones` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `posicion` int(1) NOT NULL DEFAULT '0',
  `imagen` varchar(20) NOT NULL DEFAULT '',
  `ruta` text NOT NULL,
  `privilegios` smallint(1) NOT NULL DEFAULT '2',
  `submenu` smallint(1) NOT NULL DEFAULT '0',
  `visible` smallint(1) NOT NULL DEFAULT '1',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_botones`
--

LOCK TABLES `menus_botones` WRITE;
/*!40000 ALTER TABLE `menus_botones` DISABLE KEYS */;
INSERT INTO `menus_botones` VALUES (1,'Inicio',2,'','index.php',2,0,1),(2,'Servicios',2,'','servicios.php',2,0,1),(3,'Nosotros',2,'','corporativa.php?rubro=2',2,0,1),(4,'Contacto',2,'','contacto.php',2,0,1),(5,'Aviso legal',2,'','corporativa.php?rubro=3',2,0,1),(6,'Privacidad',2,'','corporativa.php?rubro=4',2,0,1);
/*!40000 ALTER TABLE `menus_botones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_posicion`
--

DROP TABLE IF EXISTS `menus_posicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_posicion` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(10) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_posicion`
--

LOCK TABLES `menus_posicion` WRITE;
/*!40000 ALTER TABLE `menus_posicion` DISABLE KEYS */;
INSERT INTO `menus_posicion` VALUES (0,'Ninguno',''),(1,'Central',''),(2,'Izq. Superior',''),(3,'Der. Superior',''),(4,'Izq. Inferior',''),(5,'Der. Inferior',''),(6,'Inferior',''),(7,'Superior','');
/*!40000 ALTER TABLE `menus_posicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_submenu`
--

DROP TABLE IF EXISTS `menus_submenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_submenu` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `vin` int(3) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_submenu`
--

LOCK TABLES `menus_submenu` WRITE;
/*!40000 ALTER TABLE `menus_submenu` DISABLE KEYS */;
INSERT INTO `menus_submenu` VALUES (0,'Ninguno',0);
/*!40000 ALTER TABLE `menus_submenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticias_index`
--

DROP TABLE IF EXISTS `noticias_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias_index` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL DEFAULT '',
  `subtitulo` varchar(50) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `banner` smallint(6) NOT NULL DEFAULT '0',
  `publicado` smallint(1) NOT NULL DEFAULT '0',
  `autor` int(5) NOT NULL DEFAULT '0',
  `ruta` smallint(2) NOT NULL DEFAULT '0',
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `imagen` varchar(50) NOT NULL DEFAULT '',
  `orden` int(2) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias_index`
--

LOCK TABLES `noticias_index` WRITE;
/*!40000 ALTER TABLE `noticias_index` DISABLE KEYS */;
INSERT INTO `noticias_index` VALUES (1,'Presentación del libro: Recuerdos Circulares','Ficción-Novela','<p>El d&iacute;a veintiocho de octubre de 2012, a las veinte treinta horas, se presentar&aacute; la primera novela de Olga Diaque, en la Fundaci&oacute;n &Aacute;lvarez del Castillo.</p>',0,1,0,0,'2012-09-27 02:18:49','recuerdoscirculares',0);
/*!40000 ALTER TABLE `noticias_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patrocinador_index`
--

DROP TABLE IF EXISTS `patrocinador_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patrocinador_index` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `ruta` varchar(150) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `localidad` int(2) NOT NULL DEFAULT '0',
  `imagen` varchar(30) DEFAULT NULL,
  `visible` smallint(1) NOT NULL DEFAULT '1',
  `orden` smallint(2) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patrocinador_index`
--

LOCK TABLES `patrocinador_index` WRITE;
/*!40000 ALTER TABLE `patrocinador_index` DISABLE KEYS */;
INSERT INTO `patrocinador_index` VALUES (1,'Novartis','http://www.novartis.com.mx/10ybrand/NOVARTIS_WEB_2009/Soft_Templates/index.html','																		',0,'novartis.jpg',1,1),(2,'Probiomed','http://www.probiomed.com.mx/info.php?Lang=es','										',0,'probiomed.jpg',1,2),(3,'GENZYME','http://www.genzyme.com.mx/corp/mxgenz/gzla_p_ci_mx.asp','										',0,'genzyme.jpg',1,5),(4,'Boehringer','http://www.boehringer-ingelheim.com.mx/','										',0,'boehringer.jpg',1,4),(5,'UCB','http://www.ucb.com/worldwide/mexico','															',0,'ucb.jpg',1,3),(6,'Psicopharma','http://www.lokarri.com.mx/portfolio/laboratorios-psicopharma/','										',0,'psicopharma.jpg',1,7),(7,'Behring','http://www.cslbehring.com.mx/homepage','										',0,'behring.jpg',1,6),(8,'Merz Pharma','http://www.merz.com.mx/','										',0,'merz.jpg',0,NULL),(9,'ABBOTT','http://www.abbott.com/global/url/content/en_US/10.40.270:270/general_content/Global_Location_Profile_0055.htm','										',0,'abbott.jpg',1,8),(10,'Lundbeck','http://www.lundbeck.com/mx','															',0,'lundbeck.jpg',1,9),(11,'Comercializadora Electromed','http://www.annimss.org','					',0,'electromed.jpg',1,10),(12,'Cenarem','http://cenarem.com.mx/','					',0,'cenarem.jpg',1,11);
/*!40000 ALTER TABLE `patrocinador_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_index`
--

DROP TABLE IF EXISTS `personal_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_index` (
  `id` bigint(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `cargo` varchar(50) NOT NULL DEFAULT '',
  `contacto` varchar(50) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `imagen` varchar(10) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_index`
--

LOCK TABLES `personal_index` WRITE;
/*!40000 ALTER TABLE `personal_index` DISABLE KEYS */;
INSERT INTO `personal_index` VALUES (1,'Dr. David Chung Arceo','Director General','direccion@ortobiologicos.org','','david'),(2,'Dr. Agnet Adeim To','Responsable Sanitario','agnet@otobiologicos.org','',''),(3,'Agnet Adeim Ot','responsable de Calidad','agnet@otobiologicos.org','',''),(4,'Agnet Adeim Ot','Subdirector MÃ©dico','agnet@otobiologicos.org','',''),(5,'Agnet Adeim Ot','Director de Operaciones','agnet@otobiologicos.org','',''),(6,'Agnet Adeim Ot','Equipo de procuraciÃ³n','agnet@otobiologicos.org','',''),(7,'Agnet Adeim Ot','Proceso','agnet@otobiologicos.org','',''),(8,'Agnet Adeim Ot','Acondicionamiento','agnet@otobiologicos.org','',''),(9,'Juan Pedro','Vendedor de Pitayas','pitaya@ortobiologicos.org','','');
/*!40000 ALTER TABLE `personal_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posicion_banner`
--

DROP TABLE IF EXISTS `posicion_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posicion_banner` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posicion_banner`
--

LOCK TABLES `posicion_banner` WRITE;
/*!40000 ALTER TABLE `posicion_banner` DISABLE KEYS */;
INSERT INTO `posicion_banner` VALUES (1,'cabezal'),(2,'bann1'),(3,'bann2'),(4,'bann3'),(5,'bann4'),(6,'footer'),(7,'pestana');
/*!40000 ALTER TABLE `posicion_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos_index`
--

DROP TABLE IF EXISTS `proyectos_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectos_index` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL DEFAULT '',
  `contenido` text,
  `cliente` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `proyecto` varchar(50) DEFAULT NULL,
  `publicado` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos_index`
--

LOCK TABLES `proyectos_index` WRITE;
/*!40000 ALTER TABLE `proyectos_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyectos_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicaciones_index`
--

DROP TABLE IF EXISTS `publicaciones_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicaciones_index` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL DEFAULT '',
  `genero` varchar(50) NOT NULL DEFAULT '',
  `editor` varchar(250) NOT NULL DEFAULT '',
  `ext` varchar(50) NOT NULL DEFAULT '',
  `year` int(4) NOT NULL DEFAULT '0',
  `imagen` varchar(20) DEFAULT NULL,
  `contenido` text,
  `publicado` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicaciones_index`
--

LOCK TABLES `publicaciones_index` WRITE;
/*!40000 ALTER TABLE `publicaciones_index` DISABLE KEYS */;
INSERT INTO `publicaciones_index` VALUES (1,'Adán y Eva','Ficción','SOGEM, escuela de escritores','43',2007,'caleidoscopio','',1),(2,'El gallo se mata la primera noche','Obra de teatro, ficción','SOGEM, escuela de escritores','50',2008,'elgallosemata','',1);
/*!40000 ALTER TABLE `publicaciones_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qr_index`
--

DROP TABLE IF EXISTS `qr_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qr_index` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `descripcion` text,
  `url` varchar(250) NOT NULL,
  `qr` varchar(250) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qr_index`
--

LOCK TABLES `qr_index` WRITE;
/*!40000 ALTER TABLE `qr_index` DISABLE KEYS */;
INSERT INTO `qr_index` VALUES (2,'','boletinesmediospan@gmail.com','boletines_medios_pan'),(4,'','magistroni','magistroni');
/*!40000 ALTER TABLE `qr_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_complex`
--

DROP TABLE IF EXISTS `template_complex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_complex` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `content` varchar(150) NOT NULL,
  `visible` smallint(1) NOT NULL DEFAULT '0',
  `orden` smallint(3) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_complex`
--

LOCK TABLES `template_complex` WRITE;
/*!40000 ALTER TABLE `template_complex` DISABLE KEYS */;
INSERT INTO `template_complex` VALUES (1,'banners/bann00_articulos.php',1,1),(2,'banners/bann00_detalle_index.php',1,2),(3,'banners/bann00_cunas.php',1,3),(4,'',1,4);
/*!40000 ALTER TABLE `template_complex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_general`
--

DROP TABLE IF EXISTS `template_general`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_general` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `subtitulo` varchar(50) DEFAULT NULL,
  `correo1` varchar(50) DEFAULT NULL,
  `correo2` varchar(50) DEFAULT NULL,
  `correo3` varchar(50) DEFAULT NULL,
  `metatags` text,
  `dia` time DEFAULT NULL,
  `noche` time DEFAULT NULL,
  `url` varchar(250) NOT NULL,
  `pagina` varchar(100) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_general`
--

LOCK TABLES `template_general` WRITE;
/*!40000 ALTER TABLE `template_general` DISABLE KEYS */;
INSERT INTO `template_general` VALUES (1,'Bunker Político','','contacto@bunkerpolitico.net','','','','00:00:00','00:00:00','../../../../htdocs','');
/*!40000 ALTER TABLE `template_general` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_index`
--

DROP TABLE IF EXISTS `template_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_index` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `css` varchar(50) NOT NULL,
  `title` varchar(150) NOT NULL DEFAULT '',
  `header` varchar(150) NOT NULL DEFAULT '',
  `navbar` varchar(150) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `tit_maincontent` varchar(150) DEFAULT NULL,
  `maincontent` varchar(150) DEFAULT NULL,
  `main_object` varchar(150) DEFAULT NULL,
  `detail` varchar(150) DEFAULT NULL,
  `footer` varchar(150) NOT NULL DEFAULT '',
  `pagina` varchar(20) NOT NULL DEFAULT 'default',
  `bann1` varchar(150) DEFAULT NULL,
  `bann2` varchar(150) DEFAULT NULL,
  `bann3` varchar(150) DEFAULT NULL,
  `bann4` varchar(150) DEFAULT NULL,
  `bann0` varchar(150) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_index`
--

LOCK TABLES `template_index` WRITE;
/*!40000 ALTER TABLE `template_index` DISABLE KEYS */;
INSERT INTO `template_index` VALUES (1,'general.css','Búnker Político','banners/slogan.php','style/nav.php','banners/logo.php','','','banners/bann00_indexBB.php','chess-index.png','','index','','','','',''),(2,'corporativa.css','Corporativa','banners/slogan.php','style/nav.php','banners/logo.php','','','banners/bann0_corporativa.php','banners/bann00_servicios.php','style/nav_inf.php','corporativa','','','','',''),(3,'contacto.css','Contacto','','style/nav.php','banners/logo.php','','','banners/bann0_contacto.php','','','contacto','','','','',''),(4,'servicios.css','Servicios','banners/slogan.php','style/nav.php','banners/logo.php','','','banners/bann0_servicios.php','','style/nav_inf.php','servicios','','','','',''),(5,'imagen.css','Imagen','banners/slogan.php','style/nav.php','banners/logo.php','','banners/bann0_imagen.php','banners/bann00_indexBB.php','chess-index.png','','imagen','','','','',''),(8,'style_admin.css','Panel de control','style/header.php','style/botones_admin.php','','panel_de_control','contained.php','','style/botones_aux.php','style/footer.php','default','banners/bann1_catalogo.php','','','',''),(9,'style_admin.css','Panel de control','style/header.php','style/botones_admin.php','','panel_de_control','panel.php',NULL,'style/botones_aux.php','style/footer.php','default',NULL,NULL,NULL,NULL,NULL),(6,'comunicacion.css','ComunicaciÃ³n','banners/slogan.php','style/nav.php','banners/logo.php','','','banners/bann00_indexBB.php','2.jpg','','comunicacion','','','','',''),(7,'marketing.css','Marketing Digital','banners/slogan.php','style/nav.php','banners/logo.php','','','banners/bann00_indexBB.php','3.jpg','','marketing_digital','','','','',''),(10,'herramientas.css','Herramientas','banners/slogan.php','style/nav.php','banners/logo.php','','','banners/bann00_indexBB.php','5.jpg','','herramientas','','','','','');
/*!40000 ALTER TABLE `template_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonios_index`
--

DROP TABLE IF EXISTS `testimonios_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonios_index` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL DEFAULT '',
  `contenido` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orden` int(2) NOT NULL DEFAULT '0',
  `imagen` varchar(50) DEFAULT NULL,
  `visible` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonios_index`
--

LOCK TABLES `testimonios_index` WRITE;
/*!40000 ALTER TABLE `testimonios_index` DISABLE KEYS */;
INSERT INTO `testimonios_index` VALUES (1,'Fornido González de la O','<p>Se denomina Testimonio flaviano (en lat&iacute;n Testimonium flavianum) a los p&aacute;rrafos 63 y 64 del cap&iacute;tulo XVIII del libro Antig&uuml;edades jud&iacute;as (Antiquitates Iudaicae) escrito por el historiador jud&iacute;o Flavio Josefo, en los que se menciona a Jes&uacute;s de Nazaret. Las Antig&uuml;edades jud&iacute;as son una cr&oacute;nica escrita hacia el a&ntilde;o 93 d.C., que narra la historia del pueblo jud&iacute;o de una manera razonablemente completa. Los intereses de Flavio Josefo &mdash;entre ellos ganar la simpat&iacute;a de Roma hacia los jud&iacute;os&mdash; lo llevan, sin embargo, a minimizar las noticias que pudieran resultar conflictivas. Josefo no menciona a los l&iacute;deres del peque&ntilde;o grupo de cristianos (Pedro y Pablo) ni a Mar&iacute;a (la madre de Jes&uacute;s).&nbsp;</p>','2011-05-28 03:12:21',0,'nelson',1),(2,'Una maravilla de producto','<p>Cada vez que lo uso, me dan ganas de comprar unos veinte m&aacute;s. &iexcl;Qu&eacute; maravilla! Siiiiiiii</p>','2011-05-30 18:34:19',0,'phil',0),(3,'Señora Josefina','<p>Del verbo testimoniar: (conjugar) testimonio es: 1&ordf; persona singular (yo) presente indicativo testimoni&oacute; es: 3&ordf; persona singular (&eacute;l/ella/usted) pret&eacute;rito indicativo  Diccionario de la lengua espa&ntilde;ola &copy; 2005 Espasa-Calpe: testimonio  m. Declaraci&oacute;n en que se afirma o asegura alguna cosa: el testimonio de la acusada no convenci&oacute; al jurado. Prueba, justificaci&oacute;n y comprobaci&oacute;n de la certeza o existencia de una cosa: con este libro quiere dar testimonio de la presencia de Dios en su vida. Documento autorizado por notario en que se da fe de un hecho.  Diccionario de la lengua espa&ntilde;ola &copy; 2005 Espasa-Calpe: testimoniar conjugar &rArr;  tr. Servir</p>','2012-07-07 16:28:18',0,'josefina',1);
/*!40000 ALTER TABLE `testimonios_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_index`
--

DROP TABLE IF EXISTS `usuario_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(128) NOT NULL DEFAULT '',
  `passwd` varchar(128) DEFAULT NULL,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `imagen` varchar(10) NOT NULL DEFAULT '',
  `nombramiento` varchar(50) NOT NULL DEFAULT '',
  `perfil` text NOT NULL,
  `maill` varchar(35) NOT NULL DEFAULT '',
  `telefono` varchar(30) NOT NULL DEFAULT '',
  `celular` varchar(30) NOT NULL DEFAULT '',
  `domicilio` varchar(250) NOT NULL DEFAULT '',
  `poblacion` varchar(150) NOT NULL DEFAULT '',
  `colaborador` smallint(2) NOT NULL DEFAULT '0',
  `privilegios` smallint(2) NOT NULL DEFAULT '5',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` timestamp NULL DEFAULT NULL,
  `cp` int(8) DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `rfc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_index`
--

LOCK TABLES `usuario_index` WRITE;
/*!40000 ALTER TABLE `usuario_index` DISABLE KEYS */;
INSERT INTO `usuario_index` VALUES (1,'ferbere','b66a5c2600e9f61e6163bb1051457946','RamsesFigueroa','HellboGDL','webmaster','','ramses@ferbere.com','10·86·2136','11·32·3773','Revolución casi 200','Santa Anita, jalisco',0,1,NULL,NULL,NULL,NULL,NULL),(2,'patogp','1f0f70bf2b5ad94c7387e64c16dc455a','Patricia García','','','','patogp77@gmail.com','10862136','3311496013','Revolución casi 200','Santa Anita, Col. Ponciano Arriaga',0,2,'2012-11-28 01:54:03',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `usuario_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_privilegios`
--

DROP TABLE IF EXISTS `usuario_privilegios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_privilegios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_privilegios`
--

LOCK TABLES `usuario_privilegios` WRITE;
/*!40000 ALTER TABLE `usuario_privilegios` DISABLE KEYS */;
INSERT INTO `usuario_privilegios` VALUES (1,'ferbere'),(2,'admin'),(3,'directivo'),(4,'funcionario'),(5,'asociado');
/*!40000 ALTER TABLE `usuario_privilegios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_index`
--

DROP TABLE IF EXISTS `video_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  `fecha` varchar(150) DEFAULT NULL,
  `liga` varchar(250) DEFAULT NULL,
  `descripcion` text,
  `visible` smallint(1) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_index`
--

LOCK TABLES `video_index` WRITE;
/*!40000 ALTER TABLE `video_index` DISABLE KEYS */;
INSERT INTO `video_index` VALUES (1,'Niños con TDAH (Padres y Profesores)','Lunes 18 de junio, 2012','http://www.youtube.com/embed/cdlG2VNgTCk','',1),(2,'Enfermedad neurológica por alteración de neurotransmisores','Lunes 18 de junio, 2012','http://www.youtube.com/embed/bICj4qfDAaA','',0),(3,'Enfermedad con importancia en su diagnóstico precoz','Lunes 18 de junio, 2012','http://www.youtube.com/embed/5FQ9GZnZB64','',1),(4,'Enfermedad neurologica subdiagnosticada','Lunes 18 de junio, 2012','http://www.youtube.com/embed/wz3vrdlrLOg','',1);
/*!40000 ALTER TABLE `video_index` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-11  4:41:34
