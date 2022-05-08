</html>
<title>Авторизация</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
<div style=text-indent:25px; class="header">
    <h1>HowMany</h1>
</div>
<div class="pages">
    <div class="content">
        <div class="autoriz">
            <form action="howmany_db.sql" method="post">
                <fieldset>
                    <legend> Авторизация </legend>
                    <label>Email:<br />
                        <input type="email" name="login" size="25" maxlength="100" required="required" placeholder="ivan@.mail.ru"/> </label> <br />
                    <label>Пароль:<br />
                        <input type="password" name="password" size="20" maxlength="100" required="required" placeholder="Введите пароль"/> </label><br /><br />
                    <input type="submit" name="otp" value="Вход"/>
                </fieldset>
            </form>

        </div>
    </div>
    <div class="sidebar">
        <ul>
            <li><button> <a href="1.php">Главная</a></button></li>
            <li><button><a href="reg.php">Регистрация</a></button></li>
            <li><button><a href="about.php">О сайте</a></button></li>
        </ul>
    </div>
    <div class="foot">
    </div>
</div>
<div style=text-indent:25px; class="footer">
    <h3>&#169 Команда №7</h3>
</div>
</body>
</html>
