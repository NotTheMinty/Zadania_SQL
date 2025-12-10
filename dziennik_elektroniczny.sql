-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2025 at 10:59 AM
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
-- Database: `dziennik_elektroniczny`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasy`
--

CREATE TABLE `klasy` (
  `id_klasy` int(11) NOT NULL,
  `nazwa_klasy` varchar(50) DEFAULT NULL,
  `nazwa_klasy_skrocona` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klasy`
--

INSERT INTO `klasy` (`id_klasy`, `nazwa_klasy`, `nazwa_klasy_skrocona`) VALUES
(1, '1a matematyczno-przyrodnicza', '1a'),
(2, '1b chemiczno-biologiczna', '1b'),
(3, '1c huministyczno-prawna', '1c'),
(4, '1a matematyczno-przyrodnicza', '1a'),
(5, '1b chemiczno-biologiczna', '1b'),
(6, '1c huministyczno-prawna', '1c'),
(7, '1a matematyczno-przyrodnicza', '1a'),
(8, '1b chemiczno-biologiczna', '1b'),
(9, '1c huministyczno-prawna', '1c'),
(10, '1a matematyczno-przyrodnicza', '1a'),
(11, '1b chemiczno-biologiczna', '1b'),
(12, '1c huministyczno-prawna', '1c');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciele`
--

CREATE TABLE `nauczyciele` (
  `id_nauczyciela` int(11) NOT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nauczyciele`
--

