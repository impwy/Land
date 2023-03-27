<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	 <table>
		<tr>
			<th>아이디</th>
			<th>굿즈종류</th>
			<th>수량</th>
			<th>합계</th>
		</tr>
		<c:forEach items="${basketList}" var="basket">
			<tr>
				<th>${basket.member_id}</th>
				<th>${basket.goods_num}</th>
				<th>${basket.basket_sum}</th>
				<th>${basket.basket_amount}</th>
			</tr>
		</c:forEach>
	</table>
</body>
</html>