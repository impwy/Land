<!-- 회원 정보 수정 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보 수정</title>
</head>
<body>
<h1 align="center">회원 정보 수정</h1>
	<div class="">
		<form action="mypage4" method="post">
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="member_id" value="${member.member_id }"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="member_pwd" value="${member.member_pwd }"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="member_name" value="${member.member_name }"></td>
				</tr>
				<tr>
					<td>전화 번호</td>
					<td><input type="text" name="member_phone" value="${member.member_phone }"></td>
				</tr> 
				<tr>
					<td>이메일</td>
					<td><input type="text" name="member_email" value="${member.member_email }"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="member_addr" value="${member.member_addr }"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<input type="submit" value="수정하기">
					<button type="button">탈퇴하기</button>
			</table>
		</form>
	</div>

</body>
</html>