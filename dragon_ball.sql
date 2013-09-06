-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 06, 2013 at 09:53 PM
-- Server version: 5.5.31
-- PHP Version: 5.3.10-1ubuntu3.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `PBD_server`
--

-- --------------------------------------------------------

--
-- Table structure for table `ball`
--

CREATE TABLE IF NOT EXISTS `ball` (
  `id` varchar(32) NOT NULL,
  `bssid` varchar(32) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `validity` tinyint(1) NOT NULL,
  `wifi_signal` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ball`
--

INSERT INTO `ball` (`id`, `bssid`, `latitude`, `longitude`, `validity`, `wifi_signal`) VALUES
('1', 'amazing_race', 0, 0, 2, 0),
('10', 'amazing_race', 0, 0, 2, 0),
('11', 'amazing_race', 0, 0, 2, 0),
('12', 'amazing_race', 0, 0, 2, 0),
('13', 'amazing_race', 0, 0, 2, 0),
('14', 'amazing_race', 0, 0, 2, 0),
('15', 'amazing_race', 0, 0, 2, 0),
('16', 'amazing_race', 0, 0, 2, 0),
('17', 'amazing_race', 0, 0, 2, 0),
('18', 'amazing_race', 0, 0, 2, 0),
('19', 'amazing_race', 0, 0, 2, 0),
('2', 'amazing_race', 0, 0, 2, 0),
('20', 'amazing_race', 0, 0, 2, 0),
('21', 'amazing_race', 39.737755555556, 104.98928611111, 0, 0),
('296c91a3fe51ad54413124a99657144b', 'qwertb', -6.887796, 107.60855, 1, 0),
('2f6dbc1b5be83963f671a6220a2c57ab', 'qwertj', -6.887796, 107.60855, 1, 0),
('3', 'amazing_race', 0, 0, 2, 0),
('4', 'amazing_race', 0, 0, 2, 0),
('5', 'amazing_race', 0, 0, 2, 0),
('6', 'amazing_race', 0, 0, 2, 0),
('7', 'amazing_race', 0, 0, 2, 0),
('8', 'amazing_race', 0, 0, 2, 0),
('9', 'amazing_race', 0, 0, 2, 0),
('994f5f08564fe2935918936661535e69', 'qwertu', -6.887796, 107.60855, 1, 0),
('ae9ecddbd4dc36e9cd6101917031d3eb', 'qwertl', -6.887796, 107.60855, 1, 0),
('f08b939dccf3bf386dcb16f48b38a2f2', 'qwertn', -6.887796, 107.60855, 1, 0),
('f1660e6da6f6d46e17515ef0230a47ad', 'qwerte', -6.887796, 107.60855, 1, 0),
('f9e22bda3a98225286a227c35978c863', 'qwertp', -6.887796, 107.60855, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ball_info`
--

CREATE TABLE IF NOT EXISTS `ball_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bssid` varchar(32) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `wifi_signal` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `ball_info`
--

INSERT INTO `ball_info` (`id`, `bssid`, `latitude`, `longitude`,`wifi_signal`) VALUES
(1, 'qwerta', -6.887796, 107.60855, 0),
(2, 'qwertb', -6.887796, 107.60855, 0),
(3, 'qwertc', -6.887796, 107.60855, 0),
(4, 'qwertd', -6.887796, 107.60855, 0),
(5, 'qwerte', -6.887796, 107.60855, 0),
(6, 'qwertf', -6.887796, 107.60855, 0),
(7, 'qwertg', -6.887796, 107.60855, 0),
(8, 'qwerth', -6.887796, 107.60855, 0),
(9, 'qwerti', -6.887796, 107.60855, 0),
(10, 'qwertj', -6.887796, 107.60855, 0),
(11, 'qwertk', -6.887796, 107.60855, 0),
(12, 'qwertl', -6.887796, 107.60855, 0),
(13, 'qwertm', -6.887796, 107.60855, 0),
(14, 'qwertn', -6.887796, 107.60855, 0),
(15, 'qwerto', -6.887796, 107.60855, 0),
(16, 'qwertp', -6.887796, 107.60855, 0),
(17, 'qwertq', -6.887796, 107.60855, 0),
(18, 'qwertr', -6.887796, 107.60855, 0),
(19, 'qwerts', -6.887796, 107.60855, 0),
(20, 'qwertt', -6.887796, 107.60855, 0),
(21, 'qwertu', -6.887796, 107.60855, 0);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `id` varchar(32) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `achieved_ball_count` int(11) NOT NULL DEFAULT '0',
  `group_key` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `group_name`, `achieved_ball_count`, `group_key`) VALUES
('f9cf0876055ebd0b831a68fa0a8cc61f', 'haha', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `group_ball`
--

CREATE TABLE IF NOT EXISTS `group_ball` (
  `group_id` varchar(32) NOT NULL,
  `ball_id` varchar(32) NOT NULL,
  KEY `ball_id` (`ball_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_ball`
--

INSERT INTO `group_ball` (`group_id`, `ball_id`) VALUES
('f9cf0876055ebd0b831a68fa0a8cc61f', 'db30307ddafd40a22864fdebf39ba3a3'),
('f9cf0876055ebd0b831a68fa0a8cc61f', 'da9ff6ac031efdcd8d35821e77b48997'),
('f9cf0876055ebd0b831a68fa0a8cc61f', 'da7cba409de6224148f624ca49a0b95c'),
('f9cf0876055ebd0b831a68fa0a8cc61f', 'a67afcbff5ec51fe6671d558038b8673'),
('f9cf0876055ebd0b831a68fa0a8cc61f', '89951feae513e7dd325dcbab8e687720'),
('f9cf0876055ebd0b831a68fa0a8cc61f', '44a87aa8e7a80b29550b7c9b63751c44'),
('f9cf0876055ebd0b831a68fa0a8cc61f', '619b0007268ec481f600b57da0bad456');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(10) NOT NULL,
  `param` text,
  `ip_address` varchar(50) NOT NULL,
  `ip_address_forwarded` varchar(50) DEFAULT NULL,
  `response` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
