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

<!-- <script>
function product_write(){
	// 태그를 name으로 조회할 경우
	//var product_name=document.form1.product_name.value;
	// 태그를 id로 조회할 경우
	var goods_name=$("#goods_name").val();
	var goods_num=$("#goods_num").val();
	var goods_price=$("#goods_price").val();
	var goods_image=$("#goods_image").val();
	var goods_amount=$("#goods_amount").val();
	
	if(goods_name===""){ //빈값이면
		alert("상품이름을 입력하세요"); 
		$("#goods_name").focus(); //입력포커스 이동
		return; //함수 종료, 폼 데이터를 제출하지 않음
	}
	if(goods_price===""){
		alert("가격을 입력하세요");
		$("#goods_price").focus();
		return;
	}
/* 	if(description==""){
		alert("상품 설명을 입력하세요");
		$("#description").focus();
		return;
	} */
	//폼 데이터를 받을 주소
	document.form1.action="form1";
	//폼 데이터를 서버에 전송
	document.form1.submit("");
}
</script> -->


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
			
			<input type="button" value="목록" onclick="goods/product_list">
		</td>
	</tr>
</table>	
</form>

</body>
</html>



















