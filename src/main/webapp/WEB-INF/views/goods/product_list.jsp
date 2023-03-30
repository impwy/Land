<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
<html lang="ko">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
		<title>관리자 페이지</title>
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	</head>
	<body>
		
		<section>
			<h2 align="center">상품관리 리스트</h2>
			<form name="f3rm" id="f3rm">
				<table align="center" border="1">
					<tr>
						
						<th>상품번호</th>
						<th>상품가격</th>
						<th>상품이름</th>
						<th>이미지경로</th>
						<th>상품수량</th>
					</tr>
					<c:forEach begin="0" end="${(fn:length(map.list))}" var="i">
						<c:set var="product" value="${map.list[i]}" />
						<c:if test="${not empty product}">
							<tr>
								<td>${product.goods_num}</td>
								<td>${product.goods_price}</td>
								<td>${product.goods_name}</td>
								<td><img src="${product.goods_image}" width="100" height="100"></td>
								<td>${product.goods_amount}</td>
							</tr>
						</c:if>
					</c:forEach>
				<c:if test="${(fn:length(map)) ne 0}">
			<tr>
				<td colspan="4" align="center">
					<!-- 컨트롤러에 리퀘스트파람 디폴트값을 1로 지정해줫음, --> <c:if
						test="${map.pager.curBlock > 1}">
						<a href="product_list">[처음]</a>
					</c:if> <!-- 우리는 js로 list function(카테고리)을 안쓰기 때문에 온클릭 삭제, href에  get 방식으로 
					[이전]일떄,굿즈몰의 현재페이지에서 이전 페이지를 링크걸어준다--> <c:if
						test="${map.pager.curBlock > 1}">
						<a href="product_list?curPage=${map.pager.prevPage}">[이전]</a>
					</c:if> <!-- 여기는 pager의 블록 변수 주석 참고 --> <c:forEach var="num"
						begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}">
						<c:choose>
							<c:when test="${num == map.pager.curPage}">
								<span style="color: red;">${num}</span>
							</c:when>
							<c:otherwise>
								<a href="product_list?curPage=${num}">${num}</a>
							</c:otherwise>
						</c:choose>
						<!-- pager참고, 블록의  if문에 따라 다음페이지로 링크 걸어줌 -->
					</c:forEach> <c:if test="${map.pager.curBlock < map.pager.totBlock}">
						<a href="product_list?curPage=${map.pager.nextPage}">>[다음]</a>
					</c:if> <!-- pager참고, 블록의  if문에 따라 끝페이지로 링크 걸어줌 --> <c:if
						test="${map.pager.curBlock < map.pager.totPage}">
						<a href="product_list?curPage=${map.pager.totPage}">[끝]</a>
					</c:if>
				</td>
			</tr>
		</c:if>
			</table>
		</form>
		</section>
	
	</body>
</html>