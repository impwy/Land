<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<table>

<tr>
	<th>멤버 아이디</th>
	<th>굿즈 넘버</th>
	<th>바구니 넘버</th>
	<th>AOUNT</th>
</tr>

<c:forEach items="${basketList}" var="basket">

<tr>
	<th>${basket.MEMBER_ID} </th>
	<th>${basket.GOODS_NUM} </th>
	<th>${basket.BASKET_SUM} </th>
	<th>${basket.BASKET_AMOUNT} </th>
</tr>

</c:forEach>

</table>
</body>
</html>