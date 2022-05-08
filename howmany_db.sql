-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 06 2022 г., 09:49
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
-- Структура таблицы `events`
--

CREATE TABLE `events` (
                          `ID` int NOT NULL COMMENT 'ID конференции',
                          `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Название События',
                          `date_time` datetime NOT NULL COMMENT 'Дата',
                          `сommentary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Комментарий к событию'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='События, в которых могут находиться участники ';

-- --------------------------------------------------------

--
-- Структура таблицы `events_members`
--

CREATE TABLE `events_members` (
                                  `ID` int NOT NULL,
                                  `ID_Event` int NOT NULL,
                                  `ID_Member` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `members`
--

CREATE TABLE `members` (
                           `ID` int NOT NULL COMMENT 'ID Участника',
                           `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ФИО участника',
                           `login` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'login участника',
                           `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'пароль участника'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица со списком участником';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `events`
--
ALTER TABLE `events`
    ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `events_members`
--
ALTER TABLE `events_members`
    ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Event` (`ID_Event`),
  ADD KEY `ID_Member` (`ID_Member`);

--
-- Индексы таблицы `members`
--
ALTER TABLE `members`
    ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
    MODIFY `ID` int NOT NULL AUTO_INCREMENT COMMENT 'ID конференции';

--
-- AUTO_INCREMENT для таблицы `events_members`
--
ALTER TABLE `events_members`
    MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `members`
--
ALTER TABLE `members`
    MODIFY `ID` int NOT NULL AUTO_INCREMENT COMMENT 'ID Участника';

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `events_members`
--
ALTER TABLE `events_members`
    ADD CONSTRAINT `events_members_ibfk_1` FOREIGN KEY (`ID_Event`) REFERENCES `events` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `events_members_ibfk_2` FOREIGN KEY (`ID_Member`) REFERENCES `members` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;