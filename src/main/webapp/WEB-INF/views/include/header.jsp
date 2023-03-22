<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/f84cdf215e.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="resources/css/header.css" />
</head>
<header class="header">
<div class="mobile">
	<i class="fa fa-bars"></i>
</div>
<div id="login">
	<c:if test="${empty member }">
		<a href="login"><i class="fa-solid fa-right-to-bracket"></i></a>
	</c:if>
	
	<c:if test="${not empty member }">
		
		<c:if test="${member.member_id != admin }">
		<a href="#">장바구니</a>
		<a href="#">개인정보</a>
		<a href="#">굿즈몰</a>
		<a href="ticket">티켓예매</a>		
		<a href="logout" class="logout">Sign Out</a>
		</c:if>
		
		<c:if test="${member.member_id == admin }">
		<a href="#">장바구니</a>
		<a href="#">개인정보</a>
		<a href="#">굿즈몰</a>
		<a href="ticket">티켓예매</a>	
		<a href="ticket">굿즈등록</a>	
		<a href="logout" class="logout">Sign Out</a>
	</c:if>
	
	</c:if>
	
</div>

<div class="six">
<a href="main"><img
		src="http://t1.daumcdn.net/friends/prod/editor/dc8b3d02-a15a-4afa-a88b-989cf2a50476.jpg"
		alt="카카오라이언" width="100" height="50" border="0" /></a>
	<h1>virtualland</h1>
</div>

<nav>
<ul class="n-list">
	<li><a href="#">이용가이드</a>
		<ul class="drop-down">
			<li><a href="time">운영시간</a>
				<hr class="dashed"></li>
			<li><a href="getBoardList">공지사항</a>
				<hr class="dashed"></li>
			<li><a href="guide">오시는길</a>
				<hr class="dashed"></li>
			<li><a href="guidemap">가이드맵</a></li>
		</ul></li>
	<li><a href="#">요금/우대혜택</a>
		<ul class="drop-down">
			<li><a href="price">가격정보</a>
				<hr class="dashed"></li>
			<li><a href="discount">할인정보</a>
				<hr class="dashed"></li>
		</ul></li>
	<li><a href="#">즐길거리</a>
		<ul class="drop-down">
			<li><a href="attraction">어트랙션</a>
				<hr class="dashed"></li>
			<li><a href="restaurant">레스토랑</a>
				<hr class="dashed"></li>
			<li><a href="convenients">주변환경</a>
				<hr class="dashed"></li>
		</ul></li>
	<li><a href="#">굿즈</a>
		<ul class="drop-down">
			<li><a href="#">굿즈몰</a>
				<hr class="dashed"></li>
		</ul></li>
	<li><a href="#">고객센터</a>
		<ul class="drop-down">
			<li><a href="FAQ">FAQ</a>
				<hr class="dashed"></li>
		</ul></li>
</ul>
</nav> </header>
</html>