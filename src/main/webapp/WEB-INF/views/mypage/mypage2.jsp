<!-- 굿즈 구매 내역 확인 페이지  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="resources/css/mypage.css"/>
<title>My page</title>
</head>
<body>
<%@ include file="../include/header.jsp"%>
		<!-- <form action=""> -->
	<div align="center">
		<h1 class="my">MY PAGE</h1>
		<table class="">
			<tr>
			<td width="300">
			<b style="color: purple;">${member.member_id }</b>님의 주문내역입니다.
			</td>
			<td width="350" align="left">회원가입일 :${member.member_date }</td>
			<td width="300">
			총 주문 갯수 : <b style=" color: blue;">${list.count }</b>
			</td>
			</tr>
			</table>
			</div>
			<hr width="60%">
			<div>
			<table cellpadding="0" cellspacing="0" align="center" width="950">
			<tr bgcolor="" align="center">
				<td>번호</td> 
				<td>주문일자</td>
				<td>주소</td>
				<td>배송 여부</td>
				<td>가격</td>
			</tr>
			<!-- 마이페이지 주문내역-->
			<c:forEach begin="0" end="${(fn:length(map.list)-1)}" var="i";>
			<c:set var="row" value="${list.list[i]}"/>
			<c:choose>
				<!-- 검색 결과가 있을때 -->
				<c:when test="${not empty row }">
					<tr bgcolor="" height="50">
					<td align="center">${row.goods_num }</td>
					<td align="center">${row.order_date }</td>
					<td align="center">${row.member_addr }</td>
					<td align="center">${row.order_process }</td>
					<td <align></align>="center"><fmt:formatNumber value="${row.order_payment}" pattern="#,###"/>원</td>
					</tr>
			</c:when>
			<!-- 검색결과가 없을 때 -->
				<c:when test="${map.count == 0 }">
					<tr style="text-align:center;">
					<td colspan="5"><b>주문 내역이 없습니다.</b></td>
					</tr>
				</c:when>
			</c:choose>
			</c:forEach>
			</table>
			</div>	
<!-- 	</form> -->
		
      <%@ include file="../include/footer.jsp"%>
</body>
</html>