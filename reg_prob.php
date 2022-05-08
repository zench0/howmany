<?php //Подключение к БД
$host = 'localhost';
$name = 'root';
$pass = '';
$link = mysqli_connect($host, $user, $pass, howmany);

if (!$link) {
    echo 'Не могу соединиться с БД. Код ошибки: ' . mysqli_connect_errno() . ', ошибка: ' . mysqli_connect_error();
    exit;
}
?>