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
-- Database: `lepsza_biblioteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autor`
--

CREATE TABLE `autor` (
  `autor_id` int(11) NOT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `imie` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `autor`
--

INSERT INTO `autor` (`autor_id`, `nazwisko`, `imie`) VALUES
(1, 'King', 'Stephen'),
(2, 'Straub', 'Peter'),
(3, 'Rudnicka', 'Olga'),
(4, 'Mróz', 'Remigiusz'),
(5, 'Kochanowski', 'Jan');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `klient_id` int(11) NOT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `imie` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `ksiazka_id` int(11) NOT NULL,
  `autor_id` int(11) NOT NULL,
  `tytul` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenie`
--

CREATE TABLE `wypozyczenie` (
  `wypozyczenie_id` int(11) NOT NULL,
  `ksiazka_id` int(11) NOT NULL,
  `klient_id` int(11) NOT NULL,
  `data_wypo` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`autor_id`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`klient_id`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`ksiazka_id`),
  ADD KEY `autor_id` (`autor_id`);

--
-- Indeksy dla tabeli `wypozyczenie`
--
ALTER TABLE `wypozyczenie`
  ADD PRIMARY KEY (`wypozyczenie_id`),
  ADD KEY `ksiazka_id` (`ksiazka_id`),
  ADD KEY `klient_id` (`klient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `autor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `klient_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `ksiazka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wypozyczenie`
--
ALTER TABLE `wypozyczenie`
  MODIFY `wypozyczenie_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD CONSTRAINT `ksiazki_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`autor_id`);

--
-- Constraints for table `wypozyczenie`
--
ALTER TABLE `wypozyczenie`
  ADD CONSTRAINT `wypozyczenie_ibfk_1` FOREIGN KEY (`ksiazka_id`) REFERENCES `ksiazki` (`ksiazka_id`),
  ADD CONSTRAINT `wypozyczenie_ibfk_2` FOREIGN KEY (`klient_id`) REFERENCES `klienci` (`klient_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
