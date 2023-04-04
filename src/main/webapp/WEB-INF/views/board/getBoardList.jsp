<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script type="text/javascript">
	var alert = function(msg, title, type) {
		swal({
			title : title,
			text : msg,
			icon : "success",
			type : type,
			timer : 1500,
			customClass : 'sweet-size',
			showConfirmButton : false
		});
	}
</script>
<head>
<meta charset="UTF-8" http-equiv="content-Type" content="text/html">
<link rel="stylesheet" href="resources/css/board.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>공지사항</title>
</head>
<body class="board">
	<h2>공지사항</h2>
	<script>
		let msg = "${msg}"
		if (msg == "WRT_OK")
			alert('게시글이 등록 되었습니다.', "등록", "success");
		if (msg == "DEL_OK")
			alert("게시글이 삭제 되었습니다.", '삭제', "success");
		if (msg == "UP_OK")
			alert("게시글이 수정 되었습니다.", '수정', "success");
		if (msg == "DEL_ERR")
			alert("삭제에 실패했습니다.", "warning");
	</script>
	<div class="board-container">
		<div class="search-container">
			<form action="<c:url value="page"/>" class="search-form" method="get">
				<select class="search-option" name="option">
					<option value="A"
						${ph.sc.option=='A' || ph.sc.option=='' ? "selected" : ""}>모두</option>
					<option value="T" ${ph.sc.option=='T' ? "selected" : ""}>제목만</option>
					<option value="W" ${ph.sc.option=='W' ? "selected" : ""}>작성자</option>
				</select> <input type="text" name="keyword" class="search-input" type="text"
					value="${ph.sc.keyword}" placeholder="검색어를 입력해주세요"> <input
					type="submit" class="search-button" value="검색">
			</form>
			<c:if test="${member.member_id eq 'admin'}">
				<button id="writeBtn" class="btn-write"
					onclick="location.href='<c:url value="insertBoard"/>'">
					<i class="fa fa-pencil"></i>글쓰기
				</button>
			</c:if>
		</div>
		<table class="board">
			<tr>
				<th class="no">번호</th>
				<th class="title">제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>작성일자</th>
			</tr>
			<c:forEach items="${boardList }" var="board">
				<tr>
					<td class="no">${board.board_num }</td>
					<td class="title"><a class="board"
						href="<c:url value="getBoard${ph.sc.queryString}&board_num=${board.board_num}"/>"><c:out
								value="${board.board_title }" /></a></td>
					<td class="writer">${board.member_id }</td>
					<td class="viewcnt">${board.board_viewcnt}</td>
					<td class="">${board.board_regdate }</td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<div class="paging-container">
			<div class="paging">
				<c:if test="${totalCnt==null || totalCnt==0}">
					<div>게시물이 없습니다.</div>
				</c:if>
				<c:if test="${totalCnt!=null && totalCnt!=0}">
					<c:if test="${ph.showPrev}">
						<a class="page"
							href="<c:url value="page${ph.sc.getQueryString(ph.beginPage-1)}"/>">&lt;</a>
					</c:if>
					<c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
						<a class="page ${i==ph.sc.page? "
							paging-active" : ""}" href="<c:url value="page${ph.sc.getQueryString(i)}"/>">${i}</a>
					</c:forEach>
					<c:if test="${ph.showNext}">
						<a class="page"
							href="<c:url value="page${ph.sc.getQueryString(ph.endPage+1)}"/>">&gt;</a>
					</c:if>
				</c:if>
			</div>
		</div>
		<br>
	</div>
</body>
</html>

