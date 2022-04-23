<?php
session_start(); //Запуск сессиb
?>
<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            "use strict";
            //Проверка email
            //Регулярное выражение для проверки email
            var pattern = /^[a-z0-9][a-z0-9\._-]*[a-z0-9]*@([a-z0-9]+([a-z0-9-]*[a-z0-9]+)*\.)+[a-z]+/i;
            var mail = $('input[name=email]');

            mail.blur(function(){
                if(mail.val() != ''){
                    // Проверяем, если введенный email соответствует регулярному выражению
                    if(mail.val().search(pattern) == 0){
                        $('#valid_email_message').text(''); // Убираем сообщение об ошибке
                        $('input[type=submit]').attr('disabled', false);  //Активируем кнопку отправки
                    }else{
                        $('#valid_email_message').text('Не правильный Email');  //Выводим сообщение об ошибке
                        $('input[type=submit]').attr('disabled', true); // Дезактивируем кнопку отправки
                    }
                }else{
                    $('#valid_email_message').text('Введите Ваш email');
                }
            });
            var password = $('input[name=password]');  //Проверка длины пароля

            password.blur(function(){
                if(password.val() != ''){
                    if(password.val().length < 6){  //Если длина введенного пароля меньше шести символов, то выводим сообщение об ошибке
                        $('#valid_password_message').text('Минимальная длина пароля 6 символов'); //Выводим сообщение об ошибке
                        $('input[type=submit]').attr('disabled', true);  // Дезактивируем кнопку отправки

                    }else{
                        $('#valid_password_message').text(''); // Убираем сообщение об ошибке
                        $('input[type=submit]').attr('disabled', false); //Активация кнопки отправки
                    }
                }else{
                    $('#valid_password_message').text('Введите пароль');
                }
            });
        });
    </script>
    <title>HowMany</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<div id="header">
    <h2>HowMany</h2>

    <a href="/index.php">Главная</a>

    <div id="auth_block">
            <?php
            //Проверяем авторизован ли пользователь
            if(!isset($_SESSION['email']) && !isset($_SESSION['password'])){
                // если нет, то выводим блок с ссылками на страницу регистрации и авторизации
                ?>
                <div id="link_register">
                    <a href="/form_register.php">Регистрация</a>
                </div>

                <div id="link_auth">
                    <a href="/form_auth.php">Авторизация</a>
                </div>
                <?php
            }else{
                //Если пользователь авторизован, то выводим ссылку Выход
                ?>
                <div id="link_logout">
                    <a href="/logout.php">Выход</a>
                </div>
                <?php
            }
            ?>
    </div>

>?