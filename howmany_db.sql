-- Дамп phpMyAdmin SQL
-- версия 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 06 2022 г., 09:49
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

УСТАНОВИТЬ SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
НАЧАТЬ ТРАНЗАКЦИЮ;
УСТАНОВИТЬ time_zone = "+00:00";


/*!40101 УСТАНОВИТЬ @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 УСТАНОВИТЬ @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 УСТАНОВИТЬ @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 НАБОР ИМЕН utf8mb4 */;

--
-- База данных: `howmany_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

СОЗДАТЬ ТАБЛИЦУ `события` (
  `ID` int NOT NULL COMMENT 'ID конференции',
  `имя' варчар (40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Название События',
  `date_time` datetime NOT NULL COMMENT 'Дата',
  `commentary'varchar (255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Комментарий к событию'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='События, в которых могут находиться участники ';

-- --------------------------------------------------------

--
-- Структура таблицы `events_members`
--

СОЗДАТЬ ТАБЛИЦУ `events_members` (
  `ID'int  NOT NULL,
  `ID_Event'  НЕ РАВЕН НУЛЮ,
  `ID_Member'  NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `members`
--

СОЗДАТЬ ТАБЛИЦУ `members` (
  `ID` int NOT NULL COMMENT 'ID Участника',
  `name'varchar (255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ФИО участника',
  `login'varchar (20) НАБОР СИМВОЛОВ utf8 COLLATE utf8_general_ci NOT NULL КОММЕНТАРИЙ 'login участника',
  `password'varchar (20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'пароль участника'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Таблица со списком участником';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `events`
--
ALTER TABLE ' events`
 ДОБАВИТЬ ПЕРВИЧНЫЙ КЛЮЧ (`ID`);

--
-- Индексы таблицы `events_members`
--
ALTER  TABLE'events_members`
 ДОБАВИТЬ ПЕРВИЧНЫЙ КЛЮЧ (`ID`),
 ДОБАВИТЬ КЛЮЧ `ID_Event` (`ID_Event`),
 ДОБАВИТЬ КЛЮЧ `ID_Member` (`ID_Member`);

--
-- Индексы таблицы `members`
--
ALTER TABLE ' members`
 ДОБАВИТЬ ПЕРВИЧНЫЙ КЛЮЧ (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE ' events`
 MODIFY `ID` int NOT NULL AUTO_INCREMENT COMMENT 'ID конференции';

--
-- AUTO_INCREMENT для таблицы `events_members`
--
ALTER  TABLE'events_members`
 MODIFY `ID'int  NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `members`
--
ALTER TABLE ' members`
 MODIFY `ID'int  NOT NULL AUTO_INCREMENT КОММЕНТАРИЙ 'ID Участника';

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `events_members`
--
ALTER  TABLE'events_members`
 ДОБАВИТЬ ОГРАНИЧЕНИЕ 'events_members_ibfk_1 ' FOREIGN KEY (`ID_Event`) REFERENCES ' events` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
 ДОБАВИТЬ ОГРАНИЧЕНИЕ 'events_members_ibfk_2 ' FOREIGN KEY (`ID_Member`)  REFERENCES'members` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ФИКСАЦИЯ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 УСТАНОВИТЬ COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;