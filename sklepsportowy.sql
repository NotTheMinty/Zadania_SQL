-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2025 at 11:00 AM
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
-- Database: `sklepsportowy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(100) DEFAULT NULL,
  `opis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategorie`
--

INSERT INTO `kategorie` (`id`, `nazwa`, `opis`) VALUES
(1, 'Piłka nożna', 'Sprzęt i akcesoria do piłki nożnej'),
(2, 'Koszykówka', 'Sprzęt koszykarski'),
(3, 'Siłownia', 'Akcesoria i sprzęt do siłowni');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(100) DEFAULT NULL,
  `opis` text DEFAULT NULL,
  `cena` decimal(10,2) DEFAULT NULL,
  `ilosc` int(11) DEFAULT NULL,
  `kategoria_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produkty`
--

INSERT INTO `produkty` (`id`, `nazwa`, `opis`, `cena`, `ilosc`, `kategoria_id`) VALUES
(1, 'Piłka Adidas', 'Oficjalna piłka meczowa', 120.00, 50, 1),
(2, 'Buty Nike Mercurial', 'Profesjonalne buty piłkarskie', 350.00, 20, 1),
(3, 'Kosz do koszykówki', 'Regulowany kosz do gry', 899.99, 10, 2),
(4, 'Hantle 10kg', 'Hantle gumowane', 150.00, 30, 3),
(5, 'Rękawice bramkarskie', 'Profesjonalne rękawice piłkarskie', 200.00, 15, 1),
(6, 'Stroje piłkarskie', 'Zestaw koszulka i spodenki', 180.00, 25, 1),
(7, 'Piłka do koszykówki', 'Oficjalna piłka do gry', 250.00, 40, 2),
(8, 'Obciążenie 5kg', 'Obciążenie do sztangi', 90.00, 50, 3),
(9, 'Ławka treningowa', 'Regulowana ławka do ćwiczeń', 500.00, 20, 3),
(10, 'Skakanka', 'Profesjonalna skakanka sportowa', 50.00, 60, 3),
(11, 'Mata do ćwiczeń', 'Antypoślizgowa mata fitness', 80.00, 35, 3),
(12, 'Sztanga 20kg', 'Sztanga olimpijska', 700.00, 15, 3),
(13, 'Siatka do bramki', 'Wytrzymała siatka na bramkę', 120.00, 25, 1),
(14, 'Bidon sportowy', 'Bidon 1L na wodę', 30.00, 100, 3),
(15, 'Plecak sportowy', 'Plecak na sprzęt sportowy', 150.00, 40, 3),
(16, 'Kask rowerowy', 'Lekki i bezpieczny kask', 220.00, 30, 3),
(17, 'Ochraniacze na kolana', 'Komplet ochraniaczy', 90.00, 45, 3),
(18, 'Rakieta tenisowa', 'Profesjonalna rakieta', 400.00, 25, 3),
(19, 'Torba sportowa', 'Duża torba treningowa', 250.00, 30, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szczegolyzamowienia`
--

CREATE TABLE `szczegolyzamowienia` (
  `id` int(11) NOT NULL,
  `zamowienie_id` int(11) DEFAULT NULL,
  `produkt_id` int(11) DEFAULT NULL,
  `ilosc` int(11) DEFAULT NULL,
  `cena` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `szczegolyzamowienia`
--

INSERT INTO `szczegolyzamowienia` (`id`, `zamowienie_id`, `produkt_id`, `ilosc`, `cena`) VALUES
(1, 1, 1, 2, 120.00),
(2, 1, 3, 1, 899.99),
(3, 1, 2, 1, 350.00),
(4, 1, 4, 2, 150.00),
(5, 2, 1, 3, 120.00),
(6, 2, 5, 1, 500.00),
(7, 3, 2, 2, 350.00),
(8, 3, 3, 1, 899.99),
(9, 3, 5, 2, 500.00),
(10, 4, 1, 1, 120.00);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `haslo` varchar(255) DEFAULT NULL,
  `adres` varchar(255) DEFAULT NULL,
  `telefonkomorkowy` varchar(15) DEFAULT NULL,
  `data_rejestracji` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `imie`, `nazwisko`, `email`, `haslo`, `adres`, `telefonkomorkowy`, `data_rejestracji`) VALUES
