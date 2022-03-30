-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 30 2022 г., 09:29
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `howmany_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `members`
--

CREATE TABLE `members` (
  `ID` int UNSIGNED NOT NULL COMMENT 'Первичный ключ',
  `Фамилия` varchar(30) NOT NULL,
  `Имя` varchar(30) NOT NULL,
  `Отчество` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Ники участников проекта в GitHub';

--
-- Дамп данных таблицы `members`
--

INSERT INTO `members` (`ID`, `Фамилия`, `Имя`, `Отчество`) VALUES
(1, 'Аксёнов', 'Илья', 'Сергеевич'),
(2, 'Виговская', 'Ирина', 'Александровна'),
(3, 'Коваленок', 'Артем', 'Алексеевич'),
(4, 'Самойлов', 'Дмитрий', 'Артурович'),
(5, 'Яворский', 'Владислав', 'Игоревич');

-- --------------------------------------------------------

--
-- Структура таблицы `members_github`
--

CREATE TABLE `members_github` (
  `ID` int UNSIGNED NOT NULL COMMENT 'Первичный ключ',
  `GitHub` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'Ник в гитхабе'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Ники участников проекта в GitHub';

--
-- Дамп данных таблицы `members_github`
--

INSERT INTO `members_github` (`ID`, `GitHub`) VALUES
(1, 'zench0'),
(2, 'IrinaVigovskaya'),
(3, 'Pred4tor555'),
(4, 'sadxbastard'),
(5, 'vladyavorskiy');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `members_github`
--
ALTER TABLE `members_github`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `members`
--
ALTER TABLE `members`
  MODIFY `ID` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Первичный ключ', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `members_github`
--
ALTER TABLE `members_github`
  MODIFY `ID` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Первичный ключ', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
