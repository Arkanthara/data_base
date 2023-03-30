-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 26, 2020 at 09:47 AM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `journaux`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `titre` varchar(62) DEFAULT NULL,
  `auteur` varchar(18) DEFAULT NULL,
  `journal` varchar(20) DEFAULT NULL,
  `numero` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`titre`, `auteur`, `journal`, `numero`) VALUES
('L’ordinateur va-t’il imposer sa manière de penser ?', 'Gustave Moeckli', 'Le Temps stratégique', '10'),
('Lettre à une grande dame', 'Ariane Dayer', 'L’Illustré', '40'),
('Rat des champs contre rats du loft', 'Jean-Daniel Urbain', 'L’Illustré', '40'),
('“Alinghi” brise l’invincibilité d’”Oracle” et de Larry Ellison', 'Pierre Nusslé', 'La Tribune de Genève', '237-41'),
('Papiers grecs', 'Jacques Develey', 'Le Matin', '109'),
('L’éthique scientifique au coeur des plaidoiries', 'Claude Aublanc', 'Le Courrier', '234'),
('Quand je pense \"a\", l\'ordinateur répète \"a\"', 'Luc Demenjoz', 'Le Temps', '658');

-- --------------------------------------------------------

--
-- Table structure for table `auteur`
--

CREATE TABLE `auteur` (
  `nom` varchar(18) DEFAULT NULL,
  `adresse` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auteur`
--

INSERT INTO `auteur` (`nom`, `adresse`) VALUES
('Gustave Moeckli', 'Carouge'),
('Ariane Dayer', 'Lausanne'),
('Jean-Daniel Urbain', 'Genève'),
('Pierre Nusslé', 'Genève'),
('Jacques Develey', 'Morges'),
('Claude Aublanc', 'Grand-Lancy'),
('Luc Demenjoz', 'Genève');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `num_client` int(4) DEFAULT NULL,
  `nom` varchar(8) DEFAULT NULL,
  `prenom` varchar(10) DEFAULT NULL,
  `adresse` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`num_client`, `nom`, `prenom`, `adresse`) VALUES
(1000, 'GASCON', 'GASTON', '12 av. du General 1239 ICI'),
(1001, 'DUPONT', 'PIERRE', '12 ch. des hirondelles 1238 LABAS'),
(1002, 'DUFOUR', 'JEAN', '10 av. de la gare 1300 AILLEURS'),
(1003, 'ZORO', 'DIEGO', '10 ch des voleurs Los Angeles'),
(1004, 'EINSTEIN', 'ALBERT', '10 route de la relativite 1004 PLUS-LOIN'),
(1005, 'DUMAS', 'ALEXANDRE', '10 route du moulins LE-SUD'),
(1007, 'NOBODY', 'FRANCOISE', '403 route de l inconnu 75000 Paris'),
(1006, 'ROMULUS', 'BERNADETTE', '241 route de rome 1409 Lion'),
(1009, 'AGDA', 'BRUNO', '10 route de l impossible 1508 TEXAS'),
(1008, 'CHADOK', 'AMELIE', '25 rue de la rame 1456 Tombouctou');

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE `pays` (
  `nom` varchar(13) DEFAULT NULL,
  `population` int(8) DEFAULT NULL,
  `surface` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`nom`, `population`, `surface`) VALUES
('Espagne', 40977000, 507700),
('Suisse', 7489370, 41293),
('France', 60656178, 547030),
('Autriche', 8184691, 83850),
('Allemagne', 80100000, 357000),
('Italie', 58462375, 301323),
('Liechtenstein', 33717, 160);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `num_client` int(4) DEFAULT NULL,
  `num_chambre` int(2) DEFAULT NULL,
  `date_arr` date DEFAULT NULL,
  `date_dep` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`num_client`, `num_chambre`, `date_arr`, `date_dep`) VALUES
(1000, 11, '2020-01-11', '2020-01-15'),
(1001, 21, '2020-02-29', NULL),
(1002, 34, '2019-12-20', '2019-12-27'),
(1003, 44, '2019-12-24', '2019-12-27'),
(1005, 45, '2019-12-23', '2019-12-28'),
(1006, 14, '2019-12-01', '2019-12-28'),
(1007, 23, '2019-12-01', '2019-12-02'),
(1007, 23, '2019-12-08', '2019-12-09'),
(1007, 23, '2019-12-15', '2019-12-16'),
(1007, 23, '2019-12-22', '2019-12-23'),
(1007, 23, '2019-12-29', '2019-12-30');
