<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
body {
  background-color: #f5f5f5;
  font-family: Arial, sans-serif;
}
table {
  border-collapse: collapse;
  width: 100%;
  margin-bottom: 1rem;
}

th, td {
  text-align: left;
  padding: 0.75rem;
  vertical-align: top;
  border-top: 1px solid #dee2e6;
}

th {
  background-color: #f8f9fa;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세정보입니다.</title>

</head>
<body>

	<table>

		상세정보입니다.

		<tr>
			<th>아이디</th>
			<th>상품종류</th>
			<th>가격</th>
		</tr>

		<tr>
			<th>${pageinfo.member_id}</th>
			<th>${pageinfo.basket_sum}</th>
			<th>${pageinfo.basket_amount}</th>
		</tr>

	</table>

	

</body>
</html>