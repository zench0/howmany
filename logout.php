<?php
session_start(); //Запускаем сессию

unset($_SESSION["email"]);
unset($_SESSION["password"]);
header("HTTP/1.1 301 Moved Permanently"); // Возвращаем пользователя на ту страницу, на которой он нажал на кнопку выход
header("Location: ".$_SERVER["HTTP_REFERER"]);
?>