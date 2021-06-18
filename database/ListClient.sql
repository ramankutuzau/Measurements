-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 16 2021 г., 08:14
-- Версия сервера: 5.5.65-MariaDB
-- Версия PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `calculator`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ListClient`
--

CREATE TABLE IF NOT EXISTS `ListClient` (
  `ClientID` int(11) NOT NULL,
  `ClientName` varchar(51) NOT NULL,
  `SoureID` int(11) NOT NULL,
  `DateAdd` date NOT NULL,
  `ClientComment` varchar(401) NOT NULL,
  `TimeAdd` time NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ListClient`
--

INSERT INTO `ListClient` (`ClientID`, `ClientName`, `SoureID`, `DateAdd`, `ClientComment`, `TimeAdd`, `userID`) VALUES
(1, 'Дмитрий Сергеевич', 1, '2021-06-05', 'Самый крутой парень\r\nЭто я -', '16:55:00', 1),
(2, 'Сергей', 1, '2021-06-05', '', '18:59:46', 1),
(3, 'Варвашеля', 1, '2021-06-05', '', '19:00:10', 1),
(4, '', 1, '2021-06-07', '', '18:06:32', 1),
(5, '', 1, '2021-06-07', '', '18:06:35', 1),
(6, '', 1, '2021-06-07', '', '18:06:36', 1),
(7, '', 1, '2021-06-07', '', '18:06:38', 1),
(8, '', 1, '2021-06-07', '', '18:06:39', 1),
(9, '', 1, '2021-06-07', '', '18:06:41', 1),
(10, '', 1, '2021-06-07', '', '18:06:42', 1),
(11, '', 1, '2021-06-07', '', '18:06:43', 1),
(12, '', 1, '2021-06-07', '', '18:06:45', 1),
(13, '', 1, '2021-06-07', '', '18:06:47', 1),
(14, '', 1, '2021-06-10', '', '14:19:10', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ListClient`
--
ALTER TABLE `ListClient`
  ADD PRIMARY KEY (`ClientID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ListClient`
--
ALTER TABLE `ListClient`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
