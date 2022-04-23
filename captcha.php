<?php
session_start();
$rand = mt_rand(1000, 9999);
$_SESSION["rand"] = $rand;
$im = imagecreatetruecolor(90, 50)
or die('Cannot Initialize new GD image stream');
$c = imagecolorallocate($im, 255, 10, 25);
//imagefill($im, 10, 10, $c);
$c = imagecolorallocate($im, 255, 255, 255);
imageTtfText($im, 20, -10, 10, 30, $c, __DIR__ . "/fonts/verdana.ttf", $rand);
header ("Content-type: image/png");
ImagePng ($im);
imageDestroy($im);
?>