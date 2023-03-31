<!--회원 정보 보기  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  trimDirectiveWhitespaces="true"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	 	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>회원 탈퇴</title>
</head>
<script>
	$(document).ready(function(){
		//취소
		$(".cencle").on("click", function(){
			
			location.href = "/mypage/mapge";
		})
		$("#submit").on("click", function(){
			if($("#member_pwd").val() ==""){
				alert("비밀번호를 입력해주세요.");
				$("#member_pwd").focus();
				return false;
			}
		})
	})
</script>
<body>
		<form action="deleteMember" method="post">
			<div>
				<label for="member_id">아이디</label>
				<input type="text" id="member_id" name="member_id" value="${member.member_id }" readonly/>
			</div>
			<div>
				<label for="member_pwd">패스워드</label>
				<input type="password" id="member_pwd" name="member_pwd"/>
			</div>
			<div>
				<label for="member_name">성명</label>
				<input type="text" id="member_name" name="member_name" value="${member.member_name }" readonly/>
			</div>
			<div>
				<button type="submit" id="submit">회원탈퇴</button>
				<button type="button">취소</button>
			</div>
			<input type="hidden" id="member_no" name="member_no" value="${member.member_no }">
			<input type="hidden" name="hidden" value="member_hidden">
		</form>
		<div>
			<c:if test="${msg == false }">
				비밀번호가 맞지 않습니다.
			</c:if>
	<!-- <h2>회원 탈퇴</h2>
	<hr>
	<p>회원 탈퇴를 하면 서비스를 더 이상 이용하실 수 없습니다.<br>
		회원 탈퇴를 진행 하시겠습니까?</p>
		<hr>
	<div>
		<p align="center">
			<input type="text" name="member_pwd" placeholder="현재 비밀번호 입력"><br>
			<input type="submit" value = "회원 탈퇴"> -->
			
	</div>
</body>
</html>