-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 04 2021 г., 16:50
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `izdat`
--

-- --------------------------------------------------------

--
-- Структура таблицы `apuser`
--

CREATE TABLE `apuser` (
  `userID` int(11) NOT NULL,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Логин',
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пароль'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `apuser`
--

INSERT INTO `apuser` (`userID`, `login`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'user', 'admin'),
(14, 'Gypsy', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `needs`
--

CREATE TABLE `needs` (
  `needs_id` int(11) NOT NULL COMMENT 'айди',
  `treb1` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'поле первого требования',
  `treb2` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'поле второго требования',
  `treb3` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'поле третьего требования',
  `treb4` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'поле четвёртого требования',
  `page_amount` int(11) NOT NULL COMMENT 'количество страниц',
  `format` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'формат листов в книге',
  `tirazh` int(11) NOT NULL COMMENT 'количество экземпляров',
  `oblozhka` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'тип обложки'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `needs`
--

INSERT INTO `needs` (`needs_id`, `treb1`, `treb2`, `treb3`, `treb4`, `page_amount`, `format`, `tirazh`, `oblozhka`) VALUES
(22, 'Нет', 'Верстка текста книги', 'Нет', 'Нет', 3, 'А5 (обрезной 148х210) стандарт', 3, 'Мягкая цветная'),
(23, 'Нет', 'Нет', 'Нет', 'Присвоить коды ISBN, УДК и др', 4, 'А5 (обрезной 148х210) стандарт', 4, 'Мягкая цветная'),
(24, 'Корректорская правка текста', 'Нет', 'Дизайн и верстка обложки', 'Нет', 5, 'А5 (обрезной 148х210) стандарт', 5, 'Мягкая цветная'),
(25, 'Корректорская правка текста', 'Нет', 'Нет', 'Нет', 6, 'А5 (обрезной 148х210) стандарт', 6, 'Мягкая цветная'),
(26, 'Корректорская правка текста', 'Нет', 'Дизайн и верстка обложки', 'Нет', 335312, 'А6 (обрезной 130х200)', 15, 'Твёрдый переплёт, цветная'),
(27, 'Нет', 'Нет', 'Дизайн и верстка обложки', 'Нет', 45, 'А4 (обрезной 205х290)', 122, 'Твёрдый переплёт, цветная'),
(28, 'Корректорская правка текста', 'Нет', 'Нет', 'Нет', 545, 'А4 (обрезной 205х290)', 850, 'Мягкая цветная'),
(29, 'Нет', 'Верстка текста книги', 'Нет', 'Нет', 5, 'А4 (обрезной 205х290)', 5, 'Мягкая цветная');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'имя пользователя',
  `tel` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'телефонный номер пользователя\r\n',
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'почта'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `name`, `tel`, `email`) VALUES
(9, 'final', 'final', 'final'),
(10, 'test2', 'test2', 'test2'),
(11, 'ааа', 'ааа', 'ааа'),
(12, 'ооо', 'ооо', 'ооо');

-- --------------------------------------------------------

--
-- Структура таблицы `users_needs`
--

CREATE TABLE `users_needs` (
  `users_needs_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'айди пользователя',
  `needs_id` int(11) NOT NULL COMMENT 'айди тиража'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_needs`
--

INSERT INTO `users_needs` (`users_needs_id`, `user_id`, `needs_id`) VALUES
(10, 9, 22),
(11, 9, 23),
(12, 10, 24),
(13, 10, 25),
(14, 11, 26),
(15, 11, 27),
(16, 11, 28),
(17, 12, 29);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `apuser`
--
ALTER TABLE `apuser`
  ADD PRIMARY KEY (`userID`);

--
-- Индексы таблицы `needs`
--
ALTER TABLE `needs`
  ADD PRIMARY KEY (`needs_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `users_needs`
--
ALTER TABLE `users_needs`
  ADD PRIMARY KEY (`users_needs_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `needs_id` (`needs_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `apuser`
--
ALTER TABLE `apuser`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `needs`
--
ALTER TABLE `needs`
  MODIFY `needs_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'айди', AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `users_needs`
--
ALTER TABLE `users_needs`
  MODIFY `users_needs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `users_needs`
--
ALTER TABLE `users_needs`
  ADD CONSTRAINT `users_needs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `users_needs_ibfk_2` FOREIGN KEY (`needs_id`) REFERENCES `needs` (`needs_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
