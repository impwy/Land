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
  
</head>
<div class="container_map">
<div class="guide-b">
<%@ include file="../include/header.jsp"%>
    <div class="guide-header">
        <h1>오시는길</h1>
    </div>
    <div class="guide-div">
        <h2 class="guide-h2">버츄얼랜드(서울 성동구 행당동 286-5)</h2>
        <hr>
    </div>
  <div id="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.7171946816807!2d127.03206071563345!3d37.56172623216058!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca35bd1308717%3A0x9009d623f5a64d48!2z7ISc7Jq47Yq567OE7IucIOyEseuPmeq1rCDsmZXsi63rpqzroZwgMzE1!5e0!3m2!1sko!2skr!4v1680237180214!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </iframe>
    </div>
  <!-- <script>
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
  </script> -->
</div>
</div>
</html>