-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Гру 16 2018 р., 14:27
-- Версія сервера: 5.6.41
-- Версія PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `db_asign`
--

-- --------------------------------------------------------

--
-- Структура таблиці `city`
--

CREATE TABLE `city` (
  `id_city` int(11) NOT NULL,
  `city_name` varchar(48) NOT NULL,
  `id_country` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `city`
--

INSERT INTO `city` (`id_city`, `city_name`, `id_country`) VALUES
(1, 'Вашингтон', 1),
(2, 'Львів', 2),
(3, 'Берлін', 3),
(4, 'Делі', 4),
(5, 'Київ', 2),
(6, 'Мумбаї', 4),
(7, 'Торонто', 5),
(8, 'Бостон', 1),
(9, 'Гамбург', 3),
(10, 'Калгарі', 5),
(11, 'Одеса', 2),
(12, 'Мюнхен', 3),
(13, 'Бенгалуру', 4);

-- --------------------------------------------------------

--
-- Структура таблиці `contacts`
--

CREATE TABLE `contacts` (
  `id_contacts` int(11) NOT NULL,
  `email` varchar(48) NOT NULL,
  `phone` varchar(48) NOT NULL,
  `id_city` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `contacts`
--

INSERT INTO `contacts` (`id_contacts`, `email`, `phone`, `id_city`) VALUES
(1, 'devante.kling@example.net', '(934) 939-9635', 1),
(2, 'britney.nikolaus@example.org', '468.263.1702 x4923', 2),
(3, 'zion55@example.com', '721-396-7250', 3),
(4, 'hpagac@example.com', '1-619-674-2633 x8298', 4),
(5, 'auer.darien@example.com', '346.906.7240', 4),
(6, 'kellie46@example.net', '(843) 993-8604 x4212', 5),
(7, 'bert01@example.net', '(848) 976-2521', 4),
(8, 'rpouros@example.net', '(597) 385-6725', 6),
(9, 'gibson.aditya@example.net', '574.272.1824 x647', 5),
(10, 'edyth.hoppe@example.net', '+1 (587) 784-0581', 7),
(11, 'istark@example.com', '696-224-8824', 5),
(12, 'ward.chelsea@example.org', '(842) 649-5755 x99299', 3),
(13, 'diamond75@example.net', '527.671.5023 x8508', 8),
(14, 'hudson55@example.com', '1-813-230-2659', 6),
(15, 'morar.justina@example.com', '357.921.6606 x934', 9),
(16, 'ernest.volkman@example.org', '637-806-5907', 10),
(17, 'blaze.hermiston@example.net', '936.410.0976 x7149', 11),
(18, 'fisher.hershel@example.org', '362.271.1682 x77095', 9),
(19, 'kemmer.sigrid@example.com', '693-887-5110 x886', 12),
(20, 'vlowe@example.org', '(945) 856-3673', 13);

-- --------------------------------------------------------

--
-- Структура таблиці `coordinator`
--

CREATE TABLE `coordinator` (
  `id_coordinator` int(11) NOT NULL,
  `coordinator_name` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `coordinator`
--

INSERT INTO `coordinator` (`id_coordinator`, `coordinator_name`) VALUES
(1, 'Adriana Dietrich'),
(2, ''),
(3, 'Juanita Bartell');

-- --------------------------------------------------------

--
-- Структура таблиці `country`
--

CREATE TABLE `country` (
  `id_country` int(11) NOT NULL,
  `country_name` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `country`
--

INSERT INTO `country` (`id_country`, `country_name`) VALUES
(1, 'США'),
(2, 'Україна'),
(3, 'Німеччина'),
(4, 'Індія'),
(5, 'Канада');

-- --------------------------------------------------------

--
-- Структура таблиці `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `name` varchar(48) NOT NULL,
  `surename` varchar(48) NOT NULL,
  `id_gender` int(11) NOT NULL,
  `id_contacts` int(11) NOT NULL,
  `description2` varchar(255) NOT NULL,
  `count_workers` varchar(48) NOT NULL,
  `account` float NOT NULL,
  `id_tariff` int(11) NOT NULL,
  `date` varchar(48) NOT NULL,
  `id_coordinator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `customer`
--

INSERT INTO `customer` (`id_customer`, `name`, `surename`, `id_gender`, `id_contacts`, `description2`, `count_workers`, `account`, `id_tariff`, `date`, `id_coordinator`) VALUES
(333, 'Wilfredo', 'Jakubowski', 0, 1, '', 'немає', 0, 1, '01-08-80', 1),
(334, 'Adriana', 'Dietrich', 24, 2, '', '1-4', 25.5, 1, '', 2),
(335, 'Sandrine', 'Considine', 24, 3, '', '', 210, 1, '', 2),
(336, 'Zena', 'Yundt', 0, 4, 'molestiae at sunt voluptate tempore', '1-4', 0, 1, '', 2),
(337, 'Geo', 'Grant', 0, 5, 'in autem repellendus doloribus perspiciatis', '5-9', 0, 1, '', 1),
(338, 'Magdalena', 'Volkman', 0, 6, '', '500+', 71, 1, '', 1),
(339, 'Erika', 'Stamm', 0, 7, '', '', 0, 1, '04-14-93', 1),
(340, 'Reva', 'Bruen', 24, 8, '', '55-99', 0, 2, '', 1),
(341, 'Polly', 'Dickens', 0, 9, 'Molestiae doloremque odit quaerat aut reprehende', '100+', 82.15, 1, '03-02-72', 2),
(342, 'Tara', 'Huels', 0, 10, '', '', 99.63, 1, '02-11-90', 3),
(343, 'Juanita', 'Bartell', 0, 11, '', '', 0, 3, '', 2),
(344, 'Leila', 'Bergnaum', 0, 12, '', '10-19', 0.1, 1, '11-12-73', 3),
(345, 'Bradly', 'Streich', 25, 13, '', '', 0, 1, '', 3),
(346, 'Clyde', 'Harris', 25, 14, 'Ut vero aliquam voluptatem magnam ut praesentium', '20-49', 10, 3, '', 3),
(347, 'Margot', 'Sawayn', 0, 15, '', '1-4', 0, 2, '', 1),
(348, 'Ima', 'Halvorson', 24, 16, '', 'немає', 176, 2, '08-11-82', 1),
(349, 'Tyshawn', 'Mills', 0, 17, '', '', 3.12, 1, '02-15-94', 1),
(350, 'Garett', 'Swift', 25, 18, 'Rem facilis voluptatum similique praesentium. De', '10-19', 16, 2, '06-10-74', 2),
(351, 'Pierre', 'Mayert', 25, 19, '', 'немає', 33, 1, '', 3),
(352, 'Elva', 'Kuhn', 24, 20, '', '5-9', 0, 1, '09-29-83', 3);

-- --------------------------------------------------------

--
-- Структура таблиці `gender`
--

CREATE TABLE `gender` (
  `id_gender` int(11) NOT NULL,
  `title_gender` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `gender`
--

INSERT INTO `gender` (`id_gender`, `title_gender`) VALUES
(23, 'не обрано'),
(24, 'жін.'),
(25, 'чол.');

-- --------------------------------------------------------

--
-- Структура таблиці `tariff`
--

CREATE TABLE `tariff` (
  `id_tariff` int(11) NOT NULL,
  `title_tariff` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `tariff`
--

INSERT INTO `tariff` (`id_tariff`, `title_tariff`) VALUES
(1, 'Базовий'),
(2, 'Преміум'),
(3, 'Комфорт');

-- --------------------------------------------------------

--
-- Структура таблиці `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(48) NOT NULL,
  `surename` varchar(48) NOT NULL,
  `email` varchar(48) NOT NULL,
  `phone` varchar(48) NOT NULL,
  `tariff` varchar(48) NOT NULL,
  `date` varchar(48) NOT NULL,
  `gender` varchar(48) NOT NULL,
  `country` varchar(48) NOT NULL,
  `city` varchar(48) NOT NULL,
  `account` varchar(48) NOT NULL,
  `description` varchar(48) NOT NULL,
  `count_workers` varchar(48) NOT NULL,
  `coordinator` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `test`
--

INSERT INTO `test` (`id`, `name`, `surename`, `email`, `phone`, `tariff`, `date`, `gender`, `country`, `city`, `account`, `description`, `count_workers`, `coordinator`) VALUES
(23, 'Wilfredo', 'Jakubowski', 'devante.kling@example.net', '(934) 939-9635', 'Базовий', '01-08-80', '', 'США', 'Вашингтон', '0.00', '', 'немає', 'Adriana Dietrich'),
(24, 'Adriana', 'Dietrich', 'britney.nikolaus@example.org', '468.263.1702 x4923', 'Базовий', '', 'жін.', 'Україна', 'Львів', '25.50', '', '1-4', ''),
(25, 'Sandrine', 'Considine', 'zion55@example.com', '721-396-7250', 'Базовий', '', 'жін.', 'Німеччина', 'Берлін', '210.00', '', '', ''),
(26, 'Zena', 'Yundt', 'hpagac@example.com', '1-619-674-2633 x8298', 'Базовий', '', '', 'Індія', 'Делі', '0.00', 'molestiae at sunt voluptate tempore', '1-4', ''),
(27, 'Geo', 'Grant', 'auer.darien@example.com', '346.906.7240', 'Базовий', '', '', 'Індія', 'Делі', '0.00', 'in autem repellendus doloribus perspiciatis', '5-9', 'Adriana Dietrich'),
(28, 'Magdalena', 'Volkman', 'kellie46@example.net', '(843) 993-8604 x4212', 'Базовий', '', '', 'Україна', 'Київ', '71.00', '', '500+', 'Adriana Dietrich'),
(29, 'Erika', 'Stamm', 'bert01@example.net', '(848) 976-2521', 'Базовий', '04-14-93', '', 'Індія', 'Делі', '0.00', '', '', 'Adriana Dietrich'),
(30, 'Reva', 'Bruen', 'rpouros@example.net', '(597) 385-6725', 'Преміум', '', 'жін.', 'Індія', 'Мумбаї', '0.00', '', '55-99', 'Adriana Dietrich'),
(31, 'Polly', 'Dickens', 'gibson.aditya@example.net', '574.272.1824 x647', 'Базовий', '03-02-72', '', 'Україна', 'Київ', '82.15', 'Molestiae doloremque odit quaerat aut reprehende', '100+', ''),
(32, 'Tara', 'Huels', 'edyth.hoppe@example.net', '+1 (587) 784-0581', 'Базовий', '02-11-90', '', 'Канада', 'Торонто', '99.63', '', '', 'Juanita Bartell'),
(33, 'Juanita', 'Bartell', 'istark@example.com', '696-224-8824', 'Комфорт', '', '', 'Україна', 'Київ', '0.00', '', '', ''),
(34, 'Leila', 'Bergnaum', 'ward.chelsea@example.org', '(842) 649-5755 x99299', 'Базовий', '11-12-73', '', 'Німеччина', 'Берлін', '0.10', '', '10-19', 'Juanita Bartell'),
(35, 'Bradly', 'Streich', 'diamond75@example.net', '527.671.5023 x8508', 'Базовий', '', 'чол.', 'США', 'Бостон', '0.00', '', '', 'Juanita Bartell'),
(36, 'Clyde', 'Harris', 'hudson55@example.com', '1-813-230-2659', 'Комфорт', '', 'чол.', 'Індія', 'Мумбаї', '10.00', 'Ut vero aliquam voluptatem magnam ut praesentium', '20-49', 'Juanita Bartell'),
(37, 'Margot', 'Sawayn', 'morar.justina@example.com', '357.921.6606 x934', 'Преміум', '', '', 'Німеччина', 'Гамбург', '0.00', '', '1-4', 'Adriana Dietrich'),
(38, 'Ima', 'Halvorson', 'ernest.volkman@example.org', '637-806-5907', 'Преміум', '08-11-82', 'жін.', 'Канада', 'Калгарі', '176.00', '', 'немає', 'Adriana Dietrich'),
(39, 'Tyshawn', 'Mills', 'blaze.hermiston@example.net', '936.410.0976 x7149', 'Базовий', '02-15-94', '', 'Україна', 'Одеса', '3.12', '', '', 'Adriana Dietrich'),
(40, 'Garett', 'Swift', 'fisher.hershel@example.org', '362.271.1682 x77095', 'Преміум', '06-10-74', 'чол.', 'Німеччина', 'Гамбург', '16.00', 'Rem facilis voluptatum similique praesentium. De', '10-19', ''),
(41, 'Pierre', 'Mayert', 'kemmer.sigrid@example.com', '693-887-5110 x886', 'Базовий', '', 'чол.', 'Німеччина', 'Мюнхен', '33.00', '', 'немає', 'Juanita Bartell'),
(42, 'Elva', 'Kuhn', 'vlowe@example.org', '(945) 856-3673', 'Базовий', '09-29-83', 'жін.', 'Індія', 'Бенгалуру', '0.00', '', '5-9', 'Juanita Bartell');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id_city`),
  ADD KEY `id_country` (`id_country`);

--
-- Індекси таблиці `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id_contacts`),
  ADD KEY `id_contacts` (`id_contacts`),
  ADD KEY `id_city` (`id_city`);

--
-- Індекси таблиці `coordinator`
--
ALTER TABLE `coordinator`
  ADD PRIMARY KEY (`id_coordinator`),
  ADD KEY `id_coordinator` (`id_coordinator`);

--
-- Індекси таблиці `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id_country`);

--
-- Індекси таблиці `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`),
  ADD KEY `id` (`id_customer`),
  ADD KEY `id_contacts` (`id_contacts`),
  ADD KEY `id_tariff` (`id_tariff`),
  ADD KEY `id_gender` (`id_gender`),
  ADD KEY `id_coordinator` (`id_coordinator`);

--
-- Індекси таблиці `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id_gender`),
  ADD KEY `id_gender` (`id_gender`);

--
-- Індекси таблиці `tariff`
--
ALTER TABLE `tariff`
  ADD PRIMARY KEY (`id_tariff`);

--
-- Індекси таблиці `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `city`
--
ALTER TABLE `city`
  MODIFY `id_city` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблиці `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id_contacts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблиці `coordinator`
--
ALTER TABLE `coordinator`
  MODIFY `id_coordinator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `country`
--
ALTER TABLE `country`
  MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT для таблиці `gender`
--
ALTER TABLE `gender`
  MODIFY `id_gender` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблиці `tariff`
--
ALTER TABLE `tariff`
  MODIFY `id_tariff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `country` (`id_country`);

--
-- Обмеження зовнішнього ключа таблиці `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_contacts`) REFERENCES `contacts` (`id_contacts`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`id_tariff`) REFERENCES `tariff` (`id_tariff`),
  ADD CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`id_coordinator`) REFERENCES `coordinator` (`id_coordinator`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
