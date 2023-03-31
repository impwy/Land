<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- views/shop/product_write.jsp -->
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
   src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 수정/삭제</title>

</head>
<body>
<script>

		function product_update() {
			// 태그를 name으로 조회할 경우
			//var product_name=document.form1.product_name.value;
			// 태그를 id로 조회할 경우
			var product_name = $("#product_name").val();
			var price = $("#price").val();
			var description = $("#description").val();
			if (product_name == "") { //빈값이면
				alert("상품이름을 입력하세요");
				$("#product_name").focus(); //입력포커스 이동
				return; //함수 종료, 폼 데이터를 제출하지 않음
			}
			if (price == "") {
				alert("가격을 입력하세요");
				$("#price").focus();
				return;
			}
			if (description == "") {
				alert("상품 설명을 입력하세요");
				$("#description").focus();
				return;
			}
			//폼 데이터를 받을 주소
			document.form1.action = "${path}/shop/product/update.do";
			//폼 데이터를 서버에 전송
			document.form1.submit();
		}
	</script>
	 <h2>상품 정보 편집</h2>
	<form name="form2" method="post" enctype="multipart/form-data">
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
					<!-- 수정,삭제에 필요한 상품코드값을 hidden 태그로 넘김 --> <input type="hidden"
						name="goods_num" value="${vo.goods_num}"> <input
						type="button" value="수정" onclick="product_update()"> 
						<input type="button" value="삭제" onclick="product_delete()"> 
						<input type="button" value="목록" onclick="location.href='${path}product_list'">
				</td>
			</tr>
		</table>
	</form>
</body>

</html>



















