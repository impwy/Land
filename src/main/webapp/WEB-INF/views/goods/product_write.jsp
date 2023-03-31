<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- views/shop/product_write.jsp -->
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- ckeditor 사용을 위해 js 파일 연결 -->

</head>
<body>

<h2>상품 등록</h2>
<form action="form1" method="post">
<table>
	<tr>
		<td>상품명</td>
		<td><input type="text" name="goods_name" id="name" ></td>
	</tr>
	<tr>
		<td>상품번호</td>
		<td><input type="number" name="goods_num" id="number" ></td>
	</tr>
	<tr>
		<td>상품가격</td>
		<td><input type="number" name="goods_price" id="price" ></td>
	</tr>
	<tr>
		<td>상품이미지</td>
		<td><input type="text" name="goods_image" id="image" ></td>
	</tr>
	<tr>
		<td>상품수량</td>
		<td><input type="number" name="goods_amount" id="amount" ></td>
		
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="등록" class="button">
			
			<input type="button" value="목록" onclick="location.href='${path}goodsPage'">
		</td>
	</tr>
</table>	
</form>

</body>
</html>



















