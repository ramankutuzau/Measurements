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
-- Структура таблицы `ListClientNumber`
--

CREATE TABLE IF NOT EXISTS `ListClientNumber` (
  `ClientNumberID` int(11) NOT NULL,
  `ClientNumber` varchar(15) NOT NULL,
  `ClientID` int(11) NOT NULL,
  `ClientNumberVisible` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ListClientNumber`
--

INSERT INTO `ListClientNumber` (`ClientNumberID`, `ClientNumber`, `ClientID`, `ClientNumberVisible`) VALUES
(1, '375447008135', 1, 1),
(2, '375447008134', 2, 1),
(3, '375447008130', 3, 1),
(4, '375447008120', 4, 1),
(5, '375447008121', 5, 1),
(6, '375447008122', 6, 1),
(7, '375447008123', 1, 0),
(8, '375447008124', 8, 1),
(9, '375447008125', 9, 1),
(10, '375447008126', 10, 1),
(11, '375447008127', 11, 1),
(12, '375447008128', 12, 1),
(13, '375447008129', 1, 0),
(14, '375447008135', 14, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ListClientNumber`
--
ALTER TABLE `ListClientNumber`
  ADD PRIMARY KEY (`ClientNumberID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ListClientNumber`
--
ALTER TABLE `ListClientNumber`
  MODIFY `ClientNumberID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
