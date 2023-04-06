<%--
  Created by IntelliJ IDEA.
  User: zero0515
  Date: 2023/03/16
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<html>
<head>
  <title>어트랙션</title>
  <link rel="stylesheet" href="resources/css/attraction.css">
</head>
<body class="attraction">
<%@ include file="../../include/header.jsp"%>
<div class="head">
  <h1>어트랙션</h1>
  <p>흥미롭고 다채로운 놀이기구를 타고 상상의 나래를 펼치세요! </p>
</div>
<div class="grid">
  <div class="box">
    <a href="tExpress">
      <img src="resources/img/enjoy/attraction/images/T-exp.jpeg" alt="image1">
      <div class="upperText">유러피안 어드벤처</div>
      <div class="textbox">
        <p class="textbox">T-익스프레스</p>
        <div class="videoWrapper">
        </div>
      </div>
    </a>
  </div>
  <div class="box">
    <a href="#">
      <img src="resources/img/enjoy/attraction/images/B-dragon.jpeg" alt="image1">
      <div class="upperText">매직랜드</div>
      <div class="textbox">
        <p>비룡열차</p>
      </div>
    </a>
  </div>
  <div class="box">
    <a href="#">
      <img src="resources/img/enjoy/attraction/images/double-rockspin.jpeg" alt="image1">
      <div class="upperText">아메리칸 어드벤처</div>
      <div class="textbox">
        <p>더블락스핀</p>
        <div class="videoWrapper">
          <video src="resources/img/enjoy/attraction/images/doublerockspin.mp4" loop muted autoplay></video>
        </div>
      </div>
    </a>
  </div>
  <div class="box">
    <a href="#">
      <img src="resources/img/enjoy/attraction/images/amazone-express.jpeg" alt="image1">
      <div class="upperText">주토피아</div>
      <div class="textbox">
        <p>아마존익스프레스</p>
      </div>
    </a>
  </div>
  <div class="box">
    <a href="#">
      <img src="resources/img/enjoy/attraction/images/rabtor-ranger.jpeg" alt="image1">
      <div class="upperText">유러피안 어드벤처</div>
      <div class="textbox">
        <p>랩터레인저</p>
      </div>
    </a>
  </div>
  <div class="box">
    <a href="#">
      <img src="resources/img/enjoy/attraction/images/bumpercar.jpeg" alt="image1">
      <div class="upperText">매직랜드</div>
      <div class="textbox">
        <p>범퍼카</p>
      </div>
    </a>
  </div>
  <div class="box">
    <a href="#">
      <img src="resources/img/enjoy/attraction/images/columbus.jpeg" alt="image1">
      <div class="upperText">아메리칸 어드벤처</div>
      <div class="textbox">
        <p>콜럼버스대탐험</p>
      </div>
    </a>
  </div>
  <div class="box">
    <a href="#">
      <img src="resources/img/enjoy/attraction/images/safari.jpeg" alt="image1">
      <div class="upperText">주토피아</div>
      <div class="textbox">
        <p>사파리월드</p>
      </div>
    </a>
  </div>

</div>
<%@ include file="../../include/footer.jsp"%>
</body>
</html>