INSERT INTO `nauczyciele` (`id_nauczyciela`, `imie`, `nazwisko`) VALUES
(1, 'Adam', 'Nowak'),
(2, 'Maria', 'Kowalska'),
(3, 'Anna', 'Mróz'),
(4, 'Waleria', 'Polna'),
(5, 'Paweł', 'Wiśniewski'),
(6, 'Adam', 'Nowak'),
(7, 'Maria', 'Kowalska'),
(8, 'Anna', 'Mróz'),
(9, 'Waleria', 'Polna'),
(10, 'Paweł', 'Wiśniewski'),
(11, 'Adam', 'Nowak'),
(12, 'Maria', 'Kowalska'),
(13, 'Anna', 'Mróz'),
(14, 'Waleria', 'Polna'),
(15, 'Paweł', 'Wiśniewski'),
(16, 'Adam', 'Nowak'),
(17, 'Maria', 'Kowalska'),
(18, 'Anna', 'Mróz'),
(19, 'Waleria', 'Polna'),
(20, 'Paweł', 'Wiśniewski');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `id_oceny` int(11) NOT NULL,
  `id_ucznia` int(11) DEFAULT NULL,
  `id_przedmiotu` int(11) DEFAULT NULL,
  `ocena` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oceny`
--

INSERT INTO `oceny` (`id_oceny`, `id_ucznia`, `id_przedmiotu`, `ocena`) VALUES
(1, 1, 1, 4.50),
(2, 1, 2, 3.00),
(3, 1, 3, 5.00),
(4, 1, 4, 4.00),
(5, 1, 5, 4.50),
(6, 1, 1, 3.50),
(7, 1, 2, 3.50),
(8, 1, 3, 4.00),
(9, 2, 4, 4.00),
(10, 2, 5, 4.50),
(11, 2, 1, 3.00),
(12, 2, 2, 5.00),
(13, 2, 3, 4.00),
(14, 2, 4, 4.50),
(15, 2, 5, 3.50),
(16, 3, 1, 3.50),
(17, 3, 2, 4.00),
(18, 3, 3, 4.00),
(19, 3, 4, 4.50),
(20, 3, 5, 3.00),
(21, 3, 1, 5.00),
(22, 3, 2, 4.00),
(23, 3, 3, 4.50),
(24, 3, 4, 3.50),
(25, 3, 5, 3.50),
(26, 3, 1, 4.00),
(27, 4, 2, 4.00),
(28, 4, 3, 4.50),
(29, 4, 4, 3.00),
(30, 4, 5, 5.00),
(31, 5, 1, 4.00),
(32, 5, 2, 4.50),
(33, 5, 3, 3.50),
(34, 5, 4, 3.50),
(35, 6, 5, 4.00),
(36, 6, 1, 4.00),
(37, 6, 2, 4.50),
(38, 6, 3, 3.00),
(39, 6, 4, 5.00),
(40, 6, 5, 4.00),
(41, 6, 1, 4.50),
(42, 6, 2, 3.50),
(43, 6, 3, 3.50),
(44, 6, 4, 4.00),
(45, 6, 5, 4.00),
(46, 7, 1, 4.50),
(47, 7, 2, 3.00),
(48, 7, 3, 5.00),
(49, 7, 4, 4.00),
(50, 7, 5, 4.50),
(51, 7, 1, 3.50),
(52, 7, 2, 3.50),
(53, 7, 3, 4.00),
(54, 8, 4, 4.00),
(55, 8, 5, 4.50),
(56, 8, 1, 3.00),
(57, 8, 2, 5.00),
(58, 8, 3, 4.00),
(59, 8, 4, 4.50),
(60, 8, 5, 3.50),
(61, 8, 1, 2.50),
(62, 8, 2, 3.00),
(63, 9, 3, 4.00),
(64, 9, 4, 2.50),
(65, 9, 5, 1.00),
(66, 9, 3, 5.00),
(67, 9, 1, 4.00),
(68, 9, 2, 3.50),
(69, 9, 4, 2.50),
(70, 10, 5, 3.50),
(71, 10, 1, 2.00),
(72, 10, 2, 4.00),
(73, 1, 1, 4.50),
(74, 1, 2, 3.00),
(75, 1, 3, 5.00),
(76, 1, 4, 4.00),
(77, 1, 5, 4.50),
(78, 1, 1, 3.50),
(79, 1, 2, 3.50),
(80, 1, 3, 4.00),
(81, 2, 4, 4.00),
(82, 2, 5, 4.50),
(83, 2, 1, 3.00),
(84, 2, 2, 5.00),
(85, 2, 3, 4.00),
(86, 2, 4, 4.50),
(87, 2, 5, 3.50),
(88, 3, 1, 3.50),
(89, 3, 2, 4.00),
(90, 3, 3, 4.00),
(91, 3, 4, 4.50),
(92, 3, 5, 3.00),
(93, 3, 1, 5.00),
(94, 3, 2, 4.00),
(95, 3, 3, 4.50),
(96, 3, 4, 3.50),
(97, 3, 5, 3.50),
(98, 3, 1, 4.00),
(99, 4, 2, 4.00),
(100, 4, 3, 4.50),
(101, 4, 4, 3.00),
(102, 4, 5, 5.00),
(103, 5, 1, 4.00),
(104, 5, 2, 4.50),
(105, 5, 3, 3.50),
(106, 5, 4, 3.50),
(107, 6, 5, 4.00),
(108, 6, 1, 4.00),
(109, 6, 2, 4.50),
(110, 6, 3, 3.00),
(111, 6, 4, 5.00),
(112, 6, 5, 4.00),
(113, 6, 1, 4.50),
(114, 6, 2, 3.50),
(115, 6, 3, 3.50),
(116, 6, 4, 4.00),
(117, 6, 5, 4.00),
(118, 7, 1, 4.50),
(119, 7, 2, 3.00),
(120, 7, 3, 5.00),
(121, 7, 4, 4.00),
(122, 7, 5, 4.50),
(123, 7, 1, 3.50),
(124, 7, 2, 3.50),
(125, 7, 3, 4.00),
(126, 8, 4, 4.00),
(127, 8, 5, 4.50),
(128, 8, 1, 3.00),
(129, 8, 2, 5.00),
(130, 8, 3, 4.00),
(131, 8, 4, 4.50),
(132, 8, 5, 3.50),
(133, 8, 1, 2.50),
(134, 8, 2, 3.00),
(135, 9, 3, 4.00),
(136, 9, 4, 2.50),
(137, 9, 5, 1.00),
(138, 9, 3, 5.00),
(139, 9, 1, 4.00),
(140, 9, 2, 3.50),
(141, 9, 4, 2.50),
(142, 10, 5, 3.50),
(143, 10, 1, 2.00),
(144, 10, 2, 4.00),
(145, 1, 1, 4.50),
(146, 1, 2, 3.00),
(147, 1, 3, 5.00),
(148, 1, 4, 4.00),
(149, 1, 5, 4.50),
(150, 1, 1, 3.50),
(151, 1, 2, 3.50),
(152, 1, 3, 4.00),
(153, 2, 4, 4.00),
(154, 2, 5, 4.50),
(155, 2, 1, 3.00),
(156, 2, 2, 5.00),
(157, 2, 3, 4.00),
(158, 2, 4, 4.50),
(159, 2, 5, 3.50),
(160, 3, 1, 3.50),
(161, 3, 2, 4.00),
(162, 3, 3, 4.00),
(163, 3, 4, 4.50),
(164, 3, 5, 3.00),
(165, 3, 1, 5.00),
(166, 3, 2, 4.00),
(167, 3, 3, 4.50),
(168, 3, 4, 3.50),
(169, 3, 5, 3.50),
(170, 3, 1, 4.00),
(171, 4, 2, 4.00),
(172, 4, 3, 4.50),
(173, 4, 4, 3.00),
(174, 4, 5, 5.00),
(175, 5, 1, 4.00),
(176, 5, 2, 4.50),
(177, 5, 3, 3.50),
(178, 5, 4, 3.50),
(179, 6, 5, 4.00),
(180, 6, 1, 4.00),
(181, 6, 2, 4.50),
(182, 6, 3, 3.00),
(183, 6, 4, 5.00),
(184, 6, 5, 4.00),
(185, 6, 1, 4.50),
(186, 6, 2, 3.50),
(187, 6, 3, 3.50),
(188, 6, 4, 4.00),
(189, 6, 5, 4.00),
(190, 7, 1, 4.50),
(191, 7, 2, 3.00),
(192, 7, 3, 5.00),
(193, 7, 4, 4.00),
(194, 7, 5, 4.50),
(195, 7, 1, 3.50),
(196, 7, 2, 3.50),
(197, 7, 3, 4.00),
(198, 8, 4, 4.00),
(199, 8, 5, 4.50),
(200, 8, 1, 3.00),
(201, 8, 2, 5.00),
(202, 8, 3, 4.00),
(203, 8, 4, 4.50),
(204, 8, 5, 3.50),
(205, 8, 1, 2.50),
(206, 8, 2, 3.00),
(207, 9, 3, 4.00),
(208, 9, 4, 2.50),
(209, 9, 5, 1.00),
(210, 9, 3, 5.00),
(211, 9, 1, 4.00),
(212, 9, 2, 3.50),
(213, 9, 4, 2.50),
(214, 10, 5, 3.50),
(215, 10, 1, 2.00),
(216, 10, 2, 4.00),
(217, 1, 1, 4.50),
(218, 1, 2, 3.00),
(219, 1, 3, 5.00),
(220, 1, 4, 4.00),
(221, 1, 5, 4.50),
(222, 1, 1, 3.50),
(223, 1, 2, 3.50),
(224, 1, 3, 4.00),
(225, 2, 4, 4.00),
(226, 2, 5, 4.50),
(227, 2, 1, 3.00),
(228, 2, 2, 5.00),
(229, 2, 3, 4.00),
(230, 2, 4, 4.50),
(231, 2, 5, 3.50),
(232, 3, 1, 3.50),
(233, 3, 2, 4.00),
(234, 3, 3, 4.00),
(235, 3, 4, 4.50),
(236, 3, 5, 3.00),
(237, 3, 1, 5.00),
(238, 3, 2, 4.00),
(239, 3, 3, 4.50),
(240, 3, 4, 3.50),
(241, 3, 5, 3.50),
(242, 3, 1, 4.00),
(243, 4, 2, 4.00),
(244, 4, 3, 4.50),
(245, 4, 4, 3.00),
(246, 4, 5, 5.00),
(247, 5, 1, 4.00),
(248, 5, 2, 4.50),
(249, 5, 3, 3.50),
(250, 5, 4, 3.50),
(251, 6, 5, 4.00),
(252, 6, 1, 4.00),
(253, 6, 2, 4.50),
(254, 6, 3, 3.00),
(255, 6, 4, 5.00),
(256, 6, 5, 4.00),
(257, 6, 1, 4.50),
(258, 6, 2, 3.50),
(259, 6, 3, 3.50),
(260, 6, 4, 4.00),
(261, 6, 5, 4.00),
(262, 7, 1, 4.50),
(263, 7, 2, 3.00),
(264, 7, 3, 5.00),
(265, 7, 4, 4.00),
(266, 7, 5, 4.50),
(267, 7, 1, 3.50),
(268, 7, 2, 3.50),
(269, 7, 3, 4.00),
(270, 8, 4, 4.00),
(271, 8, 5, 4.50),
(272, 8, 1, 3.00),
(273, 8, 2, 5.00),
(274, 8, 3, 4.00),
(275, 8, 4, 4.50),
(276, 8, 5, 3.50),
(277, 8, 1, 2.50),
(278, 8, 2, 3.00),
(279, 9, 3, 4.00),
(280, 9, 4, 2.50),
(281, 9, 5, 1.00),
(282, 9, 3, 5.00),
(283, 9, 1, 4.00),
(284, 9, 2, 3.50),
(285, 9, 4, 2.50),
(286, 10, 5, 3.50),
(287, 10, 1, 2.00),
(288, 10, 2, 4.00);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny_nauczyciele`
--

