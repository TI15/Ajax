create database personer;
use personer;

-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 26 okt 2017 kl 11:33
-- Serverversion: 5.6.24
-- PHP-version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `personer`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `PersonId` int(11) NOT NULL,
  `Fnamn` varchar(50) DEFAULT NULL,
  `Enamn` varchar(50) DEFAULT NULL,
  `Gatuadress` varchar(50) DEFAULT NULL,
  `Postnr` varchar(10) DEFAULT NULL,
  `Postadress` varchar(50) DEFAULT NULL,
  `Telefon` varchar(50) DEFAULT NULL,
  `Epost` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `person`
--

INSERT INTO `person` (`PersonId`, `Fnamn`, `Enamn`, `Gatuadress`, `Postnr`, `Postadress`, `Telefon`, `Epost`) VALUES
(7, 'Harald', 'Liljedahl', 'Sjöviksvägen 75', '11757', 'Stockholm', '087188147', 'hrl@nacka.se'),
(8, 'Clara', 'Friberg', 'Fribergvägen 75', '11757', 'Nacka', '087188147', 'clara.friberg@nacka.se'),
(9, 'David', 'Westius', 'Westiusvägen 75', '11757', 'Tyresö', '087188147', 'david.Westius@nacka.se'),
(10, 'Garabed', 'Hakopian', 'Hakopianvägen 75', '11757', 'Uppsala', '087188147', 'garabed.Hakopian@nacka.se'),
(11, 'Emil', 'Norberg', 'Norbergvägen 75', '11757', 'Nacka', '087188147', 'emil.Norberg@nacka.se');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`PersonId`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `person`
--
ALTER TABLE `person`
  MODIFY `PersonId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
