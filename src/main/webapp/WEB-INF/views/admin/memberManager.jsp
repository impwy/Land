<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script type="text/javascript">
    var alert = function (msg, title, type) {
        swal({
            title: title,
            text: msg,
            icon: "success",
            type: type,
            timer: 1500,
            customClass: 'sweet-size',
            showConfirmButton: false
        });
    }
</script>
<style>
	body{
		margin: 0 auto;
	}
.member-container {
	margin: 0 auto;
	padding: 200px;
	text-align: center;
	width: 100%;
	height: 100%;

}
.memberlist-container{
	margin: 0 auto;
	width: 100%;
	justify-content: space-between;
}
button>a {
	color: black;
	text-decoration: none;
}

table {
	margin: 10px auto;
	justify-content: space-between;
	width: 600px;
}
</style>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<title>회원 관리</title>
<body>
</head>
	<c:if test="${member.member_id eq 'admin'}">
		<script type="text/javascript">
    let msg = "${msg}";
    if (msg == "DEL_OK") alert('회원정보가 삭제 되었습니다.', "삭제", "success");
</script>
		<div class="member-container">
			<h1>회원 관리</h1>
			<div class="search-container">
				<form action="<c:url value="memberpage"/>" class="search-form"
					method="get">
					<select class="search-option" name="option">
						<option value="A"
							${ph.sc.option=='A' || ph.sc.option=='' ? "selected" : ""}>모두</option>
						<option value="N" ${ph.sc.option=='N' ? "selected" : ""}>이름</option>
						<option value="I" ${ph.sc.option=='I' ? "selected" : ""}>아이디</option>
					</select> <input type="text" name="keyword" class="search-input" type="text"
						value="${ph.sc.keyword}" placeholder="검색어를 입력해주세요"> <input
						type="submit" class="search-button" value="검색">
				</form>
			</div>
			<div class="memberlist-container">
			<table>
				<tr>
					<th>회원번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>나이</th>
					<th>비고</th>
				</tr>
				<form id="form" method="post" action="">
					<c:forEach items="${memberList}" var="member">
						<tr>
							<td>${member.member_no}</td>
							<td>${member.member_id}</td>
							<td>${member.member_name}</td>
							<td>${member.member_phone}</td>
							<td>${member.member_age}</td>
							<td>
								<button>
									<a
										href="<c:url value="getMember${ph.sc.queryString}&member_no=${member.member_no}"/>">비고</a>
								</button>
							</td>
						</tr>
					</c:forEach>
				</form>
			</table>
			</div>
			<div class="paging-container">
				<div class="paging">
					<c:if test="${totalCnt!=null && totalCnt!=0}">
						<c:if test="${ph.showPrev}">
							<a class="page"
								href="<c:url value="memberpage${ph.sc.getQueryString(ph.beginPage-1)}"/>">&lt;</a>
						</c:if>
						<c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
							<a class="page ${i==ph.sc.page? "
								paging-active" : ""}" href="<c:url value="memberpage${ph.sc.getQueryString(i)}"/>">${i}</a>
						</c:forEach>
						<c:if test="${ph.showNext}">
							<a class="page"
								href="<c:url value="memberpage${ph.sc.getQueryString(ph.endPage+1)}"/>">&gt;</a>
						</c:if>
					</c:if>
				</div>
			</div>
			<button>
				<a onclick=location.href='main' style="cursor: pointer">메인으로</a>
			</button>
		</div>
	</c:if>
	<c:if test="${member.member_id ne 'admin'}">
		<body style="margin-top: 200px; text-align: center">

		<h1>잘못 된 접근입니다.</h1>
		<h1>
			<span id="countdown">3</span>초 뒤 메인 페이지로 넘어갑니다.
		</h1>
		<script>
        function startTimer(duration, display) {
            var timer = duration;
            setInterval(function () {
                var seconds = timer % 60;
                display.textContent = seconds;
                if (--timer < 0) {
                    window.location.href='main';
                }
            }, 1000);
        }

        window.onload = function () {
            var countdownSeconds = 3,
                display = document.querySelector('#countdown');
            startTimer(countdownSeconds, display);
        };
    </script>
		</body>
	</c:if>

</body>
</html>