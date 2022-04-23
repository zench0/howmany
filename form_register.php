<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<title>Страница регистрации</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			"use strict"

			$("input[name=email]").blur(function(){

				if($(this).val() != ''){

					var email_pattern = /^[a-z0-9][a-z0-9\._-]*[a-z0-9]*@([a-z0-9]+([a-z0-9-]*[a-z0-9]+)*\.)+[a-z]+/i;

					if(!email_pattern.test($(this).val())){

						$('#error_email_message').text('Не правильный формат');

						$('input[type=submit]').attr('disabled', true);
					}else{

						$('#error_email_message').empty();
						$('input[type=submit]').attr('disabled', false);
					}

				}else{
					$('#error_email_message').text('Введите Ваш Email');
					$('input[type=submit]').attr('disabled', true);
				}
			});

			$("input[name=password]").blur(function(){

				if($(this).val().length < 6){

					$('#error_password_message').text('Минимальная длина пароля 6 символов');
					$('input[type=submit]').attr('disabled', true);
					
				}else{

					$('#error_password_message').empty();
					$('input[type=submit]').attr('disabled', false);
				}

			});

		});
	</script>
</head>
<body>

	<?php
		require_once("header.php");

		if(!isset($_SESSION['email']) && !isset($_SESSION['password'])){
	?>
		<div class="block_for_messages">
			<?php
				if(isset($_SESSION["serever_message"])){

					echo $_SESSION["serever_message"];

					unset($_SESSION["serever_message"]);
				}
			?>
		</div>

		<div class="container_form">
			
			<h2>Форма регистрации</h2>

			<form action="register.php" method="POST" name="form_register" >
				
				<table>
					<tr>
						<td>Имя: </td>
						<td>
							<input type="text" name="first_name" minlength="2" maxlength="255" required />
						</td>
					</tr>

					<tr>
						<td>Фамилия: </td>
						<td>
							<input type="text" name="last_name" minlength="2" maxlength="255" required />
						</td>
					</tr>
					
					<tr>
						<td>E-mail: </td>
						<td>
							<input type="email" name="email" minlength="2" maxlength="100" required /><br />
							<span id="error_email_message" class="message_error"></span>
						</td>
					</tr>

					<tr>
						<td>Пароль: </td>
						<td>
							<input type="password" name="password" minlength="6" maxlength="100" required placeholder="Минимум 6 символов" /><br />
							<span id="error_password_message" class="message_error"></span>
						</td>
					</tr>

					<tr>
						<td>Введите капчу: </td>
						<td>
							<p>
								<img src="captcha.php" alt="капча" /> <br />
								<input type="text" name="captcha" required />
							</p>
						</td>
					</tr>

					<tr>
						<td colspan="2">
							<input type="submit" name="btn_submit_register" value="Зарегистрироваться!">
						</td>
					</tr>

				</table>

			</form>

		</div>

	<?php
		}else{
	?>
			<div id="authorized">
				<h2>Вы уже зарегистрированы</h2>
			</div>

	<?php
		}
		
		require_once("footer.php");
	?>

</body>
</html>