<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
 
<html>
  <head>
    <meta charset="utf-8">
   	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <script src="https://kit.fontawesome.com/f84cdf215e.js" crossorigin="anonymous"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/prpper.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="resources/css/FAQ.css"/>
    <link href="resoutces/js/FAQ.js">
    
   	
    <title>FAQ</title>
   
  </head>
 
  <body>
   <%@ include file="../include/header.jsp"%>
   <div class ="logo"><img src="resources/img/FAQ/FAQ.png"></div>
   
    <hr class="between">
    <!-- 첫 번째 Modal을 여는 클래스 -->
    <h1 class="btn">굿즈를 사고 기구를 타고 싶은데 보관할만한 곳이 있나요?</h1>
 
    <!-- 첫 번째 Modal -->
    <div class="modal">
 
      <!-- 첫 번째 Modal의 내용 -->
      <div class="modal-content">
        <span class="close">&times;</span>                         
        <p class="tc">기구마다 타기전에 물품 보관함이 있으므로 물품 보관함을 이용해 주시면 됩니다.</p>
      </div>
    </div>
 
    <hr class="between">
    <!-- 두 번째 Modal을 여는 클래스 -->
    <h1 class="btn">영유아, 국가유공자, 장애인 등 증빙 서류를 지참하지 못했는데 요금 할인이 가능한가요?</h1>
 
    <!-- 두 번째 Modal -->
    <div class="modal">
 
      <!-- 두 번째 Modal의 내용 -->
      <div class="modal-content">
        <span class="close">&times;</span>
        <p><span class="tc" >원칙적으로 영유아, 국가유공자, 장애인 등 요금할인은</span><br>
            <span class="tc">증빙서류를 기반으로 하기에 미지참시 할인은 받으실수 없습니다.</span>
        </p>
      </div>
    </div>
 
    <hr class="between">
    <!-- 세 번째 Modal을 여는 클래스 -->
    <h1 class="btn">어드벤처를 나갔다가 다시 들어올수 있나요?</h1>
 
    <!-- 세 번째 Modal -->
    <div class="modal">
 
      <!-- 세 번째 Modal의 내용 -->
      <div class="modal-content">
        <span class="close">&times;</span>
        <p class="tc">버추얼 랜드 어드벤처에서는 파크 입장 후 퇴장하시면 원칙적으로 재입장이 불가능합니다.</p>
      </div>
    </div>

    <hr class="between">
    <!-- 네 번째 Modal을 여는 클래스 -->
    <h1 class="btn">비,눈 같은 기상악화 시에도 운영 하나요?</h1>
 
    <!-- 네 번째 Modal -->
    <div class="modal">
 
      <!-- 네 번째 Modal의 내용 -->
      <div class="modal-content">
        <span class="close">&times;</span>
        <p><span class="tc">네 저희 버추얼랜드 어드벤처는 365일 연중 무휴로 되고 있으며</span><br>
            <span class="tc"> 어드벤처는 천정이 유리돔으로 되어있어 날씨와 관계없이 즐길수 있습니다.</span><br>
            <span class="tc">단, 야외에 있는 어드벤처는 이용이 어려우실 수 있으므로 주의해세요</span></p>
      </div>
    </div>
    
    <hr class="between">
    <!-- 다섯 번째 Modal을 여는 클래스 -->
    <h1 class="btn">버추얼랜드를 찾아가려면 어떻게 해야하나요?</h1>
 
    <!-- 다섯 번째 Modal -->
    <div class="modal">
 
      <!-- 다섯 번째 Modal의 내용 -->
      <div class="modal-content">
        <span class="close">&times;</span>
        <p><span class="tc">대중교통을 이용하시는것이 가장 편리하십니다.</span><br>
            <span class="tc">2호선,5호선,수인분당선에 있는 왕십리역에 내리셔서 11번 출구로 나오시면됩니다.</span><br>
            <span class="tc">또한 자동차로 오시는분들은 1층에 주차타워가 있으므로 주차타워에 주차하시고 들어오시면됩니다.</span>
        </p>
      </div>
    </div>
    
    <hr class="between">
    <!-- 여섯 번째 Modal을 여는 클래스 -->
    <h1 class="btn">버추얼랜드에서 사용 가능한 상품권 종류는 어떤것이 있나요?</h1>
 
    <!-- 여섯 번째 Modal -->
    <div class="modal">
 
      <!-- 여섯 번째 Modal의 내용 -->
      <div class="modal-content">
        <span class="close">&times;</span>
        <p><span class="tc">저희 버추얼 랜드에서 쓸수 있는 상품권 종류는 총 3가지입니다.</span><br>
            <span class="tc">① 신시계 상품권</span><br>
            <span class="tc">② 국민관광 상품권</span><br>
            <span class="tc">③ 온누리 상품권</span><br>
            <span class="tc">이 상품권들을 사용하실 수 있습니다.</span><br>
            <span class="tc">※상품권 사용시 티켓은 현장구매를 하셔야 합니다.</span></p>
      </div>
    </div>

    <hr class="between">
    <!-- 일곱 번째 Modal을 여는 클래스 -->
    <h1 class="btn">개명에 따른 이름변경을 하려면 어떻게 해야하죠?</h1>
 
    <!-- 여섯 번째 Modal -->
    <div class="modal">
 
      <!-- 여섯 번째 Modal의 내용 -->
      <div class="modal-content">
        <span class="close">&times;</span>
        <p><span class="tc">버추얼랜드 어드벤처 회원정보는 안전한 보호를 위해 LAND에서 관리하고있습니다</span><br>
            <span class="tc">개명 신청으로 이름이 변경되었을 경우 LAND고객센터(7270-6525)로 연락주시면 정보 변경이 가능합니다</span>
        </p>
      </div>
    </div>
    <hr class="between">

    <script src="resources/js/FAQ.js">
    /*modal.js */
    </script>
    <h3>다른 문의가 있으시면 VirtualLand@VirtualLandbiz.com로 메일 남겨주시면<br>
        1주일 이내로 답변 드리겠습니다.</h3>
 
  <%@ include file="../include/footer.jsp"%>
  
  </body>
</html>