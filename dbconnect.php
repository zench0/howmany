<?php
header('Content-Type: text/html; charset=utf-8'); //Кодировка

$server = "localhost"; //Имя хоста
$username = "root"; // Имя пользователя БД
$password = ""; // Пароль пользователя.
$database = "howmany_db"; // Имя базы данных
$mysqli = new mysqli($server, $username, $password, $database); // Подключение к базе данных
if ($mysqli->connect_errno) // Проверка успешности соединения
{
    die("<p><strong>Ошибка подключения к БД</strong></p><p><strong>Код ошибки: </strong> ". $mysqli->connect_errno ." </p><p><strong>Описание ошибки:</strong> ".$mysqli->connect_error."</p>");
}
$mysqli->set_charset('utf8'); // Устанавка кодировки подключения
$address_site = "http://howmany.ru";
//Переменная, которая будет содержать URL сайта
?>