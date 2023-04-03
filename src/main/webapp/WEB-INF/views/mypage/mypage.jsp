<!-- 굿즈 or 회원정보보기 or 티켓 3선택지 보이는 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <style>
    #goods-list {
  text-align: center;
  margin-top:250px;
}
    
    #goods-list table {
  border-collapse: collapse;
  width: 100%;
}

#goods-list th,
#goods-list td {
  border: 1px solid #ccc;
  padding: 5px;
}

#goods-list tr:hover {
  opacity: 0.8;
}
</style>   
</head>
<body>
<%@ include file="../include/header.jsp" %>
	<div id="goods-list">
	<h2>예매내역</h2>
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
		<c:set var="row" value="${map.list[i] }"/>
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
	
	<table>
		<tr>
			<td>
				<!-- <img src ="resouces/img/"> --> <input type="button"
				value="티켓 예매 내역" onClick="location.href='ticketList'">
			</td>
		</tr>
		<tr>
			<td>
				<!-- <img src ="resouces/img/"> --> <input type="button"
				value="회원 정보 보기" onClick="location.href='mypage3'">
			</td>
		</tr>
	</table>
</body>
</html>