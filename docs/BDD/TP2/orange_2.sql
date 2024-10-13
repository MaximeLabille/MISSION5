-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2024 at 04:30 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `orange_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `Client_ID` int(30) NOT NULL,
  `RaisonSociale` varchar(60) NOT NULL,
  `CodePostale` varchar(60) NOT NULL,
  `Ville` varchar(60) NOT NULL,
  `Pays_ID` int(30) NOT NULL,
  `Mail` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Client_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`Client_ID`, `RaisonSociale`, `CodePostale`, `Ville`, `Pays_ID`, `Mail`) VALUES
(1, 'LVMH', '75000', 'Paris', 1, 'lwmh@entreprise.com'),
(2, 'L''OREAL', '92117', 'Clichy', 1, 'oreal@entreprise.com'),
(3, 'AIRBUS GROUP', '31700', 'Blagnac', 1, 'airbus@entreprise.com'),
(4, 'THALES', '92190', 'Meudon', 1, NULL),
(5, 'LUFTHANSA', '50441', 'Cologne', 3, NULL),
(6, 'UBISOFT Londres', 'CV324JG', 'Londres', 4, 'ubisoft@entreprise.com');

-- --------------------------------------------------------

--
-- Table structure for table `devis`
--

CREATE TABLE IF NOT EXISTS `devis` (
  `Devis_Num` int(30) NOT NULL,
  `Date_dev` date NOT NULL,
  `Status` varchar(60) NOT NULL,
  `Client_ID` int(30) NOT NULL,
  `Montant` float NOT NULL,
  PRIMARY KEY (`Devis_Num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devis`
--

INSERT INTO `devis` (`Devis_Num`, `Date_dev`, `Status`, `Client_ID`, `Montant`) VALUES
(23679, '2023-12-08', 'transformé', 2, 34688),
(24987, '2024-09-05', 'en cours', 1, 456.76),
(24943, '2024-08-29', 'négociation', 2, 342.87),
(24765, '2024-05-22', 'transformé', 5, 3487.65),
(23578, '2023-09-28', 'transformé', 6, 7892.54),
(24935, '2024-09-02', 'en cours', 4, 87654.3),
(24345, '2024-06-06', 'transformé', 6, 9823.74),
(24876, '2024-05-14', 'en cours', 4, 832.54);

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
  `Pays_ID` int(30) NOT NULL,
  `Nom` varchar(60) NOT NULL,
  `Nom_Court` varchar(60) NOT NULL,
  PRIMARY KEY (`Pays_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`Pays_ID`, `Nom`, `Nom_Court`) VALUES
(1, 'France', 'FRA'),
(2, 'Canada', 'CAN'),
(3, 'Allemagne', 'DEU'),
(4, 'Royaume-Uni', 'GBR');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
