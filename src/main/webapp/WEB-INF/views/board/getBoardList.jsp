
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<script type="text/javascript">
	var alert = function(msg,title, type) {
		swal({
			title : title,
			text : msg,
			icon:"success",
			type : type,
			timer : 1500,
			customClass : 'sweet-size',
			showConfirmButton : false
		});
	}

	var confirm = function(msg, title) {
		swal({
			title : title,
			text : msg,
			type : "warning",
			showCancelButton : true,
			confirmButtonClass : "btn-danger",
			confirmButtonText : "예",
			cancelButtonText : "아니오",
			closeOnConfirm : false,
			closeOnCancel : true
		}, function(isConfirm) {
			if (isConfirm) {
				swal('', '예약이 승인되었습니다.', "success");
			}else{
				swal('', '예약이 거부되었습니다.', "failed");
			}

		});
	}
    </script>
<head>
<meta charset="UTF-8" http-equiv="content-Type" content="text/html">
	<link rel="stylesheet" href="resources/css/board.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>공지사항</title>
</head>
<body class="board">
		<h1 class="board">공지사항</h1>
		<script >
			let msg="${msg}"
			if(msg=="WRT_OK") alert('게시글이 등록 되었습니다.',"등록","success");
			if(msg=="DEL_OK") alert("게시글이 삭제 되었습니다.",'삭제',"success");
			if(msg=="UP_OK") alert("게시글이 수정 되었습니다.",'수정',"success");
			if(msg=="DEL_ERR") alert("삭제에 실패했습니다.","warning");
		</script>
<div class="board-container">
<c:if test="${member.member_id eq 'admin'}">
	<button id="writeBtn" class="btn-write" onclick="location.href='<c:url value="insertBoard"/>'"><i class="fa fa-pencil"></i> 글쓰기</button>
</c:if>
		<table class="board">
			<tr>
				<th class="no">번호</th>
				<th class="title">제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>작성일자</th>
			</tr>
			<c:forEach items="${boardList }" var="board">
				<tr class="">
					<td class="no">${board.board_num }</td>
<%--					<td align="left"><a href="getBoard?board_num=${board.board_num }">${board.board_title }</a></td>--%>
					<td align="left" class="title"><a class="board" href="<c:url value='getBoard?board_num=${board.board_num}&page=${page}&pageSize=${pageSize}'/>">${board.board_title }</a></td>
					<td class="writer">${board.member_id }</td>
					<td class="viewcnt">${board.board_viewcnt}</td>
					<td class="">${board.board_regdate }</td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<div class="paging-container">
			<div class="paging">
			<c:if test="${ph.showPrev}">
				<a class="page" href="<c:url value='/page?page=${ph.beginPage-1}&pageSize=${ph.pageSize}'/>">&lt;</a>
			</c:if>

			<c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
				<a class="page ${i==ph.page? "paging-active":""}" href="<c:url value='/page?page=${i}&pageSize=${ph.pageSize}'/> ">${i}</a>
			</c:forEach>

			<c:if test="${ph.showNext}">
				<a class="page" href="<c:url value='/page?page=${ph.endPage+1}&pageSize=${ph.pageSize}'/>">&gt;</a>
			</c:if>
			</div>
		</div>




		<br>
</div>
</body>
</html>

