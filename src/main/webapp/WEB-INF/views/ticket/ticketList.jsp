<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>예매내역</h3>
		<table>
		<tr>
			<th>이름</th>
			<th>이메일</th>
			<th>핸드폰</th>
			<th>티켓넘버</th>
			<th>예매날짜</th>
			<th>수량</th>
			<th>가격</th>
		</tr>
		<c:forEach begin="0" end="${(fn:length(list))} var="i">
		<c:set var="row" value="${list[i] }"/>
		<tr>
			<td>${row.member_name }</td>
			<td>${row.ticket_email}</td>
			<td>${row.ticket_phone}</td>
			<td>${row.ticket_num}</td>
			<td>${row.ticket_date}</td>
			<td>${row.ticket_amount}</td>
			<td>${row.ticket_sum}</td>
		</tr>
		</c:forEach>
		</table>
</body>
</html>