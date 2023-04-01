<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-03-31
  Time: 오후 3:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>GoodsList</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/f84cdf215e.js" crossorigin="anonymous"></script>
</head>
<body>
<div id="ticket-list">
	<h3>예매내역</h3>
		<table border="1">
		<tr>
			<th>주문날짜</th>
			<th>수량</th>
			<th>가격</th>
		</tr>
		<c:choose>
		<c:when test="${not empty map.list}">
		<c:forEach begin="0" end="${(fn:length(map.list)-1)}" var="i">
		<c:set var="row" value="${map.list[i] }"/>
		<tr>
			<td>${row.order_date }</td>
			<td>${row.order_amount}</td>
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
				<td colspan="9" align="center">
					<c:if test="${map.pager.curBlock > 1}">
						<a href="mypage2">[처음]</a>
					</c:if> 
					<c:if test="${map.pager.curBlock > 1}">
						<a href="mypage2?curPage=${map.pager.prevPage}">[이전]</a>
					</c:if> 
					<c:forEach var="num" begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}">
						<c:choose>
							<c:when test="${num == map.pager.curPage}">
								<span style="color: red;">${num}</span>
							</c:when>
							<c:otherwise>
								<a href="mypage2?curPage=${num}">${num}</a>
							</c:otherwise>
						</c:choose>	
					</c:forEach> 
					<c:if test="${map.pager.curBlock < map.pager.totBlock}">
						<a href="mypage2?curPage=${map.pager.nextPage}">>[다음]</a>
					</c:if>
					<c:if test="${map.pager.curBlock < map.pager.totPage}">
						<a href="mypage2?curPage=${map.pager.totPage}">[끝]</a>
					</c:if>
				</td>
			</tr>
		</c:if>
		</table>
</div>

</body>
</html>
