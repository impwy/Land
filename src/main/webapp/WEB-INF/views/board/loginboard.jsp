<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>title</title>
</head>
<body>
	<center>
		<h1>title</h1>
		<a href="login">로그인</a>&nbsp;&nbsp;
		<hr>
		<form action="login" method="post">
			<table border="1" cellpadding="0" id="login-form">
				<tr>
					<td >아이디</td>
					<td><input type="text" name="id" value="${member.member_id }" /></td>
				</tr>
				<tr>
					<td >비밀번호</td>
					<td><input type="password" name="password"
						value="${member.member_pwd }" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="로그인" /></td>
				</tr>
			</table>
		</form>
		<hr>
	</center>
</body>
</html>