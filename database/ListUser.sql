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
-- Структура таблицы `ListUser`
--

CREATE TABLE IF NOT EXISTS `ListUser` (
  `idUser` int(11) NOT NULL,
  `userLogin` varchar(50) NOT NULL,
  `userPass` varchar(50) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `userName` varchar(40) NOT NULL,
  `userVisible` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ListUser`
--

INSERT INTO `ListUser` (`idUser`, `userLogin`, `userPass`, `CompanyID`, `userName`, `userVisible`) VALUES
(1, 'Admin', '1234', 1, 'Дмитрий', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ListUser`
--
ALTER TABLE `ListUser`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ListUser`
--
ALTER TABLE `ListUser`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
