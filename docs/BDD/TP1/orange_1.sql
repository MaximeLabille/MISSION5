-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2024 at 04:58 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `orange_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `numCli` int(11) NOT NULL,
  `raisonSoc` varchar(100) NOT NULL,
  `adCp` varchar(100) NOT NULL,
  `adVille` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  PRIMARY KEY (`numCli`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`numCli`, `raisonSoc`, `adCp`, `adVille`, `mail`) VALUES
(1, 'LVMH', '75000', 'Paris', 'lvmh@operateur.com'),
(2, 'L''OREAL', '92117', 'Clichy', 'loreal@operateur.com'),
(3, 'AIRBUS GROUP', '78990', 'Elancourt', 'airbus@opérateur.fr'),
(4, 'THALES', '92190', 'Meudon', 'thales@operateur.fr');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `numCde` varchar(11) NOT NULL,
  `dateCde` date NOT NULL,
  `numClient` int(11) NOT NULL,
  `numDevis` int(11) NOT NULL,
  PRIMARY KEY (`numCde`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`numCde`, `dateCde`, `numClient`, `numDevis`) VALUES
('24AC467', '2024-06-06', 2, 24345),
('24BR987', '2024-05-21', 1, 24987),
('23GT456', '2023-12-19', 2, 23679),
('23HJ345', '2023-10-06', 3, 23578);

-- --------------------------------------------------------

--
-- Table structure for table `devis`
--

CREATE TABLE IF NOT EXISTS `devis` (
  `numDev` int(11) NOT NULL,
  `dateD` date NOT NULL,
  `statut` varchar(100) NOT NULL,
  `numClient` int(11) NOT NULL,
  `idTC` int(11) NOT NULL,
  `montant` decimal(11,2) NOT NULL,
  PRIMARY KEY (`numDev`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devis`
--

INSERT INTO `devis` (`numDev`, `dateD`, `statut`, `numClient`, `idTC`, `montant`) VALUES
(23679, '2023-12-08', 'transformé', 2, 1, '34688.00'),
(24987, '2024-09-05', 'en cours', 1, 3, '456.76'),
(24943, '2024-08-29', 'négociation', 2, 2, '342.87'),
(24765, '2024-05-22', 'transformé', 4, 3, '3487.65'),
(23578, '2023-09-28', 'transformé', 3, 4, '7892.54'),
(24935, '2024-09-02', 'en cours', 4, 2, '87654.32'),
(24345, '2024-06-06', 'transformé', 3, 3, '9823.74'),
(24876, '2024-05-14', 'en cours', 4, 1, '832.54');

-- --------------------------------------------------------

--
-- Table structure for table `itc`
--

CREATE TABLE IF NOT EXISTS `itc` (
  `idITC` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `numService` int(11) NOT NULL,
  PRIMARY KEY (`idITC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itc`
--

INSERT INTO `itc` (`idITC`, `nom`, `prenom`, `numService`) VALUES
(1, 'NomA', 'PrenomA', 1),
(2, 'NomB', 'PrenomB', 1),
(3, 'NomC', 'PrenomC', 3),
(4, 'NomD', 'PrenomD', 2);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `numService` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  PRIMARY KEY (`numService`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`numService`, `nom`) VALUES
(1, 'Support Réseau'),
(2, 'Support Métier'),
(3, 'ADV');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
