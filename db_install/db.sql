-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 19 mei 2021 om 19:24
-- Serverversie: 10.3.29-MariaDB
-- PHP-versie: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `colourfultaste_sauve`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `callLog`
--

CREATE TABLE `callLog` (
  `uuid` varchar(255) NOT NULL,
  `callerNumber` varchar(20) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `language` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cuttingReport`
--

CREATE TABLE `cuttingReport` (
  `reportID` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `messageUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `treeStory`
--

CREATE TABLE `treeStory` (
  `storyID` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `messageUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `callLog`
--
ALTER TABLE `callLog`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexen voor tabel `cuttingReport`
--
ALTER TABLE `cuttingReport`
  ADD PRIMARY KEY (`reportID`),
  ADD KEY `uuid` (`uuid`);

--
-- Indexen voor tabel `treeStory`
--
ALTER TABLE `treeStory`
  ADD PRIMARY KEY (`storyID`),
  ADD KEY `uuid` (`uuid`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `cuttingReport`
--
ALTER TABLE `cuttingReport`
  MODIFY `reportID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `treeStory`
--
ALTER TABLE `treeStory`
  MODIFY `storyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `cuttingReport`
--
ALTER TABLE `cuttingReport`
  ADD CONSTRAINT `cuttingReport_ibfk_1` FOREIGN KEY (`uuid`) REFERENCES `callLog` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `treeStory`
--
ALTER TABLE `treeStory`
  ADD CONSTRAINT `treeStory_ibfk_1` FOREIGN KEY (`uuid`) REFERENCES `callLog` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