(1, 'Jan', 'Kowalski', 'jan.kowalski@example.com', 'haslo123', 'ul. Sportowa 12, Warszawa', '123456789', '2025-02-13 13:21:36'),
(2, 'Anna', 'Nowak', 'anna.nowak@example.com', 'bezpiecznehaslo', 'ul. Zdrowa 5, Kraków', '987654321', '2025-02-13 13:21:36'),
(3, 'Piotr', 'Zieliński', 'piotr.ziel@example.com', 'pass456', 'ul. Krótka 7, Gdańsk', '777888999', '2025-02-13 13:21:36'),
(4, 'Monika', 'Jankowska', 'monika.jan@example.com', 'qwerty', 'ul. Wiosenna 14, Szczecin', '666555444', '2025-02-13 13:21:36'),
(5, 'Tomasz', 'Wójcik', 'tomasz.woj@example.com', 'testpass', 'ul. Długa 21, Lublin', '222333444', '2025-02-13 13:21:36'),
(6, 'Magdalena', 'Kaczmarek', 'magda.kac@example.com', 'haslo456', 'ul. Zielona 9, Łódź', '888999000', '2025-02-13 13:21:36'),
(7, 'Paweł', 'Mazur', 'pawel.maz@example.com', 'xyz123', 'ul. Spacerowa 5, Katowice', '555666777', '2025-02-13 13:21:36'),
(8, 'Alicja', 'Dąbrowska', 'alicja.dab@example.com', 'securepass', 'ul. Główna 11, Bydgoszcz', '111000999', '2025-02-13 13:21:36'),
(9, 'Grzegorz', 'Szymański', 'grzegorz.szy@example.com', 'grzegorz123', 'ul. Leśna 4, Rzeszów', '444333222', '2025-02-13 13:21:36'),
(10, 'Ewa', 'Piotrowska', 'ewa.pio@example.com', 'ewapass', 'ul. Kwiatowa 2, Olsztyn', '999888777', '2025-02-13 13:21:36'),
(11, 'Michał', 'Lewandowski', 'michal.lew@example.com', 'pass123', 'ul. Boczna 3, Poznań', '111222333', '2025-02-13 13:21:36'),
(12, 'Katarzyna', 'Wiśniewska', 'kasia.wis@example.com', 'strongpass', 'ul. Centralna 8, Wrocław', '444555666', '2025-02-13 13:21:36');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `uzytkownik_id` int(11) DEFAULT NULL,
  `data_zamowienia` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Nowe','W realizacji','Wysłane','Dostarczone','Anulowane') DEFAULT 'Nowe'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `uzytkownik_id`, `data_zamowienia`, `status`) VALUES
(1, 1, '2025-02-13 13:21:36', 'Nowe'),
(2, 2, '2025-02-13 13:21:36', 'W realizacji'),
(3, 3, '2025-02-13 13:21:36', 'Wysłane'),
(4, 4, '2025-02-13 13:21:36', 'Dostarczone'),
(5, 5, '2025-02-13 13:21:36', 'Anulowane'),
(6, 6, '2025-02-13 13:21:36', 'Nowe'),
(7, 7, '2025-02-13 13:21:36', 'Nowe'),
(8, 8, '2025-02-13 13:21:36', 'W realizacji'),
(9, 9, '2025-02-13 13:21:36', 'Wysłane'),
(10, 10, '2025-02-13 13:21:36', 'Dostarczone'),
(11, 1, '2025-02-13 13:21:36', 'Nowe'),
(12, 2, '2025-02-13 13:21:36', 'Nowe'),
(13, 3, '2025-02-13 13:21:36', 'Nowe'),
(14, 4, '2025-02-13 13:21:36', 'W realizacji'),
(15, 5, '2025-02-13 13:21:36', 'Dostarczone'),
(16, 6, '2025-02-13 13:21:36', 'Nowe'),
(17, 7, '2025-02-13 13:21:36', 'Anulowane'),
(18, 8, '2025-02-13 13:21:36', 'Dostarczone'),
(19, 9, '2025-02-13 13:21:36', 'Nowe'),
(20, 10, '2025-02-13 13:21:36', 'Wysłane'),
(21, 1, '2025-02-13 13:21:36', 'Nowe'),
(22, 2, '2025-02-13 13:21:36', 'Wysłane'),
(23, 3, '2025-02-13 13:21:36', 'Dostarczone'),
(24, 4, '2025-02-13 13:21:36', 'Nowe'),
(25, 5, '2025-02-13 13:21:36', 'Nowe'),
(26, 6, '2025-02-13 13:21:36', 'W realizacji'),
(27, 7, '2025-02-13 13:21:36', 'Dostarczone'),
(28, 8, '2025-02-13 13:21:36', 'Wysłane'),
(29, 9, '2025-02-13 13:21:36', 'Nowe'),
(30, 10, '2025-02-13 13:21:36', 'Nowe');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nazwa` (`nazwa`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategoria_id` (`kategoria_id`);

--
-- Indeksy dla tabeli `szczegolyzamowienia`
--
ALTER TABLE `szczegolyzamowienia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zamowienie_id` (`zamowienie_id`),
  ADD KEY `produkt_id` (`produkt_id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uzytkownik_id` (`uzytkownik_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `szczegolyzamowienia`
--
ALTER TABLE `szczegolyzamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produkty`
--
ALTER TABLE `produkty`
  ADD CONSTRAINT `produkty_ibfk_1` FOREIGN KEY (`kategoria_id`) REFERENCES `kategorie` (`id`);

--
-- Constraints for table `szczegolyzamowienia`
--
ALTER TABLE `szczegolyzamowienia`
  ADD CONSTRAINT `szczegolyzamowienia_ibfk_1` FOREIGN KEY (`zamowienie_id`) REFERENCES `zamowienia` (`id`),
  ADD CONSTRAINT `szczegolyzamowienia_ibfk_2` FOREIGN KEY (`produkt_id`) REFERENCES `produkty` (`id`);

--
-- Constraints for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`uzytkownik_id`) REFERENCES `uzytkownicy` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
