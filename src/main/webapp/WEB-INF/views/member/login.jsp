<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/login.css">
<link rel="stylesheet" href="resources/js/login.js">
<title>Insert title here</title>
</head>
<body>
	<div class="container right-panel-active">

		<!-- Sign In -->
		<div class="container__form container--signin">
			<form action="#" class="form" id="form2">
				<h2 class="form__title">Sign In</h2>
				<input type="email" placeholder="Email" class="input" /> <input
					type="password" placeholder="Password" class="input" /> <a
					href="#" class="link">Forgot your password?</a>
				<button class="btn">Sign In</button>
			</form>
		</div>

		<!-- Overlay -->
		<div class="container__overlay">
			<div class="overlay">
				<div class="overlay__panel overlay--left">
					<button class="btn" id="signIn">Sign In</button>
				</div>
				<div class="overlay__panel overlay--right">
					<button class="btn" id="signUp">Sign Up</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>