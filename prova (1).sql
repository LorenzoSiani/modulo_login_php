-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Nov 27, 2023 alle 10:08
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prova`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti`
--

CREATE TABLE `prodotti` (
  `idProdotto` int(11) NOT NULL,
  `NomeProdotto` varchar(50) NOT NULL,
  `Descrizione` varchar(200) NOT NULL,
  `Disponibilità` int(20) NOT NULL,
  `Prezzo` decimal(10,0) NOT NULL,
  `Immagine` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `prodotti`
--

INSERT INTO `prodotti` (`idProdotto`, `NomeProdotto`, `Descrizione`, `Disponibilità`, `Prezzo`, `Immagine`) VALUES
(1, 'passata di pomodoro', 'Dolce e cremosa, la Passata classica è il modo più comodo di utilizzare il pomodoro. E’ ideale per le cotture brevi, in cui mantiene il suo colore rosso brillante.', 5, 10, 'https://mutti-parma.com/app/uploads/sites/7/2019/09/passata-700-1.png'),
(3, 'pomodorini', 'ottimi per gli spaghetti', 7, 7, 'https://www.ilgiornaledelcibo.it/wp-content/uploads/2009/01/pomodorini-confettati.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `idUtente` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `user`
--

INSERT INTO `user` (`idUtente`, `Username`, `Email`, `Password`) VALUES
(7, 'admin', 'admin@admin.it', 'admin'),
(9, 'lore', 'lore@lore.it', 'lore'),
(12, '', '', ''),
(13, 'utente', 'utente@utente.it', 'utente');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `prodotti`
--
ALTER TABLE `prodotti`
  ADD PRIMARY KEY (`idProdotto`);

--
-- Indici per le tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUtente`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `prodotti`
--
ALTER TABLE `prodotti`
  MODIFY `idProdotto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `user`
--
ALTER TABLE `user`
  MODIFY `idUtente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
