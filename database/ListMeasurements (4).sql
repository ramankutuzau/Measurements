-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 18 2021 г., 10:03
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
-- Структура таблицы `ListMeasurements`
--

CREATE TABLE IF NOT EXISTS `ListMeasurements` (
  `ListMeasurementsID` int(11) NOT NULL,
  `ClientID` int(11) NOT NULL,
  `ManagerID` int(11) NOT NULL COMMENT 'Пользователь, который назначил замер',
  `UserID` int(11) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `MeasurementsCity` varchar(100) NOT NULL COMMENT 'Населенный пункт',
  `MeasurementsStreet` varchar(100) NOT NULL COMMENT 'Улица',
  `MeasurementsHouse` varchar(5) NOT NULL COMMENT 'Дом',
  `MeasurementsFlat` varchar(5) DEFAULT NULL COMMENT 'Квартира',
  `MeasurementsEntrance` varchar(5) DEFAULT NULL COMMENT 'Подъезд',
  `MeasurementsFloor` varchar(5) DEFAULT NULL COMMENT 'Этаж',
  `MeasurementsStatus` varchar(100) NOT NULL COMMENT 'Статус: (Замер назначен)',
  `ListMeasurementsDate` date NOT NULL,
  `ListMeasurementsTime` time NOT NULL,
  `ListMeasurementsDateAdd` date NOT NULL,
  `ListMeasurementsComment` varchar(254) NOT NULL,
  `MeasurementsVisible` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Видимость'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Таблица Замеров';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ListMeasurements`
--
ALTER TABLE `ListMeasurements`
  ADD PRIMARY KEY (`ListMeasurementsID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ListMeasurements`
--
ALTER TABLE `ListMeasurements`
  MODIFY `ListMeasurementsID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
