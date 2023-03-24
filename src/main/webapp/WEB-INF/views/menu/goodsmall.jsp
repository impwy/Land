<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
<title>굿즈몰</title>
<link rel="stylesheet" href="resources/css/goodsmall.css"/>
<%@ include file="../include/goodsmallheader.jsp"%>
</head>
<div class="main">
		<div class="section">
			<h2>굿즈</h2>
			<table id="goods">
			<!-- 컨트롤러 참고, if문 0이면 -->
				<c:if test="${(fn:length(map.list)) eq 0}">
					상품내역이 없습니다.
					</c:if>
					<!-- 상품의 갯수, -1은 배열은 0부터 시작하기때문 -->
					<!-- 이중 for문 x축 -->
					<c:forEach begin="0" end="${(fn:length(map.list) + 3) / 4 - 1}" var="row">
					<tr>
					<!-- 이중 for문 y축 -->
						<c:forEach begin="0" end="3" var="col">
							<c:set var="item" value="${map.list[row * 4 + col]}" />
							<c:if test="${not empty item}">
								<td width="300">
									<div onclick="location.href='goodsInfo?goods_num=${item.goods_num}'" style="cursor: pointer">
										<div><img src="${item.goods_image}" width="200" height="200"></div>
										<div>${item.goods_name}</div>
										<div><fmt:formatNumber value="${item.goods_price}" pattern="#,###,###"/>원</div>
									</div>
								</td>
							</c:if>
						</c:forEach>
					</tr>
					</c:forEach>
			</table>
		</div>
	</div>
	<%@ include file="../include/goodsmallfooter.jsp"%>
</html>
