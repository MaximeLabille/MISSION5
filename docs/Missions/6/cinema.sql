-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Nov 02, 2024 at 11:50 AM
-- Server version: 10.6.12-MariaDB-1:10.6.12+maria~ubu2004-log
-- PHP Version: 8.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinéma`
--

-- --------------------------------------------------------

--
-- Table structure for table `acteur`
--

CREATE TABLE `acteur` (
  `IDENT_ACTEUR` int(30) NOT NULL,
  `NOM` varchar(60) NOT NULL,
  `PRENOM` varchar(60) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `NB_FILM` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acteur`
--

INSERT INTO `acteur` (`IDENT_ACTEUR`, `NOM`, `PRENOM`, `DATE_NAISSANCE`, `NB_FILM`) VALUES
(1, 'DURIS', 'Romain', '1974-05-28', 60),
(2, 'EXARCHOPOULOS', 'ADELE', '1993-11-22', 23),
(3, 'BORHINGER', 'RICHARD', '1942-06-16', 132),
(4, 'GALABRU', 'MICHEL', '1922-10-27', 277),
(5, 'PARILLAUD', 'ANNE', '1960-05-06', 35),
(6, 'FORD', 'HARRISON', '1942-06-13', 64),
(7, 'FISHER', 'CARRIE', '1956-10-21', 74),
(8, 'SALDANA', 'ZOE', '1978-06-19', 31),
(9, 'WEAVER', 'SIGOURNEY', '1949-10-08', 66),
(10, 'RENO', 'JEAN', '1948-06-30', 75);

-- --------------------------------------------------------

--
-- Table structure for table `casting`
--

CREATE TABLE `casting` (
  `IDENT_FILM` int(30) NOT NULL,
  `IDENT_ACTEUR` int(30) NOT NULL,
  `ROLE` varchar(60) NOT NULL,
  `NB_JOUR` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casting`
--

INSERT INTO `casting` (`IDENT_FILM`, `IDENT_ACTEUR`, `ROLE`, `NB_JOUR`) VALUES
(1, 1, 'François', 100),
(1, 2, 'Julia', 100),
(2, 5, 'NIKITA', 58),
(2, 10, 'VICTOR LE NETTOYEUR', 9),
(3, 6, 'HAN SOLO', 201),
(3, 7, 'PRINCESSE LEIA', 203),
(4, 8, 'NEYTIRI', 50),
(4, 9, 'Dr. Grace Augustine', 45);

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `IDENT_FILM` int(30) NOT NULL,
  `TITRE` varchar(60) NOT NULL,
  `GENRE1` varchar(60) NOT NULL,
  `GENRE2` varchar(60) DEFAULT NULL,
  `DATE_SORTIE` date NOT NULL,
  `PAYS` int(30) NOT NULL,
  `IDENT_REALISATEUR` int(30) NOT NULL,
  `DISTRIBUTEUR` varchar(60) NOT NULL,
  `DUREE` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`IDENT_FILM`, `TITRE`, `GENRE1`, `GENRE2`, `DATE_SORTIE`, `PAYS`, `IDENT_REALISATEUR`, `DISTRIBUTEUR`, `DUREE`) VALUES
(1, 'SUBWAY', 'POLICIER', 'DRAME', '1985-04-10', 1, 1, 'GAUMONT', 104),
(2, 'NIKITA', 'DRAME', 'ROMANCE', '1990-02-21', 1, 1, 'GAUMONT', 118),
(3, 'STAR WARS 6 : LE RETOUR DU JEDI', 'ACTION', 'SF', '1983-10-19', 2, 2, '20th Century Fox', 133),
(4, 'AVATAR', 'ACTION', 'SF', '2009-10-16', 2, 3, '20th Century Fox', 170);

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE `pays` (
  `IDENT_PAYS` int(30) NOT NULL,
  `LIBELLE` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`IDENT_PAYS`, `LIBELLE`) VALUES
(1, 'FRANCE'),
(2, 'ETATS-UNIS');

-- --------------------------------------------------------

--
-- Table structure for table `realisateur`
--

CREATE TABLE `realisateur` (
  `IDENT_REALISATEUR` int(30) NOT NULL,
  `NOM` varchar(60) NOT NULL,
  `PRENOM` varchar(60) NOT NULL,
  `DATE_NAISSANCE` date NOT NULL,
  `NB_FILM_ECRIT` int(30) NOT NULL,
  `NB_FILM_PRODUIT` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `realisateur`
--

INSERT INTO `realisateur` (`IDENT_REALISATEUR`, `NOM`, `PRENOM`, `DATE_NAISSANCE`, `NB_FILM_ECRIT`, `NB_FILM_PRODUIT`) VALUES
(1, 'BESSON', 'LUC', '1959-03-18', 40, 99),
(2, 'LUCAS', 'GEORGES', '1944-05-14', 79, 64),
(3, 'CAMERON', 'JAMES', '1954-08-16', 22, 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`IDENT_ACTEUR`);

--
-- Indexes for table `casting`
--
ALTER TABLE `casting`
  ADD KEY `IDENT_FILM` (`IDENT_FILM`),
  ADD KEY `IDENT_ACTEUR` (`IDENT_ACTEUR`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`IDENT_FILM`),
  ADD KEY `PAYS` (`PAYS`),
  ADD KEY `IDENT_REALISATEUR` (`IDENT_REALISATEUR`);

--
-- Indexes for table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`IDENT_PAYS`);

--
-- Indexes for table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`IDENT_REALISATEUR`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `casting`
--
ALTER TABLE `casting`
  ADD CONSTRAINT `casting_ibfk_1` FOREIGN KEY (`IDENT_FILM`) REFERENCES `film` (`IDENT_FILM`),
  ADD CONSTRAINT `casting_ibfk_2` FOREIGN KEY (`IDENT_ACTEUR`) REFERENCES `acteur` (`IDENT_ACTEUR`);

--
-- Constraints for table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`PAYS`) REFERENCES `pays` (`IDENT_PAYS`),
  ADD CONSTRAINT `film_ibfk_2` FOREIGN KEY (`IDENT_REALISATEUR`) REFERENCES `realisateur` (`IDENT_REALISATEUR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
