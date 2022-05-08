</html>
<title>Регистрация</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
<div style=text-indent:25px; class="header">
    <h1>HowMany</h1>
</div>
<div class="pages">
    <div class="content">
        <div class="regist">
        <form action="howmany_db.sql" method="post">
            <fieldset>
                <legend> Регистрация </legend>
                <label>Имя Пользователя:<br />
                <input type="text" name="name" size="20" maxlength="19" required="required" placeholder="Иван"/></label> <br />
                <label>Email:<br />
               <input type="email" name="login" size="25" maxlength="100" required="required" placeholder="ivan@.mail.ru"/> </label> <br />
                <label>Пароль:<br />
                    <input type="password" name="password" size="20" maxlength="100" required="required" placeholder="Введите пароль"/> </label><br /><br />
                <input type="submit" name="otp" value="Зарегистрироваться"/>
                </fieldset>
        </form>

    </div>
    </div>
    <div class="sidebar">
        <ul>
            <li><button> <a href="1.php">Главная</a></button></li>
            <li><button><a href="aut.php">Авторизация</a></button></li>
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
