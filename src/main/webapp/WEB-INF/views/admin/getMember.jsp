<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
	<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script type="text/javascript">
	var alert = function(msg, title, type) {
		swal({
			title : title,
			text : msg,
			icon : "error",
			type : type,
			timer : 1500,
			customClass : 'sweet-size',
			showConfirmButton : false
		});
	};
</script>
<head>
<style>
	body{
		margin-top: 200px;
	}
	.member-container {
		margin: 0 auto;
	}
	.memberlist-container{
		text-align: center;
		margin: 0 auto;
	}
	button>a {
		color: black;
		text-decoration: none;
	}

	table {
		text-align: left;
		margin: 0 auto;
		justify-content: space-between;
	}
input {
	border: 0 solid black;
}

input:focus {
	outline: 0 solid black;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>회원 상세 정보</title>
</head>
<body>
	<div class="member-container">
			<div class="memberlist-container">
		<h1>회원 상세 정보</h1>
		<form action="" method="post" id="form">
			<table>
				<tr>
					<td>회원번호</td>
					<td><input type="text" name="member_no"
						value="${member.member_no }" readonly></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="member_id"
						value="${member.member_id }" readonly></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="member_pwd"
						value="${member.member_pwd }" readonly></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="member_name"
						value="${member.member_name }" readonly></td>
				</tr>
				<tr>
					<td>전화 번호</td>
					<td><input type="text" name="member_phone"
						value="${member.member_phone }" readonly></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="member_email"
						value="${member.member_email }" readonly></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="member_addr"
						value="${member.member_addr }" readonly></td>
				</tr>
				<tr>
					<td>주민번호</td>
					<td><input type="text" name="member_key"
						value="${member.member_key}" readonly></td>
				</tr>
				<tr>
					<td>가입날짜</td>
					<td><input type="text" name="member_date"
						value="${member.member_date}" readonly></td>
				</tr>
				<tr>
					<td>
					회원관리
					</td>
						<td>
							<button type="button" id="removeBtn" class="btn btn-remove">
								<i class="fa fa-remove"></i>회원 삭제
							</button>
				<button type="button" id="listBtn">목록으로</button>
				</td>
					</td>
				</tr>
			</table>
		</form>
			</div>
	</div>
	<script type="text/javascript">
		var confirm = function(title, msg, type) {
			swal(
					{
						title : title,
						text : msg,
						icon : "warning",
						type : type,
						showCancelButton : true,
						confirmButtonClass : "btn-danger",
						confirmButtonText : "삭제",
						cancelButtonText : "아니오",
						closeOnConfirm : false,
						closeOnCancel : true
					},
					function(isConfirm) {
						if (isConfirm) {
							let form = $("#form");
							form
									.attr("action",
											"<c:url value='/deleteMember${searchCondition.queryString}'/>");
							form.attr("method", "post");
							form.submit();
						} else {
							return false;
						}

					});
		}

		$(document)
				.ready(
						function() {
							$("#listBtn")
									.on(
											"click",
											function() {
												location.href = "<c:url value='memberpage${searchCondition.queryString}'/>";
											});
							$("#removeBtn")
									.on(
											"click",
											function() {
												if (!confirm(
														'경고',
														"삭제하신 데이터는 되돌릴 수 없습니다. 삭제 하시겠습니까?",
														"warning"))
													return;
											});
						});
	</script>
</body>
</html>