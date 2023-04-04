<!-- 회원 정보 수정 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="resources/css/mypage3.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<title>회원 정보 수정</title>
</head>
<style>
/* 마이페이지 전체를 중앙 정렬하고 위아래 여백을 줌 */
.mypage {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	margin-top: 250px;
	margin-bottom: 150px;
}

/* 제목을 중앙 정렬 */
h2 {
	text-align: center;
}

/* 프로필 테이블 스타일링 */
.Profile {
	width: 100%;
	max-width: 400px;
	margin: 0 auto;
	border-collapse: collapse;
	background-color: #f9f9f9;
	border: 1px solid #ddd;
	font-family: Arial, sans-serif;
}

/* 프로필 테이블 셀 스타일링 */
.Profile th, .Profile td {
	padding: 12px;
	text-align: left;
	border: 1px solid #ddd;
}

/* 프로필 테이블 짝수 행 배경색 지정 */
.Profile tr:nth-child(even) {
	background-color: #f2f2f2;
}

/* 아이디, 비밀번호, 이름 등 입력 필드 앞 라벨 스타일링 */
.Profile .infor td {
	font-weight: bold;
}

/* 입력 필드 스타일링 */
.Profile input[type="text"], .Profile input[type="password"] {
	width: 100%;
	padding: 10px;
	border-radius: 4px;
	border: 1px solid #ccc;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
}

/* 수정 버튼 스타일링 */
.Profile input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

/* 수정 버튼에 호버 효과 추가 */
.Profile input[type="submit"]:hover {
	background-color: #45a049;
}

/* 회원탈퇴 버튼 스타일링 */
.Profile button {
	background-color: #f44336;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

/* 회원탈퇴 버튼에 호버 효과 추가 */
.Profile button:hover {
	background-color: #f32d19;
}
</style>
<body>
	<%@ include file="../include/header.jsp"%>
	<div class="mypage">
		<h2>회원 정보 수정</h2>
		<form action="mypage3" method="post">
			<table class="Profile">
				<tr class="infor">
					<td>아이디</td>
					<td><input type="text" name="member_id"
						value="${member.member_id }"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="member_pwd"
						value="${member.member_pwd }"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="member_name"
						value="${member.member_name }"></td>
				</tr>
				<tr>
					<td>전화 번호</td>
					<td><input type="text" name="member_phone"
						value="${member.member_phone }"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="member_email"
						value="${member.member_email }"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="member_addr"
						value="${member.member_addr }"></td>
				</tr>
				<tr>
					<td align="center"><input type="submit" value="수정하기"></td>
					<td>
						<button onClick="cancelMember('${member.member_id}')">회원탈퇴</button>
					</td>
				</tr>
				<script>
					function cancelMember(memberId) {
						//비밀번호 확인
						$.ajax({
							url : "deleteMember2",
							type : "GET",
							data : {
								"member_id" : memberId
							},
							success : function(result) {
								alert("탈퇴가 완료되었습니다.");
								location.href = "login";
							},
							error : function(jqXHR, textStatus, errorThrown) {
								alert("실패했습니다.");
								location.href = "main";
							}
						});
					}
				</script>
			</table>
		</form>
	</div>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>