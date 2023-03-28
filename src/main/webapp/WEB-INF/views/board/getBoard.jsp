<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/getBoard.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<script src="https://code.jquery.com/jquery-1.11.3.js"></script>

<title> ${mode=="new"?"글 작성":"내용"}</title>
	<script type="text/javascript">

		let msg=${msg};
        if(msg=="WRT_ERR") alert('삭제',"삭제되었습니다.","error");

	</script>
</head>
<div class="board-container">


<body class="getBoard">
<div class="getBoard-container">
<h2 class="writing-header"> ${mode=="new"?"글 작성":"내용"}</h2>
<form action="" id="form" class="frm" method="post">

	<input type="text" name="board_num" value="${board.board_num}" hidden="hidden">

	<c:if test="${mode ne 'new'}">
	<input class="getBoard" type="text" name="board_title" value="<c:out value='${board.board_title}'/>"  ${mode=="new" ? "" :"readonly='readonly'"} ><br>
	<textarea class="getBoard" name="board_content" rows="20"  ${mode=="new" ? "" :"readonly='readonly'"}><c:out value="${board.board_content}"/></textarea><br>
</c:if>
<c:if test="${mode eq 'new'}">
	<input class="getBoard" type="text" name="board_title"  placeholder="제목을 입력해 주세요." ${mode=="new" ? "" :"readonly='readonly'"} ><br>
	<textarea class="getBoard" name="board_content" rows="20" placeholder="내용을 입력해 주세요." ${mode=="new" ? "" :"readonly='readonly'"}></textarea><br>
</c:if>

	<c:if test="${member.member_id eq 'admin'}">
		<c:if test="${mode eq 'new'}">
			<button type="button" id="writeBtn" class="btn btn-write"><i class="fa fa-pencil"></i>등록</button>
		</c:if>
		<c:if test="${mode ne 'new'}">
			<button type="button" id="writeNewBtn" class="btn btn-write"><i class="fa fa-pencil"></i>글쓰기</button>
			<button type="button" id="modifyBtn" class="btn btn-modify"><i class="fa fa-edit"></i>수정</button>
		</c:if>
	<button type="button" id="removeBtn" class="btn btn-remove"><i class="fa fa-remove"></i>삭제</button>
	</c:if>
	<button type="button" id="listBtn" class="btn btn-list"><i class="fa fa-bars"></i>목록</button>
</form>
</div>
<script type="text/javascript">
	var alert = function(msg,title,type) {
		swal({
			title : title,
			text : msg,
			icon:"error",
			type: type,
			timer : 1500,
			customClass : 'sweet-size',
			showConfirmButton : false
		});
	}
	var confirm = function(title, msg) {
		swal({
			title : title,
			text : msg,
			icon : "warning",
			showCancelButton : true,
			confirmButtonClass : "btn-danger",
			confirmButtonText : "예",
			cancelButtonText : "아니오",
			closeOnConfirm : false,
			closeOnCancel : true
		}, function(isConfirm) {
			if (isConfirm) {
				let form=$("#form");
				form.attr("action","<c:url value='/deleteBoard${searchCondition.queryString}'/>");
				form.attr("method","post");
				form.submit();
			}else{
				return false;
			}

		});
	}
</script>
<script >

	$(document).ready(function(){
		$("#writeNewBtn").on("click", function(){
			location.href="<c:url value='/insertBoard'/>";
		});
		let formCheck = function () {
			let form = document.getElementById("form");
			if (form.board_title.value == "") {
				alert('제목을 입력해주세요', "제목", 'error');
				form.board_title.focus();
				return false;
			}
			if (form.board_content.value == "") {
				alert('내용을 입력해주세요', "내용", 'error');
				form.board_content.focus();
				return false;
			}
			return true;
		}

		$("#listBtn").on("click", function () {
			location.href="<c:url value='page${searchCondition.queryString}'/>";
		});
		$("#modifyBtn").on("click", function(){
			let form=$("#form");
			let isReadonly=$("input[name=board_title]").attr('readonly');

            if(isReadonly=='readonly'){
				$(".writing-header").html("게시판 수정");
                $("input[name=board_title]").attr('readonly',false); //제목
				$("textarea").attr('readonly',false);//내용
				$("#modifyBtn").html("<i class='fa fa-pencil'></i> 수정하기");
				$("#writeNewBtn").hide();


				return;
			}
			form.attr("action", "<c:url value='updateBoard${searchCondition.queryString}'/>");
				form.attr("method","post");
			if(formCheck())
				form.submit();
		});
		$("#writeBtn").on("click", function(){
			let form=$("#form");
			form.attr("action","<c:url value='insertBoard'/>");
			form.attr("method","post");

            if(formCheck())
			form.submit();
		});
		$("#removeBtn").on("click", function(){
			if(!confirm('경고',"정말 삭제 하시겠습니까?","warning")) return;
			let form=$("#form");
			form.attr("action","<c:url value='deleteBoard${searchCondition.queryString}'/>");
			form.attr("method","post");
            form.submit();
		});
	});
</script>
</body>
</div>
</html>
