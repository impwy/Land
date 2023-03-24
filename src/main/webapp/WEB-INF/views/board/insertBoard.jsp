<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>새글 등록</title>
</head>
<body>
	<center>
		<h1>글 등록</h1>
		<a href="#">Log-Out</a>
		<hr>
		<form action="insertBoard" method="post">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td>제목</td>
					<td align="left"><input type="text" name="board_title"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td align="left"><input type="text" name="member_id" size="10" value="${member.member_id }" readonly="readonly"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td align="left"><textarea name="board_content" id="board_content" cols="40" rows="10"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="새글 등록"></td>
				</tr>
			</table>
		</form>
		<a href="page">글 목록 가기</a>
	</center>
</body>
</html>