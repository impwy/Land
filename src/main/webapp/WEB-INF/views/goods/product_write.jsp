<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- views/shop/product_write.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- ckeditor 사용을 위해 js 파일 연결 -->

</head>
<body>

<script>
function product_write(){
	// 태그를 name으로 조회할 경우
	//var product_name=document.form1.product_name.value;
	// 태그를 id로 조회할 경우
	var goods_name=$("#goods_name").val();
	var goods_num=$("#goods_num").val();
	var goods_price=$("#goods_price").val();
	var goods_image=$("#goods_image").val();
	var goods_amount=$("#goods_amount").val();
	
	if(product_name==""){ //빈값이면
		alert("상품이름을 입력하세요"); 
		$("#goods_name").focus(); //입력포커스 이동
		return; //함수 종료, 폼 데이터를 제출하지 않음
	}
	if(goods_price==""){
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
	document.form1.action="${path}/shop/poduct/insert.do";
	//폼 데이터를 서버에 전송
	document.form1.submit();
}
</script>


<h2>상품 등록</h2>
<form name="form1" method="post"
	enctype="multipart/form-data">
<table>
	<tr>
		<td>상품명</td>
		<td><input type="text" name="goods_name" id="goods_name"></td>
	</tr>
	<tr>
		<td>상품번호</td>
		<td><input type="text" name="goods_num" id="goods_num"></td>
	</tr>
	<tr>
		<td>상품가격</td>
		<td><input type="text" name="goods_price" id="goods_price"></td>
	</tr>
	<tr>
		<td>상품이미지</td>
		<td><input type="text" name="goods_image" id="goods_image"></td>
	</tr>
	<tr>
		<td>상품수량</td>
		<td><input type="text" name="goods_amount" id="goods_amount"></td>
		
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="button" value="등록" 
				onclick="javascript:product_write()">
			<input type="button" value="목록"
onclick="location.href='${path}/shop/product/list.do'">
		</td>
	</tr>
</table>	
</form>

</body>
</html>



















