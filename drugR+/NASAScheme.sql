-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: drugr
-- ------------------------------------------------------
-- Server version	5.5.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `atc_codes`
--

DROP TABLE IF EXISTS `atc_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atc_codes` (
  `drug_id` varchar(15) DEFAULT NULL,
  `atc_code` varchar(15) DEFAULT NULL,
  `level_code` varchar(15) DEFAULT NULL,
  `level_description` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_affected_organism`
--

DROP TABLE IF EXISTS `drug_affected_organism`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_affected_organism` (
  `drug_id` varchar(15) DEFAULT NULL,
  `organism` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_ahf_codes`
--

DROP TABLE IF EXISTS `drug_ahf_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_ahf_codes` (
  `drug_id` varchar(15) DEFAULT NULL,
  `ahf_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_atc_codes`
--

DROP TABLE IF EXISTS `drug_atc_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_atc_codes` (
  `drug_id` varchar(15) DEFAULT NULL,
  `atc_code` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_calculated_properties`
--

DROP TABLE IF EXISTS `drug_calculated_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_calculated_properties` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `kind` varchar(50) DEFAULT NULL,
  `experiment_value` mediumtext,
  `experiment_source` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_carrier_actions`
--

DROP TABLE IF EXISTS `drug_carrier_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_carrier_actions` (
  `drug_id` varchar(15) DEFAULT NULL,
  `carrier_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `carrier_action` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_carrier_articles`
--

DROP TABLE IF EXISTS `drug_carrier_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_carrier_articles` (
  `drug_id` varchar(15) DEFAULT NULL,
  `carrier_id` varchar(15) DEFAULT NULL,
  `pubmed_id` varchar(15) DEFAULT NULL,
  `citation` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_carrier_books`
--

DROP TABLE IF EXISTS `drug_carrier_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_carrier_books` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `carrier_id` varchar(15) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `citation` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_carrier_links`
--

DROP TABLE IF EXISTS `drug_carrier_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_carrier_links` (
  `drug_id` varchar(15) DEFAULT NULL,
  `carrier_id` varchar(15) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `url` varchar(7000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_carrier_poly_aminoacid_seq`
--

DROP TABLE IF EXISTS `drug_carrier_poly_aminoacid_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_carrier_poly_aminoacid_seq` (
  `drug_id` varchar(15) DEFAULT NULL,
  `carrier_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `seq_format` varchar(15) DEFAULT NULL,
  `seq` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_carrier_poly_ex_iden`
--

DROP TABLE IF EXISTS `drug_carrier_poly_ex_iden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_carrier_poly_ex_iden` (
  `drug_id` varchar(15) DEFAULT NULL,
  `carrier_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `external_resource` mediumtext,
  `identifier` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_carrier_poly_gene_seq`
--

DROP TABLE IF EXISTS `drug_carrier_poly_gene_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_carrier_poly_gene_seq` (
  `drug_id` varchar(15) DEFAULT NULL,
  `carrier_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `seq_format` varchar(15) DEFAULT NULL,
  `seq` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_carrier_poly_go_classfier`
--

DROP TABLE IF EXISTS `drug_carrier_poly_go_classfier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_carrier_poly_go_classfier` (
  `drug_id` varchar(15) DEFAULT NULL,
  `carrier_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `classifier_description` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_carrier_poly_pfams`
--

DROP TABLE IF EXISTS `drug_carrier_poly_pfams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_carrier_poly_pfams` (
  `drug_id` varchar(15) DEFAULT NULL,
  `carrier_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `protein_name` varchar(40) DEFAULT NULL,
  `identifier` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_carrier_poly_synonyms`
--

DROP TABLE IF EXISTS `drug_carrier_poly_synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_carrier_poly_synonyms` (
  `drug_id` varchar(15) DEFAULT NULL,
  `carrier_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `synonym_language` varchar(20) DEFAULT NULL,
  `coder` varchar(30) DEFAULT NULL,
  `polypeptide_synonym` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_carrier_polypeptide`
--

DROP TABLE IF EXISTS `drug_carrier_polypeptide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_carrier_polypeptide` (
  `drug_id` varchar(15) DEFAULT NULL,
  `carrier_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `polypeptide_source` varchar(30) DEFAULT NULL,
  `polypeptide_name` varchar(200) DEFAULT NULL,
  `general_function` mediumtext,
  `special_function` mediumtext,
  `gene_name` varchar(50) DEFAULT NULL,
  `locus` varchar(50) DEFAULT NULL,
  `cellular_location` mediumtext,
  `theoretical_pi` varchar(10) DEFAULT NULL,
  `molecular_weight` float DEFAULT NULL,
  `chromosome_location` mediumtext,
  `organism_ncbi_taxonomy` varchar(15) DEFAULT NULL,
  `organism` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_carrier_polypeptide_signal`
--

DROP TABLE IF EXISTS `drug_carrier_polypeptide_signal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_carrier_polypeptide_signal` (
  `drug_id` varchar(15) DEFAULT NULL,
  `carrier_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `regions` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_carrier_polypeptide_transmembrance`
--

DROP TABLE IF EXISTS `drug_carrier_polypeptide_transmembrance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_carrier_polypeptide_transmembrance` (
  `drug_id` varchar(15) DEFAULT NULL,
  `carrier_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `regions` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_carriers`
--

DROP TABLE IF EXISTS `drug_carriers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_carriers` (
  `drug_id` varchar(15) DEFAULT NULL,
  `positin` int(11) DEFAULT NULL,
  `carrier_id` varchar(15) DEFAULT NULL,
  `carrier_name` varchar(150) DEFAULT NULL,
  `organism` mediumtext,
  `known_action` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_category`
--

DROP TABLE IF EXISTS `drug_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_category` (
  `drug_id` varchar(15) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `mesh_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_classification`
--

DROP TABLE IF EXISTS `drug_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_classification` (
  `drug_id` varchar(15) DEFAULT NULL,
  `classification_description` varchar(700) DEFAULT NULL,
  `direct_parent` mediumtext,
  `kingdom` mediumtext,
  `superclass` mediumtext,
  `class` mediumtext,
  `subclass` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_classification_alternative_parent`
--

DROP TABLE IF EXISTS `drug_classification_alternative_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_classification_alternative_parent` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `classification_description` varchar(700) DEFAULT NULL,
  `alternative_parent` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_classification_substituent`
--

DROP TABLE IF EXISTS `drug_classification_substituent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_classification_substituent` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `classification_description` varchar(700) DEFAULT NULL,
  `substituent` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_clearance`
--

DROP TABLE IF EXISTS `drug_clearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_clearance` (
  `drug_id` varchar(15) DEFAULT NULL,
  `clearance_description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_dosage`
--

DROP TABLE IF EXISTS `drug_dosage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_dosage` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `form` varchar(200) DEFAULT NULL,
  `dosage_route` varchar(400) DEFAULT NULL,
  `strength` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_enzyme_actions`
--

DROP TABLE IF EXISTS `drug_enzyme_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_enzyme_actions` (
  `drug_id` varchar(15) DEFAULT NULL,
  `enzyme_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `enzyme_action` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_enzyme_articles`
--

DROP TABLE IF EXISTS `drug_enzyme_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_enzyme_articles` (
  `drug_id` varchar(15) DEFAULT NULL,
  `enzyme_id` varchar(15) DEFAULT NULL,
  `pubmed_id` varchar(15) DEFAULT NULL,
  `citation` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_enzyme_books`
--

DROP TABLE IF EXISTS `drug_enzyme_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_enzyme_books` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `enzyme_id` varchar(15) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `citation` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_enzyme_links`
--

DROP TABLE IF EXISTS `drug_enzyme_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_enzyme_links` (
  `drug_id` varchar(15) DEFAULT NULL,
  `enzyme_id` varchar(15) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `url` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_enzyme_poly_aminoacid_seq`
--

DROP TABLE IF EXISTS `drug_enzyme_poly_aminoacid_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_enzyme_poly_aminoacid_seq` (
  `drug_id` varchar(15) DEFAULT NULL,
  `enzyme_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `seq_format` varchar(15) DEFAULT NULL,
  `seq` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_enzyme_poly_ex_iden`
--

DROP TABLE IF EXISTS `drug_enzyme_poly_ex_iden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_enzyme_poly_ex_iden` (
  `drug_id` varchar(15) DEFAULT NULL,
  `enzyme_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `external_resource` mediumtext,
  `identifier` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_enzyme_poly_gene_seq`
--

DROP TABLE IF EXISTS `drug_enzyme_poly_gene_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_enzyme_poly_gene_seq` (
  `drug_id` varchar(15) DEFAULT NULL,
  `enzyme_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `seq_format` varchar(15) DEFAULT NULL,
  `seq` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_enzyme_poly_go_classfier`
--

DROP TABLE IF EXISTS `drug_enzyme_poly_go_classfier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_enzyme_poly_go_classfier` (
  `drug_id` varchar(15) DEFAULT NULL,
  `enzyme_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `classifier_description` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_enzyme_poly_pfams`
--

DROP TABLE IF EXISTS `drug_enzyme_poly_pfams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_enzyme_poly_pfams` (
  `drug_id` varchar(15) DEFAULT NULL,
  `enzyme_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `protein_name` varchar(40) DEFAULT NULL,
  `identifier` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_enzyme_poly_synonyms`
--

DROP TABLE IF EXISTS `drug_enzyme_poly_synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_enzyme_poly_synonyms` (
  `drug_id` varchar(15) DEFAULT NULL,
  `enzyme_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `synonym_language` varchar(20) DEFAULT NULL,
  `coder` varchar(30) DEFAULT NULL,
  `polypeptide_synonym` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_enzyme_polypeptide`
--

DROP TABLE IF EXISTS `drug_enzyme_polypeptide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_enzyme_polypeptide` (
  `drug_id` varchar(15) DEFAULT NULL,
  `enzyme_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `polypeptide_source` varchar(30) DEFAULT NULL,
  `polypeptide_name` varchar(200) DEFAULT NULL,
  `general_function` mediumtext,
  `special_function` mediumtext,
  `gene_name` varchar(50) DEFAULT NULL,
  `locus` varchar(50) DEFAULT NULL,
  `cellular_location` mediumtext,
  `theoretical_pi` varchar(10) DEFAULT NULL,
  `molecular_weight` float DEFAULT NULL,
  `chromosome_location` varchar(50) DEFAULT NULL,
  `organism_ncbi_taxonomy` varchar(15) DEFAULT NULL,
  `organism` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_enzyme_polypeptide_signal`
--

DROP TABLE IF EXISTS `drug_enzyme_polypeptide_signal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_enzyme_polypeptide_signal` (
  `drug_id` varchar(15) DEFAULT NULL,
  `enzyme_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `regions` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_enzyme_polypeptide_transmembrance`
--

DROP TABLE IF EXISTS `drug_enzyme_polypeptide_transmembrance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_enzyme_polypeptide_transmembrance` (
  `drug_id` varchar(15) DEFAULT NULL,
  `enzyme_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `regions` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_enzymes`
--

DROP TABLE IF EXISTS `drug_enzymes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_enzymes` (
  `drug_id` varchar(15) DEFAULT NULL,
  `positin` int(11) DEFAULT NULL,
  `enzyme_id` varchar(15) DEFAULT NULL,
  `enzyme_name` varchar(150) DEFAULT NULL,
  `organism` mediumtext,
  `known_action` mediumtext,
  `inhibition_strength` varchar(20) DEFAULT NULL,
  `induction_strength` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_experimental_properties`
--

DROP TABLE IF EXISTS `drug_experimental_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_experimental_properties` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `kind` varchar(50) DEFAULT NULL,
  `experiment_value` mediumtext,
  `experiment_source` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_external_identifiers`
--

DROP TABLE IF EXISTS `drug_external_identifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_external_identifiers` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `identifier_resource` mediumtext,
  `identifier` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_external_links`
--

DROP TABLE IF EXISTS `drug_external_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_external_links` (
  `drug_id` varchar(15) DEFAULT NULL,
  `link_resource` varchar(50) DEFAULT NULL,
  `url` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_food_interaction`
--

DROP TABLE IF EXISTS `drug_food_interaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_food_interaction` (
  `drug_id` varchar(15) DEFAULT NULL,
  `interaction` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_groups`
--

DROP TABLE IF EXISTS `drug_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_groups` (
  `id` varchar(15) NOT NULL,
  `groups` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_interactions`
--

DROP TABLE IF EXISTS `drug_interactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_interactions` (
  `drug_id` varchar(15) DEFAULT NULL,
  `interaction_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `interaction_name` varchar(150) DEFAULT NULL,
  `drug_description` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_international_brand`
--

DROP TABLE IF EXISTS `drug_international_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_international_brand` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `brand_name` varchar(300) DEFAULT NULL,
  `company` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_manufactor`
--

DROP TABLE IF EXISTS `drug_manufactor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_manufactor` (
  `drug_id` varchar(15) DEFAULT NULL,
  `generic` varchar(200) DEFAULT NULL,
  `url` mediumtext,
  `manufactor` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_mixture`
--

DROP TABLE IF EXISTS `drug_mixture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_mixture` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `mixture_name` varchar(400) DEFAULT NULL,
  `ingridient` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_packagers`
--

DROP TABLE IF EXISTS `drug_packagers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_packagers` (
  `drug_id` varchar(15) DEFAULT NULL,
  `packager_name` varchar(200) DEFAULT NULL,
  `url` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_patent`
--

DROP TABLE IF EXISTS `drug_patent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_patent` (
  `drug_id` varchar(15) DEFAULT NULL,
  `patent_number` varchar(15) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `approved` varchar(10) DEFAULT NULL,
  `expires` varchar(10) DEFAULT NULL,
  `pediatric_extension` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_pathway_drug`
--

DROP TABLE IF EXISTS `drug_pathway_drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_pathway_drug` (
  `drug_id` varchar(15) DEFAULT NULL,
  `smpdb_id` varchar(20) DEFAULT NULL,
  `second_drug_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_pathway_enzymes`
--

DROP TABLE IF EXISTS `drug_pathway_enzymes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_pathway_enzymes` (
  `drug_id` varchar(15) DEFAULT NULL,
  `smpdb_id` varchar(20) DEFAULT NULL,
  `uniprot_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_pathways`
--

DROP TABLE IF EXISTS `drug_pathways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_pathways` (
  `drug_id` varchar(15) DEFAULT NULL,
  `smpdb_id` varchar(20) DEFAULT NULL,
  `pathway_name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_pdb_entries`
--

DROP TABLE IF EXISTS `drug_pdb_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_pdb_entries` (
  `drug_id` varchar(15) DEFAULT NULL,
  `pdb_entry` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_price`
--

DROP TABLE IF EXISTS `drug_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_price` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `price_description` mediumtext,
  `currency` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_products`
--

DROP TABLE IF EXISTS `drug_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_products` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `product_name` varchar(400) DEFAULT NULL,
  `labeller` varchar(250) DEFAULT NULL,
  `ndcid` varchar(30) DEFAULT NULL,
  `ndc_product_code` varchar(30) DEFAULT NULL,
  `dpd_id` varchar(30) DEFAULT NULL,
  `started_marketing` varchar(30) DEFAULT NULL,
  `ended_marketing` varchar(30) DEFAULT NULL,
  `dosage_form` mediumtext,
  `strength` varchar(30) DEFAULT NULL,
  `product_route` mediumtext,
  `fda_application_number` varchar(30) DEFAULT NULL,
  `generic` varchar(200) DEFAULT NULL,
  `over_counter` varchar(50) DEFAULT NULL,
  `approved` varchar(10) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `product_source` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_properties`
--

DROP TABLE IF EXISTS `drug_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_properties` (
  `id` varchar(15) NOT NULL,
  `synthesis_reference` mediumtext,
  `indication` mediumtext,
  `pharmacodynamics` mediumtext,
  `mechanism_of_action` mediumtext,
  `toxicity` mediumtext,
  `metablosim` mediumtext,
  `absorption` mediumtext,
  `half_life` mediumtext,
  `protein_biding` mediumtext,
  `route_of_elimination` mediumtext,
  `volume_of_distribution` mediumtext,
  `clearance` mediumtext,
  `FDA_label` mediumtext,
  `msds` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_reactions`
--

DROP TABLE IF EXISTS `drug_reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_reactions` (
  `drug_id` varchar(15) DEFAULT NULL,
  `drugr_id` varchar(15) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `left_drug_id` varchar(15) DEFAULT NULL,
  `left_element_drug` mediumtext,
  `right_drug_id` varchar(15) DEFAULT NULL,
  `right_element_drug` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_reactions_enzymes`
--

DROP TABLE IF EXISTS `drug_reactions_enzymes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_reactions_enzymes` (
  `drugr_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `drug_id` varchar(15) DEFAULT NULL,
  `dragbank_id` varchar(15) DEFAULT NULL,
  `enzyme_reaction` mediumtext,
  `uniprot_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_reference_articles`
--

DROP TABLE IF EXISTS `drug_reference_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_reference_articles` (
  `drug_id` varchar(15) NOT NULL,
  `pubmed_id` varchar(15) NOT NULL,
  `citation` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_reference_books`
--

DROP TABLE IF EXISTS `drug_reference_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_reference_books` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `citation` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_reference_link`
--

DROP TABLE IF EXISTS `drug_reference_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_reference_link` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `titile` varchar(400) DEFAULT NULL,
  `url` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_salt`
--

DROP TABLE IF EXISTS `drug_salt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_salt` (
  `drug_id` varchar(15) DEFAULT NULL,
  `drug_salt_id` varchar(15) DEFAULT NULL,
  `salt_name` varchar(150) DEFAULT NULL,
  `unii` varchar(15) DEFAULT NULL,
  `case_number` varchar(15) DEFAULT NULL,
  `inchikey` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_second_id`
--

DROP TABLE IF EXISTS `drug_second_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_second_id` (
  `id` varchar(15) NOT NULL,
  `second_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_sequence`
--

DROP TABLE IF EXISTS `drug_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_sequence` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `seq_format` varchar(20) DEFAULT NULL,
  `seq` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_snp_adverse_reaction`
--

DROP TABLE IF EXISTS `drug_snp_adverse_reaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_snp_adverse_reaction` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `protein_name` varchar(200) DEFAULT NULL,
  `gene_symbol` varchar(15) DEFAULT NULL,
  `uniprot_id` varchar(15) DEFAULT NULL,
  `rs_id` varchar(15) DEFAULT NULL,
  `allele` varchar(50) DEFAULT NULL,
  `adverase_reaction` varchar(50) DEFAULT NULL,
  `adverse_description` mediumtext,
  `pubmed_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_snp_effects`
--

DROP TABLE IF EXISTS `drug_snp_effects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_snp_effects` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `protein_name` varchar(100) DEFAULT NULL,
  `gene_symbol` varchar(15) DEFAULT NULL,
  `uniprot_id` varchar(15) DEFAULT NULL,
  `rs_id` varchar(15) DEFAULT NULL,
  `allele` varchar(50) DEFAULT NULL,
  `defining_Change` mediumtext,
  `effect_description` mediumtext,
  `pubmed_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_synonyms`
--

DROP TABLE IF EXISTS `drug_synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_synonyms` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `synonym_language` varchar(30) DEFAULT NULL,
  `coder` mediumtext,
  `synonym_description` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_target_actions`
--

DROP TABLE IF EXISTS `drug_target_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_target_actions` (
  `drug_id` varchar(15) DEFAULT NULL,
  `target_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `target_action` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_target_articles`
--

DROP TABLE IF EXISTS `drug_target_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_target_articles` (
  `drug_id` varchar(15) DEFAULT NULL,
  `target_id` varchar(15) DEFAULT NULL,
  `pubmed_id` varchar(15) DEFAULT NULL,
  `citation` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_target_books`
--

DROP TABLE IF EXISTS `drug_target_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_target_books` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `target_id` varchar(15) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `citation` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_target_links`
--

DROP TABLE IF EXISTS `drug_target_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_target_links` (
  `drug_id` varchar(15) DEFAULT NULL,
  `target_id` varchar(15) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `url` varchar(7000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_target_poly_aminoacid_seq`
--

DROP TABLE IF EXISTS `drug_target_poly_aminoacid_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_target_poly_aminoacid_seq` (
  `drug_id` varchar(15) DEFAULT NULL,
  `target_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `seq_format` varchar(15) DEFAULT NULL,
  `seq` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_target_poly_ex_iden`
--

DROP TABLE IF EXISTS `drug_target_poly_ex_iden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_target_poly_ex_iden` (
  `drug_id` varchar(15) DEFAULT NULL,
  `target_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `external_resource` mediumtext,
  `identifier` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_target_poly_gene_seq`
--

DROP TABLE IF EXISTS `drug_target_poly_gene_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_target_poly_gene_seq` (
  `drug_id` varchar(15) DEFAULT NULL,
  `target_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `seq_format` varchar(15) DEFAULT NULL,
  `seq` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_target_poly_go_classfier`
--

DROP TABLE IF EXISTS `drug_target_poly_go_classfier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_target_poly_go_classfier` (
  `drug_id` varchar(15) DEFAULT NULL,
  `target_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `classifier_description` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_target_poly_pfams`
--

DROP TABLE IF EXISTS `drug_target_poly_pfams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_target_poly_pfams` (
  `drug_id` varchar(15) DEFAULT NULL,
  `target_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `protein_name` varchar(40) DEFAULT NULL,
  `identifier` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_target_poly_synonyms`
--

DROP TABLE IF EXISTS `drug_target_poly_synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_target_poly_synonyms` (
  `drug_id` varchar(15) DEFAULT NULL,
  `target_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `synonym_language` varchar(20) DEFAULT NULL,
  `coder` varchar(30) DEFAULT NULL,
  `polypeptide_synonym` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_target_polypeptide`
--

DROP TABLE IF EXISTS `drug_target_polypeptide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_target_polypeptide` (
  `drug_id` varchar(15) DEFAULT NULL,
  `target_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `polypeptide_source` varchar(30) DEFAULT NULL,
  `polypeptide_name` varchar(200) DEFAULT NULL,
  `general_function` mediumtext,
  `special_function` mediumtext,
  `gene_name` varchar(50) DEFAULT NULL,
  `locus` varchar(50) DEFAULT NULL,
  `cellular_location` mediumtext,
  `theoretical_pi` varchar(10) DEFAULT NULL,
  `molecular_weight` float DEFAULT NULL,
  `chromosome_location` varchar(50) DEFAULT NULL,
  `organism_ncbi_taxonomy` varchar(15) DEFAULT NULL,
  `organism` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_target_polypeptide_signal`
--

DROP TABLE IF EXISTS `drug_target_polypeptide_signal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_target_polypeptide_signal` (
  `drug_id` varchar(15) DEFAULT NULL,
  `target_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `regions` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_target_polypeptide_transmembrance`
--

DROP TABLE IF EXISTS `drug_target_polypeptide_transmembrance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_target_polypeptide_transmembrance` (
  `drug_id` varchar(15) DEFAULT NULL,
  `target_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `regions` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_targets`
--

DROP TABLE IF EXISTS `drug_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_targets` (
  `drug_id` varchar(15) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `target_id` varchar(15) DEFAULT NULL,
  `target_name` varchar(150) DEFAULT NULL,
  `organism` mediumtext,
  `known_action` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_transporter_actions`
--

DROP TABLE IF EXISTS `drug_transporter_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_transporter_actions` (
  `drug_id` varchar(15) DEFAULT NULL,
  `transporter_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `transporter_action` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_transporter_articles`
--

DROP TABLE IF EXISTS `drug_transporter_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_transporter_articles` (
  `drug_id` varchar(15) DEFAULT NULL,
  `transporter_id` varchar(15) DEFAULT NULL,
  `pubmed_id` varchar(15) DEFAULT NULL,
  `citation` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_transporter_books`
--

DROP TABLE IF EXISTS `drug_transporter_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_transporter_books` (
  `drug_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `transporter_id` varchar(15) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `citation` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_transporter_links`
--

DROP TABLE IF EXISTS `drug_transporter_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_transporter_links` (
  `drug_id` varchar(15) DEFAULT NULL,
  `transporter_id` varchar(15) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `url` varchar(7000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_transporter_poly_aminoacid_seq`
--

DROP TABLE IF EXISTS `drug_transporter_poly_aminoacid_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_transporter_poly_aminoacid_seq` (
  `drug_id` varchar(15) DEFAULT NULL,
  `transporter_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `seq_format` varchar(15) DEFAULT NULL,
  `seq` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_transporter_poly_ex_iden`
--

DROP TABLE IF EXISTS `drug_transporter_poly_ex_iden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_transporter_poly_ex_iden` (
  `drug_id` varchar(15) DEFAULT NULL,
  `transporter_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `external_resource` mediumtext,
  `identifier` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_transporter_poly_gene_seq`
--

DROP TABLE IF EXISTS `drug_transporter_poly_gene_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_transporter_poly_gene_seq` (
  `drug_id` varchar(15) DEFAULT NULL,
  `transporter_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `seq_format` varchar(15) DEFAULT NULL,
  `seq` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_transporter_poly_go_classfier`
--

DROP TABLE IF EXISTS `drug_transporter_poly_go_classfier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_transporter_poly_go_classfier` (
  `drug_id` varchar(15) DEFAULT NULL,
  `transporter_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `classifier_description` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_transporter_poly_pfams`
--

DROP TABLE IF EXISTS `drug_transporter_poly_pfams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_transporter_poly_pfams` (
  `drug_id` varchar(15) DEFAULT NULL,
  `transporter_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `protein_name` varchar(40) DEFAULT NULL,
  `identifier` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_transporter_poly_synonyms`
--

DROP TABLE IF EXISTS `drug_transporter_poly_synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_transporter_poly_synonyms` (
  `drug_id` varchar(15) DEFAULT NULL,
  `transporter_id` varchar(15) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `synonym_language` varchar(20) DEFAULT NULL,
  `coder` varchar(30) DEFAULT NULL,
  `polypeptide_synonym` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_transporter_polypeptide`
--

DROP TABLE IF EXISTS `drug_transporter_polypeptide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_transporter_polypeptide` (
  `drug_id` varchar(15) DEFAULT NULL,
  `transporter_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `polypeptide_source` varchar(30) DEFAULT NULL,
  `polypeptide_name` varchar(200) DEFAULT NULL,
  `general_function` mediumtext,
  `special_function` mediumtext,
  `gene_name` varchar(50) DEFAULT NULL,
  `locus` varchar(50) DEFAULT NULL,
  `cellular_location` mediumtext,
  `theoretical_pi` varchar(10) DEFAULT NULL,
  `molecular_weight` float DEFAULT NULL,
  `chromosome_location` mediumtext,
  `organism_ncbi_taxonomy` varchar(15) DEFAULT NULL,
  `organism` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_transporter_polypeptide_signal`
--

DROP TABLE IF EXISTS `drug_transporter_polypeptide_signal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_transporter_polypeptide_signal` (
  `drug_id` varchar(15) DEFAULT NULL,
  `transporter_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `regions` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_transporter_polypeptide_transmembrance`
--

DROP TABLE IF EXISTS `drug_transporter_polypeptide_transmembrance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_transporter_polypeptide_transmembrance` (
  `drug_id` varchar(15) DEFAULT NULL,
  `transporter_id` varchar(15) DEFAULT NULL,
  `polypeptide_id` varchar(15) DEFAULT NULL,
  `regions` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_transporters`
--

DROP TABLE IF EXISTS `drug_transporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_transporters` (
  `drug_id` varchar(15) DEFAULT NULL,
  `positin` int(11) DEFAULT NULL,
  `transporter_id` varchar(15) DEFAULT NULL,
  `transporter_name` varchar(150) DEFAULT NULL,
  `organism` mediumtext,
  `known_action` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drug_volume_distribution`
--

DROP TABLE IF EXISTS `drug_volume_distribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_volume_distribution` (
  `drug_id` varchar(15) NOT NULL,
  `volume_description` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drugs`
--

DROP TABLE IF EXISTS `drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drugs` (
  `drug_type` varchar(15) DEFAULT NULL,
  `create_date` varchar(30) DEFAULT NULL,
  `updated_date` varchar(30) DEFAULT NULL,
  `id` varchar(15) NOT NULL,
  `drug_name` varchar(300) DEFAULT NULL,
  `drug_description` mediumtext,
  `cas_number` varchar(15) DEFAULT NULL,
  `unii` varchar(15) DEFAULT NULL,
  `drug_state` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `structures`
--

DROP TABLE IF EXISTS `structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `structures` (
  `drug_id` varchar(15) DEFAULT NULL,
  `original_resource` varchar(30) DEFAULT NULL,
  `url` varchar(400) DEFAULT NULL,
  `smile` varchar(2000) DEFAULT NULL,
  `inchi_identifier` varchar(500) DEFAULT NULL,
  `inchi_key` varchar(400) DEFAULT NULL,
  `formula` varchar(200) DEFAULT NULL,
  `molecular_weight` varchar(30) DEFAULT NULL,
  `exact_mass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'drugr'
--

--
-- Dumping routines for database 'drugr'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-31 12:57:39
