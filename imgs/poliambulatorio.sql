-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb:3306
-- Creato il: Mag 07, 2022 alle 08:19
-- Versione del server: 10.5.13-MariaDB-log
-- Versione PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poliambulatorio`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `doctor` int(11) NOT NULL,
  `date` date DEFAULT curdate(),
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `appointments`
--

INSERT INTO `appointments` (`id`, `user`, `doctor`, `date`, `type`) VALUES
(8, 'didih@mailinator.com', 4, '2022-04-23', 4),
(9, 'didih@mailinator.com', 1, '2022-04-23', 4),
(10, 'didih@mailinator.com', 4, '2022-04-23', 2),
(11, 'didih@mailinator.com', 4, '2022-04-23', 6),
(12, 'didih@mailinator.com', 4, '2022-04-23', 3),
(13, 'nacehagyso@mailinator.com', 2, '2022-04-23', 6),
(14, 'test@test.com', 1, '2022-05-20', 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `lastname`) VALUES
(1, 'Mario', 'Rossi'),
(2, 'Luigi', 'Verdi'),
(3, 'Pietro', 'Pietri'),
(4, 'Gianni', 'Giannetti');

-- --------------------------------------------------------

--
-- Struttura della tabella `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'Programma dietetico'),
(2, 'Visita allergologica'),
(3, 'Visita andrologica'),
(4, 'Visita angiologica'),
(5, 'Visita cardiologica'),
(6, 'Visita chirurgica bariatrica');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `email` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`email`, `password`) VALUES
('didih@mailinator.com', 'Pa$$w0rd!'),
('kygukefyca@mailinator.com', '$2y$10$4zblLaEzcGAerxPGyQ/1l.tNYmqDwf1zZ2EGHL0biprUPzJanjk52'),
('nacehagyso@mailinator.com', '$2y$10$4JR0nXVMYuv2wfBGyYy8Wey5CHDYrnaXm.3hoMeCiNI4tuY0qJZhK'),
('test@test.com', '$2y$10$C7JLpP2Qf/.jxPPHAsdw0.HCWXw2uI6thtG0RfUWc3qoujryixaJK');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
