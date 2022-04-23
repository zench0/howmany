<?php
require_once __DIR__ . '/phpqrcode/qrlib.php';
  
// сохраняем во временный файл
QRcode::png('Содержимое QR-кода', __DIR__ . '/tmp.png', 'H', 6, 2);
  
// создаём новое изображение из внеменного файла
$im = imagecreatefrompng(__DIR__ . '/tmp.png');
  
$width = imagesx($im);
$height = imagesy($im);
  
$dst = imagecreatetruecolor($width, $height);
imagecopy($dst, $im, 0, 0, 0, 0, $width, $height);
imagedestroy($im);
  
// создаём изображение из лого
$logo = imagecreatefrompng(__DIR__ . '/logo.png');
$logo_width = imagesx($logo);
$logo_height = imagesy($logo);
  
$new_width = $width / 3;
$new_height = $logo_height / ($logo_width / $new_width);
  
$x = ceil(($width - $new_width) / 2);
$y = ceil(($height - $new_height) / 2);
 
// тут собственно склеиваем два изображения
imagecopyresampled($dst, $logo, $x, $y, 0, 0, $new_width, $new_height, $logo_width, $logo_height);
  
// вывод изображения в браузер
header('Content-Type: image/x-png');
imagepng($dst);
?>