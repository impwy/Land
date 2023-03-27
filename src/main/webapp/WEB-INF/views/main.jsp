<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script src="https://kit.fontawesome.com/f84cdf215e.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="resources/css/main.css" />
<title>Document</title>
</head>
<body>
	<%@ include file="include/header.jsp"%>

	<main id="cbody"> <!-- main swiper -->
	<div class="swiper-container">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<a href="#"> <img
					src="https://adventure.lotteworld.com/image/2023/3/202303091040496940.jpg"></a>
			</div>
			<div class="swiper-slide">
				<a href="#"> <img
					src="https://adventure.lotteworld.com/image/2023/3/202303080555024010.jpg"></a>
			</div>
			<div class="swiper-slide">
				<a href="#"> <img
					src="https://adventure.lotteworld.com/image/2023/2/202302270511334840.jpg"></a>
			</div>
			<div class="swiper-slide">
				<a href="#"> <img
					src="https://adventure.lotteworld.com/image/2023/3/202303021002369080.jpg"></a>
			</div>
			<div class="swiper-slide">
				<a href="#"> <img
					src="https://adventure.lotteworld.com/image/2023/2/202302271131448550.jpg"></a>
			</div>
		</div>

		<div class="swiper-button-next"></div>
		<div class="swiper-button-prev"></div>
		<div class="swiper-pagination"></div>
		<div class="btn-wrapper">
			<i class="fa-solid fa-play"></i> <i class="fa-solid fa-pause"></i>
		</div>
	</div>

	<!-- swiper script -->
	 <script>
		$('document').ready(function() {
	var swiper = new Swiper(".swiper-container",
					{
		slidesPerView : 'auto',
		spaceBetween : 30, /*사진 간 간격*/
		autoplay : true, /*자동실행*/
		loop : true, /*반복*/
		pagination : { /*밑에 이동 버튼*/
		el : ".swiper-pagination",
		clickable : true,
		},
		navigation : { /*양쪽 이동 버튼 설정*/
		nextEl : ".swiper-button-next",
		prevEl : ".swiper-button-prev",
		},
		on : {
		init : function() {
		$('.btn-wrapper').style.right = $('.swiper-pagination').offsetWidth + 20 + 'px';
		$('.fa-play').click(function() {
		swiper.autoplay.start();
		});
		$(".fa-pause").on("click",function() 	/*swiper 자동실행 정지*/
				{swiper.autoplay.stop();
				});}}});
						

						});
	</script> 
	<!-- 운영시간 -->
	<div class="mainTodayTime">
		<div class="time">
			<a href="#"> <i class="fa-regular fa-clock"></i>
				<p class="tit">오늘의 파크운영시간</p>
				<p class="txt">10:00 - 21:00</p>
			</a>
		</div>
		<hr>
	</div>

	<!-- 기구 소개 -->
	<div class="attraction-introduce">
		<div class="main-title">
			<h1>기구소개</h1>
		</div>

		<div class="attraction-container">
			<div class="attraction-top">
				<div class="attraction-item">
					<a href=""> <img src="resources/img/main/a.jpg">
						<div class="attraction-context">롤러코스터</div></a>
				</div>
				<div class="attraction-item">
					<a href=""> <img src="resources/img/main/a.jpg">
						<div class="attraction-context">티익스프레스</div></a>
				</div>
				<div class="attraction-item">
					<a href=""> <img src="resources/img/main/a.jpg">
						<div class="attraction-context">회전목마</div></a>
				</div>
			</div>
			<div class="attraction-bottom">
				<div class="attraction-item">
					<a href=""> <img src="resources/img/main/a.jpg">
						<div class="attraction-context">자이로드롭</div></a>
				</div>
				<div class="attraction-item">
					<a href=""> <img src="resources/img/main/a.jpg">
						<div class="attraction-context">범퍼카</div></a>
				</div>
				<div class="attraction-item">
					<a href=""> <img src="resources/img/main/a.jpg">
						<div class="attraction-context">혜성특급</div></a>
				</div>
			</div>
			<div class="attraction-btn">
				<a href="#"> <span>기구 보러 가기</span>
				</a>
			</div>
		</div>


	</div>

	<!-- 굿즈소개 -->
	<div class="goods-introduce">
		<div class="main-title">
			<h1>
				<span>굿즈보고가세요</span>
			</h1>
			<span>굿즈사세요</span>
		</div>
		<div class="goods-container">
			<div class="goods">
				<a href="#"> <img src="resources/img/main/229062_85158_058.jpg">
					<div class="goods-text">
						<div class="goods-text-title">뱃지</div>
						<div class="goods-text-serve">싸다</div>
					</div></a>
			</div>
			<div class="goods">
				<a href="#"> <img src="resources/img/main/229062_85158_058.jpg">
					<div class="goods-text">
						<div class="goods-text-title">뱃지</div>
						<div class="goods-text-serve">싸다</div>
					</div>
				</a>
			</div>
			<div class="goods">
				<a href="#"> <img src="resources/img/main/229062_85158_058.jpg">
					<div class="goods-text">
						<div class="goods-text-title">뱃지</div>
						<div class="goods-text-serve">싸다</div>
					</div>
				</a>
			</div>
			<div class="goods">
				<a href="#"> <img src="resources/img/main/229062_85158_058.jpg">
					<div class="goods-text">
						<div class="goods-text-title">뱃지</div>
						<div class="goods-text-serve">싸다</div>
					</div>
				</a>
			</div>
			<div class="goods">
				<a href="#"> <img src="resources/img/main/229062_85158_058.jpg">
					<div class="goods-text">
						<div class="goods-text-title">뱃지</div>
						<div class="goods-text-serve">싸다</div>
					</div>
				</a>
			</div>
		</div>

		<div class="goods-btn">
			<a href="#"> <span>상점가기</span>
			</a>
		</div>
	</div>



	</main>
	<%@ include file="include/footer.jsp"%>
</body>
</html>