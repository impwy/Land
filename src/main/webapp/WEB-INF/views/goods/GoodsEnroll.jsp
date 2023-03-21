<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 상품등록</title>
</head>
<body>
	<%@ include file="../include/header.jsp"%>

	<div class="admin_content_wrap">
		<div class="admin content subject">
			<span>상품등록</span>
		</div>

		<div class="admin_content_main">
			<form action="/admin/goodsEnroll" method="post" id="enrollForm">
				<div class="form_section">
					<div class="form_section_title">
						<label>상품번호</label>
					</div>
					<div class="form_section_content">
						<input name="bookName">
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품가격</label>
					</div>
					<div class="form_section_content">
						<input name="authorId" value="0">
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품이름</label>
					</div>
					<div class="form_section_content">
						<input name="publeYear">
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품이미지</label>
					</div>
					<div class="form_section_content">
						<input name="publisher">
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
				
				
				
			</form>
			<div class="btn_section">
				<button id="cancelBtn" class="btn">취 소</button>
				<button id="enrollBtn" class="btn enroll_btn">등 록</button>
			</div>
		</div>


	</div>

	<%@ include file="../include/footer.jsp"%>
	<script>

	let enrollForm = $("#enrollForm")
	
/* 취소 버튼 */
$("#cancelBtn").click(function(){
	
	location.href="/admin/goodsManage"
	
});

/* 상품 등록 버튼 */
$("#enrollBtn").on("click",function(e){
	
	e.preventDefault();
	
	enrollForm.submit();
	
});

</script> 	
</body>
</html>