-- MySQL dump 10.16  Distrib 10.1.25-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: analisisf2017
-- ------------------------------------------------------
-- Server version	10.2.9-MariaDB-10.2.9+maria~jessie

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
-- Table structure for table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentas` (
  `id_cuenta` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `id_tipo_cuenta` int(11) NOT NULL,
  `id_tipo_estado` int(11) NOT NULL,
  `tipo_saldo` char(1) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_cuenta`),
  KEY `tipo_cuenta_idx` (`id_tipo_cuenta`),
  KEY `tipo_estado_idx` (`id_tipo_estado`),
  CONSTRAINT `tipo_cuenta` FOREIGN KEY (`id_tipo_cuenta`) REFERENCES `tipo_cuenta` (`id_tipo_cuenta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tipo_estado` FOREIGN KEY (`id_tipo_estado`) REFERENCES `tipo_estado` (`id_tipo_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` VALUES (10000000,'ACTIVOS',1,1,'H',''),(11000000,'ACTIVOS CORRIENTES',1,1,'H',''),(11010000,'EFECTIVO Y EQUIVALENTES',1,1,'H',''),(11010100,'Caja',1,1,'H',''),(11010101,'Caja General',1,1,'H',''),(11010102,'Caja Chica',1,1,'H',''),(11010200,'Bancos',1,1,'H',''),(11010201,'Banco Agricola',1,1,'H',''),(11010202,'Banco Scotiabank',1,1,'H',''),(11020000,'CUENTAS POR COBRAR',1,1,'H',''),(11020100,'Cuentas por Cobrar a Clientes',1,1,'H',''),(11020101,'Cliente A',1,1,'H',''),(11020102,'Cliente B',1,1,'H',''),(11020300,'PRESTAMOS AL PERSONAL',1,1,'H',''),(11020301,'Empleado A',1,1,'H',''),(11020400,'Deudores Varios',1,1,'H',''),(11020401,'Deudor A',1,1,'H',''),(11020500,'Reserva para Cuentas Incobrables',1,1,'D',''),(11020600,'IVA-Credito Fiscal',1,1,'H',''),(11020700,'IVA-Percibido',1,1,'H',''),(11021000,'IVA-Retenido',1,1,'H',''),(11050000,'INVENTARIOS',1,1,'H',''),(11060000,'LOCALES COMERCIALES PARA LA VENTA',1,1,'H',''),(11070000,'APARTAMENTOS PARA LA VENTA',1,1,'H',''),(11080000,'GASTOS PAGADOS POR ANTICIPADOS',1,1,'H',''),(11080400,'Seguros',1,1,'H',''),(11080500,'Pago a Cuenta',1,1,'H',''),(11080600,'Papeleria y Utiles',1,1,'H',''),(11080700,'Bonificacinnn a Clientes',1,1,'H',''),(11080800,'Materiales ',1,1,'H',''),(11081100,'Imp s/Renta Retenido ',1,1,'H',''),(11081600,'Construccion ',1,1,'H',''),(11081700,'Otros',1,1,'H',''),(12000000,'ACTIVOS NO CORRIENTES',1,1,'H',''),(12010000,'PROPIEDADES, PLANTA Y EQUIPO',1,1,'H',''),(12010100,'Terrenos',1,1,'H',''),(12010200,'Edificaciones',1,1,'H',''),(12010300,'Instalaciones',1,1,'H',''),(12010400,'Mobiliario y Equipo de Oficina',1,1,'H',''),(12010500,'Vehulos',1,1,'H',''),(12010600,'Otros',1,1,'H',''),(12020000,'DEPRECIACION ACUMULADAS',1,1,'D',''),(12020100,'De Edificaciones',1,1,'D',''),(12020200,'De Instalaciones',1,1,'D',''),(12020300,'De Mobiliario y equipo',1,1,'D',''),(12020400,'De Vehiculos',1,1,'D',''),(12020500,'Otros',1,1,'D',''),(12040000,'PROYECTOS EN DESARROLLO',1,1,'H',''),(12050000,'PROPIEDADES DE INVERSION',1,1,'H',''),(12050100,'Terrenos',1,1,'H',''),(12050200,'Edificaciones',1,1,'H',''),(12050300,'Apartamentos para la venta',1,1,'H',''),(12060000,'ANTICIPOS',1,1,'H',''),(12060100,'ANTICIPOS A CONTRATISTAS',1,1,'H',''),(12060200,'Alquiler de Terrenos pagado por anticipado',1,1,'H',''),(12060300,'Impuesto sobre la Renta diferido',1,1,'H',''),(13000000,'OTROS ACTIVOS',1,1,'H',''),(20000000,'PASIVOS',2,1,'D',''),(21000000,'PASIVOS CORRIENTES',2,1,'D',''),(21010000,'CUENTAS POR PAGAR',2,1,'D',''),(21010100,'PROVEEDORES',2,1,'D',''),(21010101,'Proveedor A',2,1,'D',''),(21010102,'Proveedor B',2,1,'D',''),(21010200,'ACREEDORES VARIOS',2,1,'D',''),(21010201,'Acreedor A',2,1,'D',''),(21010202,'Acreedor B',2,1,'D',''),(21010203,'Aes Clesa',2,1,'D',''),(21010204,'Telemovil de El Salvador',2,1,'D',''),(21010205,'Anda',2,1,'D',''),(21010300,'Sobregiros Bancarios',2,1,'D',''),(21010301,'Asuntos Pendientes',2,1,'D',''),(21010600,'Impestos Por Pagar',2,1,'D',''),(21010601,'Iva Por pagar',2,1,'D',''),(21010602,'Impuesto sobre Renta Por Pagar',2,1,'D',''),(21010603,'Pago a Cuenta por Pagar',2,1,'D',''),(21010900,'Debito Fiscal',2,1,'D',''),(21020000,'ACUMULADOS POR PAGAR',2,1,'D',''),(21020700,'Retenciones por Pagar',2,1,'D',''),(21020701,'Cotizaciones ISSS y AFP',2,1,'D',''),(21020702,'ISR Retenido',2,1,'D',''),(21030000,'Porcion corriente de la deuda a largo plazo',2,1,'D',''),(21040000,'Anticipos a clientes',2,1,'D',''),(21050000,'Dividendos por pagar',2,1,'D',''),(22000000,'PASIVOS NO CORRIENTES',2,1,'D',''),(22010000,'DOCUMENTOS POR PAGAR A LARGO PLAZO',2,1,'D',''),(22010100,'PRESTAMOS POR PAGAR A LARGO PLAZO',2,1,'D',''),(22050000,'PASIVO POR RETIRO LABORAL',2,1,'D',''),(22050100,'Reserva laboral',2,1,'D',''),(30000000,'PATRIMONIO',3,1,'H',''),(31000000,'PATRIMONIO DE LOS ACCIONISTAS',3,1,'H',''),(31010000,'CAPITAL SOCIAL',3,1,'H',''),(31030000,'RESERVA LEGAL',3,1,'H',''),(31050000,'UTILIDADES RETENIDAS',3,1,'H',''),(31060100,'PERDIDA DE EJERCICIOS ANTERIORES',3,1,'H',''),(40000000,'CUENTAS DE RESULTADO DEUDORAS',4,2,'D',''),(41000000,'COSTOS Y GASTOS',4,2,'D',''),(41010000,'COMPRAS',4,2,'D',''),(41020000,'REBAJAS Y DEVOLUCIONES SOBRE COMPRAS(R)',4,2,'D',''),(41030000,'GASTOS DE OPERACION',4,2,'D',''),(41040000,'GASTOS DE ADMINISTRACION',4,2,'D',''),(41040100,'Sueldos',4,2,'D',''),(41040200,'Vacaciones',4,2,'D',''),(41040500,'Indemnizaciones',4,2,'D',''),(41040600,'Impuestos Fiscales',4,2,'D',''),(41040900,'Cuota Instituto Salvadoreo del Seguro Social',4,2,'D',''),(41041000,'Cuota AFP',4,2,'D',''),(41041100,'Servicio de Agua',4,2,'D',''),(41041200,'Energ Elctrica',4,2,'D',''),(41041300,'Combustible y Lubricantes',4,2,'D',''),(41041400,'Papeler y Utiles',4,2,'D',''),(41042000,'Inscripciones',4,2,'D',''),(41042400,'Viticos',4,2,'D',''),(41042500,'Mantenimiento de Mobiliario y Equipo',4,2,'D',''),(41042800,'Comuinicaciones',4,2,'D',''),(41043000,'Depreciaciones',4,2,'D',''),(41043300,'Atencinnn al Personal',4,2,'D',''),(41043800,'Cuota Insaford',4,2,'D',''),(41044000,'Membresias',4,2,'D',''),(41044100,'Mobiliario y equipo de Oficina',4,2,'D',''),(41050000,'GASTOS DE VENTA',4,2,'D',''),(41050100,'Sueldos',4,2,'D',''),(41050200,'Vacaciones',4,2,'D',''),(41050400,'Honorarios Profesionales',4,2,'D',''),(41050500,'Indemnizaciones',4,2,'D',''),(41050600,'Impuestos Fiscales',4,2,'D',''),(41050700,'Impuestos Municipales',4,2,'D',''),(41050900,'Cuota Instituto Salvadoreo del Seguro Social',4,2,'D',''),(41051000,'Cuota AFP',4,2,'D',''),(41051100,'Servicio de Agua',4,2,'D',''),(41051300,'Combustible y Lubricantes',4,2,'D',''),(41051400,'Papeler y Utiles',4,2,'D',''),(41051500,'Seguros',4,2,'D',''),(41051600,'Contribuciones y Donaciones',4,2,'D',''),(41051700,'Fletes y Transportes',4,2,'D',''),(41051800,'Comisiones',4,2,'D',''),(41051900,'Bonificaciones',4,2,'D',''),(41052000,'Inscripciones',4,2,'D',''),(41052300,'Aseo y Limpieza',4,2,'D',''),(41052400,'Viticos',4,2,'D',''),(41052500,'Mantenimiento de Mobiliario y Equipo',4,2,'D',''),(41052600,'Mantenimiento de Local',4,2,'D',''),(41052800,'Comunicaciones',4,2,'D',''),(41052900,'Publicidad',4,2,'D',''),(41053000,'Depreciaciones',4,2,'D',''),(41053600,'Otros',4,2,'D',''),(41053700,'Comisiones a Terceros',4,2,'D',''),(41053800,'Mantenimiento y Reparacinnn',4,2,'D',''),(41053900,'Atencinnn a Clientes',4,2,'D',''),(41054000,'Cuota Insaforp',4,2,'D',''),(41054200,'Material de Empaque',4,2,'D',''),(41054400,'Accesorios para Vehiculos',4,2,'D',''),(41054600,'No Deducible',4,2,'D',''),(41054601,'Impuesto Al Cheque',4,2,'D',''),(41054602,'Impuesto Por Telefonia',4,2,'D',''),(41054603,'Otros',4,2,'D',''),(41060000,'GASTOS FINANCIEROS',4,2,'D',''),(41070000,'OTROS GASTOS',4,2,'D',''),(41080000,'GASTOS EN COMPRAS',4,2,'D',''),(50000000,'CUENTAS DE RESULTADO ACREEDORAS',5,2,'H',''),(51000000,'PRODUCTOS DE OPERACION',5,2,'H',''),(51010000,'VENTAS',5,2,'H',''),(51010100,'Contado',5,2,'H',''),(51010200,'Crediito ',5,2,'H',''),(51020000,'REBAJAS Y DEVOLUCIONES SOBRE VENTAS(R)',5,2,'H',''),(51020100,'Devolucion',5,2,'H',''),(51030000,'INVENTARIO INICIAL',5,2,'H',''),(51040000,'INGRESOS FINANCIEROS',5,2,'H',''),(51040100,'Intereses',5,2,'H',''),(51050000,'OTROS INGRESOS',5,2,'H',''),(51050100,'Otros',5,2,'H',''),(51060000,'INVENTARIO FINAL',5,2,'D','');
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresas` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `giro` char(1) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (1,'Confecciones10','C',''),(2,'Confecciones10','C','');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientos` (
  `id_movimiento` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(11) NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `monto` double NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_movimiento`),
  KEY `cuenta_idx` (`id_cuenta`),
  KEY `empresa_idx` (`id_empresa`),
  CONSTRAINT `cuenta` FOREIGN KEY (`id_cuenta`) REFERENCES `cuentas` (`id_cuenta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id_empresa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos`
--

LOCK TABLES `movimientos` WRITE;
/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
INSERT INTO `movimientos` VALUES (1,1,11010100,12706,'2017-11-22',''),(2,1,11010101,1000,'2017-11-22',''),(3,1,11010201,503079,'2017-11-22',''),(4,1,11010202,103219,'2017-11-22',''),(5,1,11020000,1054405,'2017-11-22',''),(6,1,11020300,26600,'2017-11-22',''),(7,1,11020500,75800,'2017-11-22',''),(8,1,11080000,84000,'2017-11-22',''),(9,1,11080000,93000,'2017-11-22',''),(10,1,11050000,800536,'2017-11-22',''),(11,1,12010200,865000,'2017-11-22',''),(12,1,12020100,165300,'2017-11-22',''),(13,1,12010400,209800,'2017-11-22',''),(14,1,12020300,41500,'2017-11-22',''),(15,1,12010600,49238,'2017-11-22',''),(16,1,12020500,3132,'2017-11-22',''),(17,1,12010500,0,'2017-11-22',''),(18,1,12010500,350120,'2017-11-22',''),(19,1,12020400,35600,'2017-11-22',''),(20,1,13000000,2344890,'2017-11-22',NULL),(21,1,21010000,923600,'2017-11-22',''),(22,1,21010600,35600,'2017-11-22',''),(23,1,21010000,85750,'2017-11-22',''),(24,1,21010300,450000,'2017-11-22',''),(25,1,22010100,850000,'2017-11-22',''),(26,1,30000000,2338187,'2017-11-22',''),(27,1,51010000,9950000,'2017-11-22',''),(28,1,51020000,345000,'2017-11-22',''),(29,1,41010000,4425300,'2017-11-22',''),(30,1,41080000,165300,'2017-11-22',''),(31,1,41020000,325789,'2017-11-22',''),(32,1,51030000,1500635,'2017-11-22',''),(33,1,51060000,800536,'2017-11-22',''),(34,1,41030000,2507056,'2017-11-22',''),(35,1,41030000,0,'2017-11-22','');
/*!40000 ALTER TABLE `movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `porcentajes`
--

DROP TABLE IF EXISTS `porcentajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `porcentajes` (
  `id_porcentaje` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `porcentaje` decimal(10,4) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_porcentaje`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `porcentajes`
--

LOCK TABLES `porcentajes` WRITE;
/*!40000 ALTER TABLE `porcentajes` DISABLE KEYS */;
INSERT INTO `porcentajes` VALUES (1,'iva',0.1300,NULL),(2,'Renta',0.2500,NULL),(3,'Reserva Legal',0.0700,NULL);
/*!40000 ALTER TABLE `porcentajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_cuenta`
--

DROP TABLE IF EXISTS `tipo_cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_cuenta` (
  `id_tipo_cuenta` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_cuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_cuenta`
--

LOCK TABLES `tipo_cuenta` WRITE;
/*!40000 ALTER TABLE `tipo_cuenta` DISABLE KEYS */;
INSERT INTO `tipo_cuenta` VALUES (1,'Activo',NULL),(2,'Pasivo',NULL),(3,'Capital',NULL),(4,'Gasto',NULL),(5,'Ingreso',NULL);
/*!40000 ALTER TABLE `tipo_cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_estado`
--

DROP TABLE IF EXISTS `tipo_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_estado` (
  `id_tipo_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_estado`
--

LOCK TABLES `tipo_estado` WRITE;
/*!40000 ALTER TABLE `tipo_estado` DISABLE KEYS */;
INSERT INTO `tipo_estado` VALUES (1,'Balance Gneral',NULL),(2,'Estado de Resultados',NULL);
/*!40000 ALTER TABLE `tipo_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `clave` char(32) NOT NULL,
  `rol` char(1) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'javier','Javier','Santos','psw','A'),(2,'kevin','Kevin','Martinez','psw','A'),(3,'cristian','Cristian','Chavez','psw','A');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-22 22:11:56
