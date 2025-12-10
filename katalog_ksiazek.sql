-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2025 at 12:26 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `katalog_ksiazek`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autor`
--

CREATE TABLE `autor` (
  `id_autora` int(11) NOT NULL,
  `imie` varchar(30) NOT NULL,
  `nazwisko` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazka`
--

CREATE TABLE `ksiazka` (
  `id_ksiazki` int(11) NOT NULL,
  `id_autora` int(11) NOT NULL COMMENT 'Autor główny',
  `tytul` varchar(150) NOT NULL,
  `przeczytane` enum('TAK','NIE') DEFAULT NULL,
  `miejsce_wyp` varchar(50) DEFAULT NULL COMMENT 'Miejsce wypozyczenia ksiazki'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autora`);

--
-- Indeksy dla tabeli `ksiazka`
--
ALTER TABLE `ksiazka`
  ADD PRIMARY KEY (`id_ksiazki`),
  ADD KEY `id_autora` (`id_autora`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autora` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ksiazka`
--
ALTER TABLE `ksiazka`
  MODIFY `id_ksiazki` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ksiazka`
--
ALTER TABLE `ksiazka`
  ADD CONSTRAINT `ksiazka_ibfk_1` FOREIGN KEY (`id_autora`) REFERENCES `autor` (`id_autora`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
