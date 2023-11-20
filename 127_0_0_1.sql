-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Gegenereerd op: 20 nov 2023 om 09:18
-- Serverversie: 10.10.2-MariaDB
-- PHP-versie: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elisabeth`
--
CREATE DATABASE IF NOT EXISTS `elisabeth` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `elisabeth`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(240) NOT NULL,
  `password` varchar(240) NOT NULL,
  `AdminLVL` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `login`
--

INSERT INTO `login` (`UserID`, `username`, `password`, `AdminLVL`, `name`) VALUES
(1, 'Essentialbee', 'Funny!00', 4, 'Yarno de Jong');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `naam` varchar(250) NOT NULL,
  `achternaam` varchar(250) NOT NULL,
  `geboortedatum` date NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`userID`, `naam`, `achternaam`, `geboortedatum`) VALUES
(1, 'Yarno', 'de Jong', '2006-09-13'),
(2, 'Lyzanne', 'de Jong', '2003-06-23'),
(3, 'Stefan', 'Koster', '2005-09-22'),
(4, 'Hero', 'Hoekstra', '2006-06-28');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
