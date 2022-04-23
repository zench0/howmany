<?php
session_start();
$rand = mt_rand(1000, 9999); // Генерация случайного числа
$_SESSION["rand"] = $rand; // Сохранение значения переменной  $rand ( капчи ) в сессию
$im = imageCreateTrueColor(90,50); //создание нового черно-белого изображения
$c = imageColorAllocate($im, 255, 255, 255); // Указатель на белый цвет для текста
imageTtfText($im, 20, -10, 10, 30, $c, __DIR__."fonts/verdana.ttf", $rand); // Запись полученного случайного числа на изображение
header("Content-type: image/png");
imagePng($im); // Вывод изображения
imageDestroy($im); //Освобождение ресурса
?>