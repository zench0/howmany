<?php
	session_start();
?>

<div id="header">
	<p>Шапка сайта</p>

	<p>
		<a href="/">Главная страница</a>
	</p>

	<div id="auth_block">
		
		<?php
			if(!isset($_SESSION['email']) && !isset($_SESSION['password'])){
		?>
				<div id="link_register">
					<a href="/form_register.php">Регистрация</a>
				</div>

				<div id="link_auth">
					<a href="/form_auth.php">Авторизация</a>
				</div>
		<?php
			}else{
		?>
				<div id="link_logout">
					<a href="/logout.php">Выход</a>
				</div>

				<div>
					Привет <?php echo $_SESSION['first_name'].' '.$_SESSION['last_name']; ?>
				</div>
		<?php
			}
		?>

		
		<!-- <div class="clear"></div> -->
	</div>
</div>