<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
	<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
</head>
<body>
<h2>게시물읽기</h2>
<form action="" id="form">
	<input type="text" name="board_num" value="${board.board_num}" readonly="readonly">
	<input type="text" name="board_title" value="${board.board_title}" readonly="readonly" >
	<textarea name="board_content" id="" cols="30" rows="10" readonly="readonly">${board.board_content}</textarea>
	<button type="button" id="writeBtn" class="btn">등록</button>
	<button type="button" id="modifyBtn" class="btn">수정</button>
	<button type="button" id="removeBtn" class="btn">삭제</button>
	<button type="button" id="listBtn" class="btn">목록</button>
</form>
<script >
	$(document).ready(function(){
		$("#listBtn").on("click", function(){
			location.href="<c:url value='/page'/>?page=${page}&pageSize=${pageSize}";
		});
	});
	$(document).ready(function(){
		$("#removeBtn").on("click", function(){
			if(!confirm("정말로 삭제하시겠습니까?")) return;
			let form=$("#form");
			form.attr("action","<c:url value='/deleteBoard'/>?page=${page}&pageSize=${pageSize}");
			form.attr("method","post");
            form.submit();
		});
	});
</script>
</body>
</html>