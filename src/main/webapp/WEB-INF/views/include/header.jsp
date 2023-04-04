<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap"
	rel="stylesheet" />

<script src="https://kit.fontawesome.com/f84cdf215e.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<link rel="stylesheet" href="resources/css/header.css" />
</head>
<header class="header">
<div class="mobile">
	<i class="fa fa-bars"></i>
</div>
<div id="login">


	<c:if test="${empty member }"> <!-- 멤버가아닐경우뜨는 페이지 -->
		<a href="goodsmall" title="굿즈몰"><i class="fa-brands fa-shopify"></i></a>
		<a id="ticketing" title="티켓예매"><i class="fa-solid fa-ticket fa-beat"></i></a>
		<a href="login" title="로그인"><i class="fa-solid fa-right-to-bracket"></i></a>
		<input type="hidden" id="member_id" value="${member.member_id}"/>
	</c:if>
	<c:if test="${not empty member }"><!-- 멤버일경우뜨는페이지 -->
		<c:if test="${member.member_id ne 'admin' }"> <!-- 멤버가 관리자가 아닐경우 -->
		<a href="basketlist" title="장바구니"><i class="fa-solid fa-cart-shopping" ></i></a>
		<a href="mypage" title="개인정보"><i class="fa-solid fa-user"></i></a>
		<a href="goodsmall" title="굿즈몰"><i class="fa-brands fa-shopify"></i></a>
		<a href="ticket" title="티켓예매"><i class="fa-solid fa-ticket fa-beat"></i></a>		
		<a href="#" class="logout" title="로그아웃"><i class="fa-solid fa-right-from-bracket"></i></a>
		</c:if>
		
		<c:if test="${member.member_id eq 'admin' }"> <!-- 멤버가 관리자일 경우 -->
		<a href="basketlist" title="장바구니"><i class="fa-solid fa-cart-shopping"></i></a>
		<a href="mypage" title="개인정보">개인정보</a>
		<a href="goodsmall" title="굿즈몰"><i class="fa-brands fa-shopify"></i></a>
		<a href="insert">굿즈관리</a>	
		<a href="memberpage"><i class="fa-solid fa-users"></i></a>
		<a href="#" class="logout" title="로그아웃"><i class="fa-solid fa-right-from-bracket"></i></a>
	</c:if>
</c:if>
</div>

<div class="six">
	<a href="main"><h1>virtualland</h1></a>
	
</div>
<nav>
<ul class="n-list">
	<li><a href="time">이용가이드</a>
		<ul class="drop-down">
			<li><a href="time">운영시간</a>
				<hr class="dashed"></li>
			<li><a href="page">공지사항</a>
				<hr class="dashed"></li>
			<li><a href="guide">오시는길</a>
				<hr class="dashed"></li>
			<li><a href="guidemap">가이드맵</a></li>
		</ul></li>
	<li><a href="price">요금/우대혜택</a>
		<ul class="drop-down">
			<li><a href="price">가격정보</a>
				<hr class="dashed"></li>
			<li><a href="discount">할인정보</a>
				<hr class="dashed"></li>
		</ul></li>
	<li><a href="attraction">즐길거리</a>
		<ul class="drop-down">
			<li><a href="attraction">어트랙션</a>
				<hr class="dashed"></li>
			<li><a href="restaurant">레스토랑</a>
				<hr class="dashed"></li>
			<li><a href="convenients">주변환경</a>
				<hr class="dashed"></li>
		</ul></li>
	<li><a href="goodsmall">굿즈</a>
		<ul class="drop-down">
			<li><a href="goodsmall">굿즈몰</a>
				<hr class="dashed"></li>
		</ul></li>
	<li><a href="FAQ">고객센터</a>
		<ul class="drop-down">
			<li><a href="FAQ">FAQ</a>
				<hr class="dashed"></li>

		</ul></li>
</ul>
</nav> </header>
<script src="resources/js/header.js"></script>
</html>