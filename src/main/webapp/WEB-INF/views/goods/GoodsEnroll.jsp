<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 상품등록</title>
<link rel="stylesheet" href="resources/css/goodsEnroll.css" />
</head>
<body>


	<div class="admin_content_wrap">
	<form action="insertGoods" method="post" id="enrollForm">
		<div class="admin content subject">
			<span>상품등록</span>
		</div>
		<br /> <br />
		<div class="admin_content_main">
			
				<div class="form_section">
					<div class="form_section_title">
						<label>상품번호</label>
					</div>
					<div class="form_section_content">
						<input name="goods_num" id="goods_num">
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품가격</label>
					</div>
					<div class="form_section_content">
						<input name="goods_price" value="0" id="goods_price">
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품이름</label>
					</div>
					<div class="form_section_content">
						<input name="goods_name" id="goods_name">
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품이미지</label>
					</div>
					<div class="form_section_content">
						<input id="goods_image" name="goods_image"/>
					</div>
				</div>
		</div>
		<div class="form_section">
			<div class="form_section_title">
				<label>상품 수량</label>
			</div>
			<div class="form_section_content">
				<input name="cateCode">
			</div>
		</div>
		
		<div class="btn_section">
			
	        <button>등록</button>
		</div>
		</form>
	</div>
	

 	
	
	
</body>
</html>