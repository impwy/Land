<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- views/shop/product_write.jsp -->
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
   src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 수정/삭제</title>

</head>
<body>

	 <h2>상품 정보 편집</h2>
	<form name="form2" method="post">
		<table>
			<tr>
		<td>상품명</td>
		<td><input type="text" name="goods_name" value="${vo.goods_name}" ></td>
	</tr>
	<tr>
		<td>상품번호</td>
		<td><input type="number" name="goods_num" id="number" value="${vo.goods_num}"  ></td>
	</tr>
	<tr>
		<td>상품가격</td>
		<td><input type="number" name="goods_price" id="price" value="${vo.goods_price}" ></td>
	</tr>
	<tr>
		<td>상품이미지</td>
		<td><input type="text" name="goods_image" id="image" value="${vo.goods_image}" ></td>
	</tr>
	<tr>
		<td>상품수량</td>
		<td><input type="number" name="goods_amount" id="amount" value="${vo.goods_amount}" ></td>
		
	</tr>
			<tr>
				<td colspan="2" align="center">
					<!-- 수정,삭제에 필요한 상품코드값을 hidden 태그로 넘김 --> 
					<input type="submit" value="수정하기"></td> 
						<td><input type="button" value="목록" onclick="location.href='${path}product_list'">
				</td>
			</tr>
		</table>
	</form>
</body>

</html>



















