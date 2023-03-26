<%@ page import="project.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Đăng nhập</title>
	<link rel="stylesheet" href="css/login.css">
	<link rel="stylesheet" href="fonts/themify-icons.css">
</head>
<body>

<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form action="signup">
			<h1>Đăng kí</h1>
			<input name="userName" type="text" placeholder="Tên đăng nhập" />
			<input name="fullName" type="text" placeholder="Họ và tên" />
			<input name="email" type="email" placeholder="email" />
			<input name="DOB" type="date" placeholder="Ngày sinh" />
			<input name="password" type="password" placeholder="Mật khẩu" />
			<input name="repassword" type="password" placeholder="Nhập lại mật khẩu" />

			<button type="submit" >Đăng kí</button>
			<span>Hoặc đăng kí bằng</span>
			<div class="social-container" >
				<a href="#" class="social"><i class="ti-google"></i></a>
				<a href="#" class="social"><i class="ti-facebook"></i></a>
			</div>
		</form>
	</div>
	<div class="form-container sign-in-container">
		<form action="login">
			<h1>Đăng nhập</h1>
			<input name="user" type="text" placeholder="Nhập tài khoản" />
			<input name="password" type="password" placeholder="Mật khẩu" />
			<a href="./forgotpass.jsp">Quên mật khẩu?</a>
			<% String mess = (String) request.getAttribute("mess");
				if (mess != null) {%>
			<div class="alert-danger"
				 style="
                        color: white;
                        background-color: #ff0000;
                        font-size: 16px;
                        font-weight: 900;
                        padding: 10px;
                        margin-bottom: 15px;
                        border-radius: 5px;">
				<%= mess %>
			</div>
			<%}%>
			<button type="submit" style="background: #ff9800;border-color:#ff9800">Đăng nhập</button>
			<span>Hoặc đăng kí bằng</span>
			<div class="social-container">
				<a href="#" class="social"><i class="fab ti-facebook"></i></a>
				<a href="#" class="social"><i class="fab ti-google"></i></a>
			</div>
		</form>

	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left" >
				<h1>Chào mừng bạn đến Karma shop</h1>
				<p>Đăng nhập nhanh để nhận ưu đãi nào!</p>
				<button class="ghost" id="signIn">Đăng nhập</button>
			</div>
			<div class="overlay-panel overlay-right" style="background: #ffba00">
				<h1>Xin chào!</h1>
				<p>Nếu bạn chưa có tào khoản hãy đăng kí ngay nào!</p>
				<button class="ghost" id="signUp">Đăng kí</button>
			</div>
		</div>
	</div>
</div>

<script src="js/login.js"></script>
</body>
</html>