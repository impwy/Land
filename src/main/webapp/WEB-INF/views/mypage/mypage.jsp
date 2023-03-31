<!-- 굿즈 or 회원정보보기 or 티켓 3선택지 보이는 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 로그인이 되어있는지 확인 -->
	<%-- <c:if test="#{member.id = null }">      
	<script>
		alert("로그인 후 이용해주세요.");
		location.replace("/member/login");
	</script>
	</c:if> --%>
	<table>
		<tr>
			<td><input type="button" value="굿즈  구매 내역"
				onClick="location.href='mypage2'"></td>
		</tr>
		<tr>
			<td>
				<!-- <img src ="resouces/img/"> --> <input type="button"
				value="티켓 예매 내역" onClick="location.href='ticketList'">
			</td>
		</tr>
		<tr>
			<td>
				<!-- <img src ="resouces/img/"> --> <input type="button"
				value="회원 정보 보기" onClick="location.href='mypage3'">
			</td>
		</tr>
	</table>
</body>
</html>