<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>굿즈몰</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="resources/css/goodsmaLL.css" />

</head>
<body>
<%@ include file="../include/goodsmallheader.jsp"%>

	<h1>굿즈</h1>
	<table id="product">
		<!-- fn 태그, map에 list가 0이면 상품없음,컨트롤러 참고, if문 0이면 -->
		<c:if test="${(fn:length(map.list)) eq 0}">
					상품내역이 없습니다.
					</c:if>
		<!-- 상품의 갯수, -1은 배열은 0부터 시작하기때문 -->
		<!-- 이중 for문 x축 -->
		<c:forEach begin="0" end="${(fn:length(map.list) + 3) / 4 - 1}"
			var="row">
			<tr>
				<!-- 이중 for문 y축 -->
				<c:forEach begin="0" end="3" var="col">
					<c:set var="item" value="${map.list[row * 4 + col]}" />
					<c:if test="${not empty item}">
						<td width="300">
							<!-- 온클릭하면 지정해준 해당 상품번호의 상품 상세 페이지로 이동 -->
							<div
								onclick="location.href='goodsInfo?goods_num=${item.goods_num}'"
								style="cursor: pointer">
								<!-- 이미지 -->
								<div>
									<img src="${item.goods_image}" width="200" height="200">
								</div>
								<div>${item.goods_name}</div>
								<div>
									<fmt:formatNumber value="${item.goods_price}"
										pattern="#,###,###" />
									원
								</div>
							</div>
						</td>
					</c:if>
				</c:forEach>
		</c:forEach>
		<!-- 컨트롤러참고, pager참고, map length가 0이 아니면  -->
		<c:if test="${(fn:length(map)) ne 0}">
			<tr>
				<td colspan="4" align="center">
				<!-- 컨트롤러에 리퀘스트파람 디폴트값을 1로 지정해줫음, -->
				<c:if test="${map.pager.curBlock > 1}">
						<a href="goodsmall">[처음]</a>
					</c:if> 
					<!-- 우리는 js로 list function(카테고리)을 안쓰기 때문에 온클릭 삭제, href에  get 방식으로 
					[이전]일떄,굿즈몰의 현재페이지에서 이전 페이지를 링크걸어준다-->
					<c:if test="${map.pager.curBlock > 1}">
						<a href="goodsmall?curPage=${map.pager.prevPage}">[이전]</a>
					</c:if> 
					<!-- 여기는 pager의 블록 변수 주석 참고 -->
					<c:forEach var="num" begin="${map.pager.blockBegin}"
						end="${map.pager.blockEnd}">
						<c:choose>
						<!-- 현재페이지 페이지숫자 빨강 -->
							<c:when test="${num == map.pager.curPage}">
								<span style="color: red;">${num}</span>
							</c:when>
							
							<!-- 페이지 수 넘버링 -->
							<c:otherwise>
								<a href="goodsmall?curPage=${num}">${num}</a>
							</c:otherwise>
						</c:choose>
					<!-- pager참고, 블록의  if문에 따라 다음페이지로 링크 걸어줌 -->	
					</c:forEach> <c:if test="${map.pager.curBlock < map.pager.totBlock}">
						<a href="goodsmall?curPage=${map.pager.nextPage}">>[다음]</a>
					</c:if> 
					<!-- pager참고, 블록의  if문에 따라 끝페이지로 링크 걸어줌 -->
					<c:if test="${map.pager.curBlock < map.pager.totPage}">
						<a href="goodsmall?curPage=${map.pager.totPage}">[끝]</a>
					</c:if></td>
			</tr>
		</c:if>
	</table>
<%@ include file="../include/goodsmallfooter.jsp"%>
</body>
</html>

