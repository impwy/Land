<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/getBoard.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"/>
<script type="text/javascript">
    var alert = function (msg, title, type) {
        swal({
            title: title,
            text: msg,
            icon:"error",
            type: type,
            timer: 1500,
            customClass: 'sweet-size',
            showConfirmButton: false
        });
    };
</script>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
    <title>Virtualland</title>
    <script>
        let msg ="${msg}";
        if (msg == "WRT_ERR") alert('게시글이 등록이 되지않았습니다. 게시글의 글자수를 확인해 주세요(500자 미만)', "오류", "error");
        if (msg == "UP_ERR") alert('게시글이 수정이 되지않았습니다. 게시글의 글자수를 확인해 주세요(500자 미만)', "오류", "error");
    </script>
</head>
<body class="getBoard">
<div class="pageNavi">
    <a href="#" style="cursor: pointer"><i class="fa-solid fa-up-long"></i></a>
    <a href="#bottom" style="cursor: pointer"><i class="fa-solid fa-down-long"></i></a>
</div>
<div class="getBoard-container">
    <h2 class="writing-header"> ${mode=="new"?"글 작성":"공지사항"}</h2>
    <form action="" id="form" class="frm" method="post">

        <input type="text" name="board_num" value="${board.board_num}" hidden="hidden">

        <c:if test="${mode ne 'new'}">
            <div class="boardTitle-container">
                <input class="title" type="text" name="board_title"
                       value="<c:out value='${board.board_title}'/>"  ${mode=="new" ? "" :"readonly='readonly'"} >
            </div>
            <div class="writer">
                <div class="side"><c:out value='${board.member_id}'/></div>
                <div class="side-fr"><span><fmt:formatDate value="${board.board_regdate}" pattern="HH:mm"
                                                           type="time"/></span></div>
                <div class="side-fr"><span><fmt:formatDate value="${board.board_regdate}" pattern="yyyy.MM.dd"
                                                           type="date"/></span></div>
                <div class="side-fr"><span>조회수 <b>${board.board_viewcnt}</b></span></div>
            </div>
            <textarea id="target-textarea" class="getBoard" name="board_content" onkeydown="resize(this)" ${mode=="new" ? "" :"readonly='readonly'" }><c:out value="${board.board_content}"/></textarea>
        </c:if>
        <c:if test="${mode eq 'new'}">
            <input class="getBoard" type="text" name="board_title" placeholder="제목을 입력해 주세요." autofocus>
            <textarea id="target-textarea" class="getBoard" name="board_content" placeholder="내용을 입력해 주세요." onkeydown="resize(this)" rows="1"></textarea>
        </c:if>
        <c:if test="${mode eq 'update'}">
            <input class="getBoard" type="text" name="board_title" value="<c:out value='${board.board_title}'/>">
            <textarea id="target-textarea" class="getBoard" name="board_content" onkeydown="resize(this)" rows="1"><c:out value="${board.board_content}"/></textarea>
        </c:if>

        <c:if test="${member.member_id eq 'admin'}">
            <c:if test="${mode eq 'new'}">
                <button type="button" id="writeBtn" class="btn btn-write"><i class="fa fa-pencil"></i>등록</button>
                <button type="reset" class="button"><i class="fa-solid fa-rotate-left"></i>초기화</button>
            </c:if>
            <c:if test="${mode ne 'new'}">
                <button type="button" id="writeNewBtn" class="btn btn-write"><i class="fa fa-pencil"></i>글쓰기</button>
                <button type="button" id="modifyBtn" class="btn btn-modify"><i class="fa fa-edit"></i>수정</button>
            <button type="button" id="removeBtn" class="btn btn-remove"><i class="fa fa-remove"></i>삭제</button>
            </c:if>
           <!--  <button type="button" class="btn btn-write" onclick=location.href="page"><i class="fa fa-pencil"></i>목록으로</button> -->
        </c:if>
        <div class="list-container">
            <div class="btn-container">
                <p id="listBtn" class="listBtn" style="cursor: pointer">목록으로</p>
            </div>
        </div>
            <c:if test="${mode ne 'new'}">
                <div id="bottom"></div>
        <div class="btn-container">
            <p>다음글${nextPage.board_num ==null?"이 없습니다":""}<i class="fa-solid fa-caret-up"></i></p>
            <p id="nextBtn" class="btn" style="cursor: pointer"><c:out value="${nextPage.board_title }"/></p>
        </div>
        <div class="btn-container">
            <p>이전글${prevPage.board_num ==null?"이 없습니다":""}<i class="fa-solid fa-caret-down"></i></p>
            <p id="prevBtn" class="btn" style="cursor: pointer"><c:out value="${prevPage.board_title }"/></p>
        </div>
            </c:if>
    </form>
    <script>
        function windowResize() {
            let textarea = document.getElementById("target-textarea");

            textarea.style.height = "200px";

            let scrollHeight = textarea.scrollHeight;
            let style = window.getComputedStyle(textarea);
            let borderTop = parseInt(style.borderTop);
            let borderBottom = parseInt(style.borderBottom);

            textarea.style.height = (scrollHeight + borderTop + borderBottom) + "px";
        }

        window.addEventListener("load", windowResize);
        window.onresize = windowResize;

        function resize(obj) {
            obj.style.height = '200px';
            obj.style.height = (1 + obj.scrollHeight) + 'px';
        }
    </script>
</div>
<script type="text/javascript">

    var confirm = function (title, msg) {
        swal({
            title: title,
            text: msg,
            icon: "warning",
            showCancelButton: true,
            confirmButtonClass: "btn-danger",
            confirmButtonText: "예",
            cancelButtonText: "아니오",
            closeOnConfirm: false,
            closeOnCancel: true
        }, function (isConfirm) {
            if (isConfirm) {
                let form = $("#form");
                form.attr("action", "<c:url value='/deleteBoard${searchCondition.queryString}'/>");
                form.attr("method", "post");
                form.submit();
            } else {
                return false;
            }

        });
    }

    $(document).ready(function () {
        $("#writeNewBtn").on("click", function () {
            location.href = "<c:url value='/insertBoard'/>";
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
            location.href = "<c:url value='page${searchCondition.queryString}'/>";
        });
        $("#modifyBtn").on("click", function () {
            let form = $("#form");
            let isReadonly = $("input[name=board_title]").attr('readonly');

            if (isReadonly == 'readonly') {
                $(".writing-header").html("글 수정");
                $("input[name=board_title]").attr('readonly', false); //제목
                $("textarea").attr('readonly', false);//내용
                $("#modifyBtn").html("<i class='fa fa-pencil'></i> 수정하기");
                $("#writeNewBtn").hide();

                return;
            }
            form.attr("action", "<c:url value='updateBoard${searchCondition.queryString}'/>");
            form.attr("method", "post");
            if (formCheck())
                form.submit();
        });
        $("#writeBtn").on("click", function () {
            let form = $("#form");
            form.attr("action", "<c:url value='insertBoard'/>");
            form.attr("method", "post");

            if (formCheck())
                form.submit();
        });
        $("#removeBtn").on("click", function () {
            if (!confirm('경고', "정말 삭제 하시겠습니까?", "warning")) return;
        });
        $("#prevBtn").on("click", function () {
            location.href = "<c:url value='getBoard${sc.queryString}&board_num=${prevPage.board_num}'/>";
        });
        $("#nextBtn").on("click", function () {
            location.href = "<c:url value='getBoard${sc.queryString}&board_num=${nextPage.board_num}'/>";
        });
    });
</script>
</body>
</html>
