<!-- 굿즈 or 회원정보보기 or 티켓 3선택지 보이는 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="resources/css/mypage.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My page</title>
<style>
#goods-list {
	text-align: center;
	margin-top: 250px;
}

#goods-list table {
	border-collapse: collapse;
	width: 80%;
	transform:translateX(13%);
}

#goods-list th, #goods-list td {
	border: 1px solid #ccc;
	padding: 5px;
}

#goods-list tr:hover {
	opacity: 0.8;
}

.icon a + a {
  margin-left: 350px;
}

.icon {
  display: flex;
  align-items: center;
}

.icon a {
  text-align:center;
}

.my a img {	
  width: 150px;
  height: 150px;
  display: block; /* 이미지를 블록 요소로 지정합니다. */
    max-width: 100%; /* 이미지의 최대 너비를 100%로 지정합니다. */
  max-height: 100%; /* 이미지의 최대 높이를 100%로 지정합니다. */
  
}
.my a {
  display: flex;
  justify-content: center;
  align-items: center;
  padding-top:10 10px;
  height: 100%; /* 부모 요소의 높이를 100%로 지정합니다. */
}	

.my {
  text-align: center;
  margin-bottom: 90px;
  display: flex; /* 요소를 플렉스 박스로 지정합니다. */
  align-items: center; /* 세로축 가운데 정렬을 합니다. */
  justify-content: center; /* 가로축 가운데 정렬을 합니다. */
  height: 30vh; /* 전체 뷰포트 높이만큼 요소의 높이를 지정합니다. */
  table-layout: fixed;
}

@media screen and (max-width: 600px) {
  .my a img {
    width: 100%;
    height: auto;
  }
  .icon a + a {
    margin-left: 20px;
  }
}

</style>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<div id="goods-list">
		<h2>주문내역</h2>
		<table border="1">
			<tr>
				<th>주문날짜</th>
				<th>수량</th>
				<th>주소</th>
				<th>배송상태</th>
				<th>결제방법</th>
				<th>가격</th>
			</tr>
			<c:choose>
				<c:when test="${not empty map.list}">
					<c:forEach begin="0" end="${(fn:length(map.list)-1)}" var="i">
						<c:set var="row" value="${map.list[i] }" />
						<tr>
							<td>${row.order_date }</td>
							<td>${row.order_amount}</td>
							<td>${row.member_addr}</td>
							<td>${row.order_process}</td>
							<td>${row.order_payment}</td>
							<td>${row.order_sum}</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<td colspan="9">주문 내역이 없습니다.</td>
				</c:otherwise>
			</c:choose>

			<c:if test="${(fn:length(map)) ne 0}">
				<tr>
					<td colspan="9" align="center"><c:if
							test="${map.pager.curBlock > 1}">
							<a href="mypage">[처음]</a>
						</c:if> <c:if test="${map.pager.curBlock > 1}">
							<a href="mypage?curPage=${map.pager.prevPage}">[이전]</a>
						</c:if> <c:forEach var="num" begin="${map.pager.blockBegin}"
							end="${map.pager.blockEnd}">
							<c:choose>
								<c:when test="${num == map.pager.curPage}">
									<span style="color: red;">${num}</span>
								</c:when>
								<c:otherwise>
									<a href="mypage?curPage=${num}">${num}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach> <c:if test="${map.pager.curBlock < map.pager.totBlock}">
							<a href="mypage?curPage=${map.pager.nextPage}">>[다음]</a>
						</c:if> <c:if test="${map.pager.curBlock < map.pager.totPage}">
							<a href="mypage?curPage=${map.pager.totPage}">[끝]</a>
						</c:if></td>
				</tr>
			</c:if>
		</table>
	</div>
	&nbsp;
	<hr width="85%">
	<div>
	<table>
		<tr>
		<td><br></td>
		</tr>
	</table>
	</div>
	
	<table class="my">
		<tr>
			<td class="icon">
			<a href="ticketList"><img src="resources/img/myPage/ticket.png"></a>
			
			<a href="mypage3"><img src="resources/img/myPage/update.png"></a></td>
		</tr>
	</table>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>