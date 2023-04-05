-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 02, 2020 at 06:28 AM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `cantonCabine`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabine`
--

CREATE TABLE `cabine` (
  `num_cabine` int(2) DEFAULT NULL,
  `nbr_pers` int(1) DEFAULT NULL,
  `confort` varchar(6) DEFAULT NULL,
  `prix_semaine` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cabine`
--

INSERT INTO `cabine` (`num_cabine`, `nbr_pers`, `confort`, `prix_semaine`) VALUES
(1, 2, 'bain', 4000),
(2, 2, 'douche', 3500),
(3, 1, 'bain', 2500),
(4, 2, 'douche', 3000),
(5, 2, 'douche', 3000),
(6, 4, 'douche', 5000),
(7, 2, 'douche', 4000),
(8, 2, 'douche', 3000),
(9, 4, 'bain', 12000),
(10, 3, 'douche', 50);

-- --------------------------------------------------------

--
-- Table structure for table `canton_voisin`
--

CREATE TABLE `canton_voisin` (
  `canton` varchar(14) DEFAULT NULL,
  `voisin` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `canton_voisin`
--

INSERT INTO `canton_voisin` (`canton`, `voisin`) VALUES
('Appenzell R.E.', 'Appenzell R.I.'),
('Appenzell R.E.', 'Saint-Gall'),
('Appenzell R.I.', 'Saint-Gall'),
('Argovie', 'Bâle-Campagne'),
('Argovie', 'Berne'),
('Argovie', 'Soleure'),
('Argovie', 'Zoug'),
('Argovie', 'Zürich'),
('Bâle-Campagne', 'Bâle-Ville'),
('Bâle-Campagne', 'Soleure'),
('Berne', 'Fribourg'),
('Berne', 'Jura'),
('Berne', 'Neuchâtel'),
('Berne', 'Nidwald'),
('Berne', 'Valais'),
('Genève', 'Vaud'),
('Fribourg', 'Vaud'),
('Glaris', 'Grisons'),
('Glaris', 'Saint-Gall'),
('Grisons', 'Saint-Gall'),
('Grisons', 'Tessin'),
('Grisons', 'Uri'),
('Jura', 'Neuchâtel'),
('Lucerne', 'Nidwald'),
('Neuchâtel', 'Vaud'),
('Nidwald', 'Uri'),
('Obwald', 'Uri'),
('Saint-Gall', 'Schwytz'),
('Saint-Gall', 'Thurgovie'),
('Saint-Gall', 'Zürich'),
('Schaffouse', 'Thurgovie'),
('Schaffouse', 'Zürich'),
('Schwytz', 'Uri'),
('Tessin', 'Uri'),
('Thurgovie', 'Zürich'),
('Zoug', 'Zürich'),
('Tessin', 'Valais'),
('Berne', 'Vaud'),
('Berne', 'Lucerne'),
('Berne', 'Obwald'),
('Berne', 'Soleure'),
('Berne', 'Uri'),
('Argovie', 'Lucerne'),
('Jura', 'Soleure'),
('Nidwald', 'Obwald'),
('Lucerne', 'Uri');

-- --------------------------------------------------------

--
-- Table structure for table `langue`
--

CREATE TABLE `langue` (
  `nom_canton` varchar(14) DEFAULT NULL,
  `langue_parlee` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `langue`
--

INSERT INTO `langue` (`nom_canton`, `langue_parlee`) VALUES
('Appenzell R.E.', 'allemand'),
('Appenzell R.I.', 'allemand'),
('Argovie', 'allemand'),
('Bâle-Campagne', 'allemand'),
('Bâle-Ville', 'allemand'),
('Berne', 'allemand'),
('Berne', 'français'),
('Fribourg', 'allemand'),
('Fribourg', 'français'),
('Genève', 'français'),
('Glaris', 'allemand'),
('Grisons', 'allemand'),
('Grisons', 'romanche'),
('Grisons', 'italien'),
('Jura', 'français'),
('Lucerne', 'allemand'),
('Neuchâtel', 'francais'),
('Nidwald', 'allemand'),
('Obwald', 'allemand'),
('Saint-Gall', 'allemand'),
('Schaffhouse', 'allemand'),
('Schwytz', 'allemand'),
('Soleure', 'allemand'),
('Tessin', 'italien'),
('Thurgovie', 'allemand'),
('Uri', 'allemand'),
('Valais', 'français'),
('Valais', 'allemand'),
('Vaud', 'français'),
('Zoug', 'allemand'),
('Zurich', 'allemand');

-- --------------------------------------------------------

--
-- Table structure for table `pays_voisin`
--

CREATE TABLE `pays_voisin` (
  `canton` varchar(13) DEFAULT NULL,
  `pays_voisin` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pays_voisin`
--

INSERT INTO `pays_voisin` (`canton`, `pays_voisin`) VALUES
('Argovie', 'Allemagne'),
('Bâle-Campagne', 'Allemagne'),
('Bâle-Campagne', 'France'),
('Bâle-Ville', 'Allemagne'),
('Bâle-Ville', 'France'),
('Genève', 'France'),
('Grisons', 'Autriche'),
('Grisons', 'Italie'),
('Grisons', 'Liechtenstein'),
('Jura', 'France'),
('Neuchâtel', 'France'),
('Saint-Gall', 'Autriche'),
('Saint-Gall', 'Liechtenstein'),
('Schaffhouse', 'Allemagne'),
('Soleure', 'France'),
('Tessin', 'Italie'),
('Thurgovie', 'Allemagne'),
('Valais', 'France'),
('Valais', 'Italie'),
('Vaud', 'France'),
('Zurich', 'Allemagne');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `num_cabine` int(1) DEFAULT NULL,
  `nom_client` varchar(11) DEFAULT NULL,
  `debut_res` date DEFAULT NULL,
  `fin_res` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`num_cabine`, `nom_client`, `debut_res`, `fin_res`) VALUES
(1, 'Arditi P.', '2002-03-25', '2002-04-15'),
(5, 'Dupont J.', '2002-04-22', '2002-04-29'),
(6, 'Dupont J.', '2002-04-15', '2002-04-29'),
(7, 'Cendrars B.', '2002-04-15', '2002-04-29'),
(1, 'Tintin', '2002-04-15', '2002-04-22'),
(7, 'Verlaine', '2002-04-22', '2002-05-06');
