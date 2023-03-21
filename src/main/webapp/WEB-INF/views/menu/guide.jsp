<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
 <link rel="stylesheet" href="resources/css/guide.css" />
  <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <style>
    #map {
      height: 500px;
      width: 1200px;
      position: relative;
      up:40px;
      left: 350px;
    }
  </style>
</head>
<div class="guide-b">
<%@ include file="../include/header.jsp"%>
    <div class="guide-header">
        <h1>오시는길</h1>
    </div>
    <div class="guide-div">
        <h2 class="guide-h2">오시는길</h2>
        <hr>
        <p class="guide-p">ㅋㅋㅋ</p>
    </div>
  <div id="map"></div>
  <script>
    // Create the map container
    var myMap = L.map('map').setView([51.505, -0.09], 13);

    // Add the map tiles
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: 'Map data © <a href="https://openstreetmap.org">OpenStreetMap</a> contributors',
      maxZoom: 50
    }).addTo(myMap);

    // Add a marker
    var marker = L.marker([51.5, -0.09]).addTo(myMap);

    // Add interactivity
    marker.bindPopup("<b>현재위치</b>").openPopup();
  </script>
</div>
</html>