CREATE TABLE `oceny_nauczyciele` (
  `id_oceny` int(11) DEFAULT NULL,
  `id_nauczyciela` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oceny_nauczyciele`
--

INSERT INTO `oceny_nauczyciele` (`id_oceny`, `id_nauczyciela`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 2),
(6, 3),
(7, 1),
(8, 2),
(9, 2),
(10, 3),
(11, 1),
(12, 2),
(13, 3),
(14, 1),
(15, 2),
(16, 3),
(17, 1),
(18, 2),
(19, 3),
(20, 1),
(21, 2),
(22, 3),
(23, 1),
(24, 2),
(25, 3),
(26, 1),
(27, 2),
(28, 3),
(29, 1),
(30, 2),
(31, 3),
(32, 1),
(33, 2),
(34, 3),
(35, 1),
(36, 2),
(37, 3),
(38, 1),
(39, 2),
(40, 3),
(41, 1),
(42, 2),
(43, 3),
(44, 1),
(45, 2),
(46, 3),
(47, 1),
(48, 2),
(49, 3),
(50, 1),
(51, 2),
(52, 3),
(53, 1),
(54, 2),
(55, 3),
(56, 4),
(57, 5),
(58, 4),
(59, 5),
(60, 4),
(61, 5),
(62, 4),
(63, 5),
(64, 4),
(65, 5),
(66, 4),
(67, 5),
(68, 3),
(69, 4),
(70, 5),
(71, 4),
(72, 5),
(73, 4),
(74, 5),
(75, 4),
(76, 5),
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 2),
(6, 3),
(7, 1),
(8, 2),
(9, 2),
(10, 3),
(11, 1),
(12, 2),
(13, 3),
(14, 1),
(15, 2),
(16, 3),
(17, 1),
(18, 2),
(19, 3),
(20, 1),
(21, 2),
(22, 3),
(23, 1),
(24, 2),
(25, 3),
(26, 1),
(27, 2),
(28, 3),
(29, 1),
(30, 2),
(31, 3),
(32, 1),
(33, 2),
(34, 3),
(35, 1),
(36, 2),
(37, 3),
(38, 1),
(39, 2),
(40, 3),
(41, 1),
(42, 2),
(43, 3),
(44, 1),
(45, 2),
(46, 3),
(47, 1),
(48, 2),
(49, 3),
(50, 1),
(51, 2),
(52, 3),
(53, 1),
(54, 2),
(55, 3),
(56, 4),
(57, 5),
(58, 4),
(59, 5),
(60, 4),
(61, 5),
(62, 4),
(63, 5),
(64, 4),
(65, 5),
(66, 4),
(67, 5),
(68, 3),
(69, 4),
(70, 5),
(71, 4),
(72, 5),
(73, 4),
(74, 5),
(75, 4),
(76, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmioty`
--

CREATE TABLE `przedmioty` (
  `id_przedmiotu` int(11) NOT NULL,
  `nazwa_przedmiotu` varchar(100) DEFAULT NULL,
  `nazwa_skrocona` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `przedmioty`
--

INSERT INTO `przedmioty` (`id_przedmiotu`, `nazwa_przedmiotu`, `nazwa_skrocona`) VALUES
(1, 'Matematyka', 'mat'),
(2, 'Język Polski', 'pol'),
(3, 'Historia', 'his'),
(4, 'Informatyka', 'inf'),
(5, 'Geografia', 'geo'),
(6, 'Matematyka', 'mat'),
(7, 'Język Polski', 'pol'),
(8, 'Historia', 'his'),
(9, 'Informatyka', 'inf'),
(10, 'Geografia', 'geo'),
(11, 'Matematyka', 'mat'),
(12, 'Język Polski', 'pol'),
(13, 'Historia', 'his'),
(14, 'Informatyka', 'inf'),
(15, 'Geografia', 'geo'),
(16, 'Matematyka', 'mat'),
(17, 'Język Polski', 'pol'),
(18, 'Historia', 'his'),
(19, 'Informatyka', 'inf'),
(20, 'Geografia', 'geo');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

CREATE TABLE `uczniowie` (
  `id_ucznia` int(11) NOT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uczniowie`
--

INSERT INTO `uczniowie` (`id_ucznia`, `imie`, `nazwisko`, `data_urodzenia`) VALUES
(1, 'Jan', 'Kowalski', '2005-05-15'),
(2, 'Anna', 'Nowak', '2006-08-23'),
(3, 'Pola', 'Jaremi', '2007-03-10'),
(4, 'Tola', 'Lewandowski', '2005-12-30'),
(5, 'Adam', 'Wiśniewski', '2006-11-12'),
(6, 'Henryk', 'Wójcik', '2007-09-09'),
(7, 'Karol', 'Kamiński', '2005-06-10'),
(8, 'Grażyna', 'Kowalczyk', '2006-07-17'),
(9, 'Lidia', 'Zieliński', '2007-01-18'),
(10, 'Sylwester', 'Szymański', '2005-07-23'),
(11, 'Julian', 'Kilertyk', '2006-02-24'),
(12, 'Julia', 'Jankowski', '2007-08-28'),
(13, 'Karolina', 'Woźniak', '2005-09-23'),
(14, 'Jakub', 'Wojciechowski', '2006-04-04'),
(15, 'Kuba', 'Kwiatkowski', '2007-01-02'),
(16, 'Dariusz', 'Mazur', '2005-05-08'),
(17, 'Maurycy', 'Wiśniewski', '2006-09-04'),
(18, 'Robert', 'Król', '2007-06-04'),
(19, 'Marcin', 'Piotrowski', '2008-05-02'),
(20, 'Alicja', 'Wójcik', '2004-03-09'),
(21, 'Klaudia', 'Grabowski', '2008-02-10'),
(22, 'Jan', 'Kowalski', '2005-05-15'),
(23, 'Anna', 'Nowak', '2006-08-23'),
(24, 'Pola', 'Jaremi', '2007-03-10'),
(25, 'Tola', 'Lewandowski', '2005-12-30'),
(26, 'Adam', 'Wiśniewski', '2006-11-12'),
(27, 'Henryk', 'Wójcik', '2007-09-09'),
(28, 'Karol', 'Kamiński', '2005-06-10'),
(29, 'Grażyna', 'Kowalczyk', '2006-07-17'),
(30, 'Lidia', 'Zieliński', '2007-01-18'),
(31, 'Sylwester', 'Szymański', '2005-07-23'),
(32, 'Julian', 'Kilertyk', '2006-02-24'),
(33, 'Julia', 'Jankowski', '2007-08-28'),
(34, 'Karolina', 'Woźniak', '2005-09-23'),
(35, 'Jakub', 'Wojciechowski', '2006-04-04'),
(36, 'Kuba', 'Kwiatkowski', '2007-01-02'),
(37, 'Dariusz', 'Mazur', '2005-05-08'),
(38, 'Maurycy', 'Wiśniewski', '2006-09-04'),
(39, 'Robert', 'Król', '2007-06-04'),
(40, 'Marcin', 'Piotrowski', '2008-05-02'),
(41, 'Alicja', 'Wójcik', '2004-03-09'),
(42, 'Klaudia', 'Grabowski', '2008-02-10'),
(43, 'Jan', 'Kowalski', '2005-05-15'),
(44, 'Anna', 'Nowak', '2006-08-23'),
(45, 'Pola', 'Jaremi', '2007-03-10'),
(46, 'Tola', 'Lewandowski', '2005-12-30'),
(47, 'Adam', 'Wiśniewski', '2006-11-12'),
(48, 'Henryk', 'Wójcik', '2007-09-09'),
(49, 'Karol', 'Kamiński', '2005-06-10'),
(50, 'Grażyna', 'Kowalczyk', '2006-07-17'),
(51, 'Lidia', 'Zieliński', '2007-01-18'),
(52, 'Sylwester', 'Szymański', '2005-07-23'),
(53, 'Julian', 'Kilertyk', '2006-02-24'),
(54, 'Julia', 'Jankowski', '2007-08-28'),
(55, 'Karolina', 'Woźniak', '2005-09-23'),
(56, 'Jakub', 'Wojciechowski', '2006-04-04'),
(57, 'Kuba', 'Kwiatkowski', '2007-01-02'),
(58, 'Dariusz', 'Mazur', '2005-05-08'),
(59, 'Maurycy', 'Wiśniewski', '2006-09-04'),
(60, 'Robert', 'Król', '2007-06-04'),
(61, 'Marcin', 'Piotrowski', '2008-05-02'),
(62, 'Alicja', 'Wójcik', '2004-03-09'),
(63, 'Klaudia', 'Grabowski', '2008-02-10'),
(64, 'Jan', 'Kowalski', '2005-05-15'),
(65, 'Anna', 'Nowak', '2006-08-23'),
(66, 'Pola', 'Jaremi', '2007-03-10'),
(67, 'Tola', 'Lewandowski', '2005-12-30'),
(68, 'Adam', 'Wiśniewski', '2006-11-12'),
(69, 'Henryk', 'Wójcik', '2007-09-09'),
(70, 'Karol', 'Kamiński', '2005-06-10'),
(71, 'Grażyna', 'Kowalczyk', '2006-07-17'),
(72, 'Lidia', 'Zieliński', '2007-01-18'),
(73, 'Sylwester', 'Szymański', '2005-07-23'),
(74, 'Julian', 'Kilertyk', '2006-02-24'),
(75, 'Julia', 'Jankowski', '2007-08-28'),
(76, 'Karolina', 'Woźniak', '2005-09-23'),
(77, 'Jakub', 'Wojciechowski', '2006-04-04'),
(78, 'Kuba', 'Kwiatkowski', '2007-01-02'),
(79, 'Dariusz', 'Mazur', '2005-05-08'),
(80, 'Maurycy', 'Wiśniewski', '2006-09-04'),
(81, 'Robert', 'Król', '2007-06-04'),
(82, 'Marcin', 'Piotrowski', '2008-05-02'),
(83, 'Alicja', 'Wójcik', '2004-03-09'),
(85, 'Karol', 'Jankowski', '2010-02-16'),
(86, 'Karol', 'Jankowski', '2010-02-16'),
(87, 'Tola', 'Darniczak', '2010-03-16'),
(88, 'Ela', 'Zertik', '2010-04-16'),
(89, 'Karol', 'Jankowski', '2010-02-16'),
(90, 'Tola', 'Darniczak', '2010-03-16'),
(91, 'Ela', 'Zertik', '2010-04-16'),
(92, 'Karol', 'Jankowski', '2010-02-16'),
(93, 'Tola', 'Darniczak', '2010-03-16'),
(94, 'Ela', 'Zertik', '2010-04-16'),
(95, 'Antoni', 'Dzienisiewicz', '2000-01-31');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie_klasy`
--

CREATE TABLE `uczniowie_klasy` (
  `id_ucznia` int(11) DEFAULT NULL,
  `id_klasy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uczniowie_klasy`
--

INSERT INTO `uczniowie_klasy` (`id_ucznia`, `id_klasy`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 2),
(6, 3),
(7, 1),
(8, 2),
(9, 3),
(10, 1),
(11, 2),
(12, 3),
(13, 1),
(14, 2),
(15, 3),
(16, 1),
(17, 2),
(18, 3),
(19, 1),
(20, 2),
(21, 3);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klasy`
--
ALTER TABLE `klasy`
  ADD PRIMARY KEY (`id_klasy`);

--
-- Indeksy dla tabeli `nauczyciele`
--
ALTER TABLE `nauczyciele`
  ADD PRIMARY KEY (`id_nauczyciela`);

--
-- Indeksy dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`id_oceny`),
  ADD KEY `id_ucznia` (`id_ucznia`),
  ADD KEY `id_przedmiotu` (`id_przedmiotu`);

--
-- Indeksy dla tabeli `oceny_nauczyciele`
--
ALTER TABLE `oceny_nauczyciele`
  ADD KEY `id_oceny` (`id_oceny`),
  ADD KEY `id_nauczyciela` (`id_nauczyciela`);

--
-- Indeksy dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  ADD PRIMARY KEY (`id_przedmiotu`);

--
-- Indeksy dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`id_ucznia`);

--
-- Indeksy dla tabeli `uczniowie_klasy`
--
ALTER TABLE `uczniowie_klasy`
  ADD KEY `id_klasy` (`id_klasy`),
  ADD KEY `id_ucznia` (`id_ucznia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klasy`
--
ALTER TABLE `klasy`
  MODIFY `id_klasy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nauczyciele`
--
ALTER TABLE `nauczyciele`
  MODIFY `id_nauczyciela` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `oceny`
--
ALTER TABLE `oceny`
  MODIFY `id_oceny` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `przedmioty`
--
ALTER TABLE `przedmioty`
  MODIFY `id_przedmiotu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `uczniowie`
--
ALTER TABLE `uczniowie`
  MODIFY `id_ucznia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oceny`
--
ALTER TABLE `oceny`
  ADD CONSTRAINT `oceny_ibfk_1` FOREIGN KEY (`id_ucznia`) REFERENCES `uczniowie` (`id_ucznia`),
  ADD CONSTRAINT `oceny_ibfk_2` FOREIGN KEY (`id_przedmiotu`) REFERENCES `przedmioty` (`id_przedmiotu`);

--
-- Constraints for table `oceny_nauczyciele`
--
ALTER TABLE `oceny_nauczyciele`
  ADD CONSTRAINT `oceny_nauczyciele_ibfk_1` FOREIGN KEY (`id_oceny`) REFERENCES `oceny` (`id_oceny`),
  ADD CONSTRAINT `oceny_nauczyciele_ibfk_2` FOREIGN KEY (`id_nauczyciela`) REFERENCES `nauczyciele` (`id_nauczyciela`);

--
-- Constraints for table `uczniowie_klasy`
--
ALTER TABLE `uczniowie_klasy`
  ADD CONSTRAINT `uczniowie_klasy_ibfk_1` FOREIGN KEY (`id_klasy`) REFERENCES `klasy` (`id_klasy`),
  ADD CONSTRAINT `uczniowie_klasy_ibfk_2` FOREIGN KEY (`id_ucznia`) REFERENCES `uczniowie` (`id_ucznia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
