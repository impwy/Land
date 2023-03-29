<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세정보입니다.</title>


</head>
<body>




<table>

상세정보입니다.

		<tr>
			<th>아이디</th>
			<th>수량</th>
			<th>합계</th>
		</tr>
		
			<tr>
				<th>${pageinfo.member_id}</th>
				<th>${pageinfo.basket_sum}</th>
				<th>${pageinfo.basket_amount}</th>
			</tr>
		
	</table>
	
	<a href="/basket/delbasket?goods_num=${pageinfo.goods_num}">글삭제</a>



</body>
</html>