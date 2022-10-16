-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 16. Okt 2022 um 13:00
-- Server-Version: 10.4.21-MariaDB
-- PHP-Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `rezepte`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `gerichte`
--

CREATE TABLE `gerichte` (
  `ID_gerichte` int(11) NOT NULL,
  `Name_gerichte` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `gerichte`
--

INSERT INTO `gerichte` (`ID_gerichte`, `Name_gerichte`) VALUES
(1, 'Pfannkuchen'),
(2, 'Schnitzel mit Pommes'),
(3, 'Frikadelle mit Kartoffeln'),
(4, 'Kaiserschmarren'),
(5, 'Sloppy Joes'),
(6, 'Burger'),
(7, 'Chinesisch Tofu'),
(8, 'Chinesisch Fleisch '),
(9, 'Frikassee'),
(10, 'Kartoffelsuppe'),
(11, 'Schwabenstreich'),
(12, 'Käse Spätzle'),
(13, 'Spagetti Bolognese '),
(14, 'Spagetti mit Würstchen'),
(15, 'Milchreis'),
(16, 'Grießbrei'),
(17, 'Dampfnudeln'),
(18, 'Gulasch'),
(19, 'Lasagne'),
(20, 'Kartoffelpuffer'),
(21, 'Würstchen mit Sauerkraut und Kartoffelbrei ');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rezepte`
--

CREATE TABLE `rezepte` (
  `ID_rezepte` int(11) NOT NULL,
  `Name_rezepte` varchar(30) NOT NULL,
  `Text_rezepte` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `rezepte`
--

INSERT INTO `rezepte` (`ID_rezepte`, `Name_rezepte`, `Text_rezepte`) VALUES
(1, 'Pfannkuchen', 'Text hier!');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `gerichte`
--
ALTER TABLE `gerichte`
  ADD PRIMARY KEY (`ID_gerichte`);

--
-- Indizes für die Tabelle `rezepte`
--
ALTER TABLE `rezepte`
  ADD PRIMARY KEY (`ID_rezepte`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `gerichte`
--
ALTER TABLE `gerichte`
  MODIFY `ID_gerichte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT für Tabelle `rezepte`
--
ALTER TABLE `rezepte`
  MODIFY `ID_rezepte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
