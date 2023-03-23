-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 18, 2020 at 04:04 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `agence`
--

-- --------------------------------------------------------

--
-- Table structure for table `agence`
--

CREATE TABLE `agence` (
  `num_a` int(3) DEFAULT NULL,
  `nom_a` varchar(17) DEFAULT NULL,
  `adresse` varchar(8) DEFAULT NULL,
  `no_tel` decimal(11,2) DEFAULT NULL,
  `no_fax` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agence`
--

INSERT INTO `agence` (`num_a`, `nom_a`, `adresse`, `no_tel`, `no_fax`) VALUES
(121, 'de Fourviere', 'Geneve', '227860425.00', '227586677.00'),
(122, 'du Saleve', 'Thonex', '227863625.00', '227556607.00'),
(101, 'du Valentin', 'Lausanne', '218763424.00', '218598676.00'),
(102, 'de Preverenges', 'Renens', '218863428.00', '218596647.00'),
(191, 'de Valere', 'Sion', '272263495.00', '272266715.00'),
(192, 'du Grand Muverand', 'Chamoson', '272863425.00', '272546747.00'),
(193, 'de la Tour', 'Martigny', '262326342.00', '272566837.00'),
(1233456789, '122', '34567', '10.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `compte`
--

CREATE TABLE `compte` (
  `num_c` decimal(12,2) DEFAULT NULL,
  `num_a` int(3) DEFAULT NULL,
  `num_client` int(5) DEFAULT NULL,
  `solde` decimal(9,2) DEFAULT NULL,
  `decouvert` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `compte`
--

INSERT INTO `compte` (`num_c`, `num_a`, `num_client`, `solde`, `decouvert`) VALUES
('1233456789.00', 122, 34567, '10.00', 0),
('9879876409.00', 193, 45678, '-123498.00', 150000),
('980980987.00', 102, 56789, '91.00', 0),
('2341235675.00', 102, 67890, '-10.00', 50000),
('2343457898.00', 193, 10987, '123457.00', 500000),
('1231231234.00', 121, 45678, '9879.00', 0),
('3423343445.00', 193, 90123, '-12324.00', 20000),
('9098787987.00', 102, 34567, '2343423.00', 999999),
('2345676765.00', 102, 89012, '9.00', 0),
('8745393475.00', 191, 78901, '2345679.00', 100000),
('3453539000.00', 122, 23456, '34500.00', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `num_p` int(5) DEFAULT NULL,
  `num_a` int(3) DEFAULT NULL,
  `salaire` int(5) DEFAULT NULL,
  `role` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`num_p`, `num_a`, `salaire`, `role`) VALUES
(10987, 121, 23000, 'administrateur'),
(90123, 101, 2800, 'secretaire'),
(89012, 193, 4000, 'secretaire'),
(78901, 192, 5600, 'guichetier'),
(67890, 192, 50000, 'directeur'),
(56789, 101, 4500, 'guichetier'),
(45678, 101, 20000, 'gestionnaire'),
(34567, 102, 9000, 'ingenieur'),
(23456, 121, 10000, 'directeur'),
(12345, 122, 3500, 'secretaire'),
(45459, 122, 99000, 'directeur');

-- --------------------------------------------------------

--
-- Table structure for table `emprunt`
--

CREATE TABLE `emprunt` (
  `num_emprunt` int(5) DEFAULT NULL,
  `num_client` int(5) DEFAULT NULL,
  `num_a` int(3) DEFAULT NULL,
  `num_garant` int(5) DEFAULT NULL,
  `num_resp` int(5) DEFAULT NULL,
  `montant` decimal(8,2) DEFAULT NULL,
  `nature` varchar(10) DEFAULT NULL,
  `mensualite` decimal(7,2) DEFAULT NULL,
  `date_debut` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emprunt`
--

INSERT INTO `emprunt` (`num_emprunt`, `num_client`, `num_a`, `num_garant`, `num_resp`, `montant`, `nature`, `mensualite`, `date_debut`) VALUES
(12323, 10987, 193, 56789, 78901, '10000.00', '', '500.00', '1996-01-01'),
(12345, 34567, 121, 89012, 10987, '100000.00', '', '10000.00', '1995-01-05'),
(56784, 34567, 121, 90123, 10987, '20000.00', '', '5000.00', '1995-06-06'),
(56789, 90123, 121, 90123, 10987, '50000.00', '', '10000.00', '1996-06-01'),
(89098, 34567, 102, 23456, 90123, '150000.00', '', '15000.00', '1995-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `personnes`
--

CREATE TABLE `personnes` (
  `numero` int(5) DEFAULT NULL,
  `nom_p` varchar(14) DEFAULT NULL,
  `prenom_p` varchar(12) DEFAULT NULL,
  `adresse` varchar(8) DEFAULT NULL,
  `num_tel` decimal(11,2) DEFAULT NULL,
  `profession` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personnes`
--

INSERT INTO `personnes` (`numero`, `nom_p`, `prenom_p`, `adresse`, `num_tel`, `profession`) VALUES
(12345, 'fanin         ', 'valerie     ', 'Martigny', '268978765.00', 'charpentier   '),
(23456, 'droz          ', 'fabrice     ', 'Lausanne', '213454327.00', 'informaticien '),
(34567, 'perrochon     ', 'martine     ', 'Geneve', '227687654.00', 'decorateur    '),
(45678, 'nerima        ', 'luka        ', 'Renens', '213432123.00', 'linguiste     '),
(56789, 'pugin         ', 'laurent     ', 'Lausanne', '216790980.00', 'physicien     '),
(67890, 'simon         ', 'christina   ', 'Geneve', '227878676.00', 'economiste    '),
(78901, 'olgiati       ', 'fabienne    ', 'Sion', '279897654.00', 'informaticien '),
(89012, 'wehrli        ', 'eric        ', 'Chamoson', '276567980.00', 'gestionnaire  '),
(90123, 'kohler        ', 'paul        ', 'Geneve', '223234567.00', 'gestionnaire  '),
(10987, 'markovic      ', 'sladjana    ', 'Thonex', '223215436.00', 'violoniste    '),
(84545, 'belbachir     ', 'boualem     ', 'Prilly', '213434356.00', 'informaticien '),
(45459, 'gaudinat      ', 'arnaud      ', 'geneve', '213777356.00', 'informaticien ');
