<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<title>Insert title here</title>
<style>
.productLeft {
  float: left;
  margin-right: 20px;
  width: 200px;
}

.productRight {
  margin-left: 220px;
  width: 400px;
}

.p1 {
  font-size: 20px;
  font-weight: bold;
}

input[type="number"] {
  width: 60px;
}

input[type="text"] {
  width: 200px;
}

input[name="nn_searchPost"] {
  margin-top: 10px;
}

input[type="button"] {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin-top: 10px;
  cursor: pointer;
}

input[type="button"]:hover {
  background-color: #3e8e41;
}

hr {
  margin-top: 20px;
  margin-bottom: 20px;
  border: 0;
  border-top: 1px solid #ccc;
}

</style>
</head>
<body>
<form>
					<!-- 상품 이미지를 불러옵니다. -->
	<img class="productLeft" src="${goods.goods_image }">
		<div class="productRight">
					<!-- 상품명을 불러옵니다. -->	
			<p align="left" class="p1" id="goods_name">상품명: ${goods.gvo.goods_name}</p>
			<p align="left">수량: <input type="number" id="order_amount" min="0" maxlength="2"
			 max="99" value="${ goods.vo.order_amount}" /></p><!-- map에 저장해서 session에 저장한 뒤 불러옵니다. -->				
			<p align="left">총 가격:<input type="number" name="order_sum" id="order_sum" value="${goods.vo.order_sum}" readonly/></p>
		<hr>
			<p align="left">연락처<input type="text" id="member_phone" value="${member.member_phone }"></p>
				
				<!-- 우편번호 찾기 라이브러리 -->
				<input type="text" name="sn_member_zipcode" size="10" placeholder="우편번호" value="">
				<input type="button" name="nn_searchPost" onclick="searchPost()" value="우편번호 찾기"><br>
				<input type="text" name="sn_member_faddr"  size="60" placeholder="우편주소" value="">
			<p align="left">상세주소<input type="text" name="sn_member_laddr"></p>
					
					<!-- ajax에서 넘겨준다면 hidden은 필요 없습니다. -->
				<input type="hidden" name="member_id" id="member_id" value="${member.member_id}" />
				<input type="hidden" name="goods_num" id="goods_num" value="${goods.gvo.goods_num}" />
			<p align="left">
				<input type="button" name="buy" id="buy" value="결제하기" />	
			</p>
		</div>
</form>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
$('#buy').click(function(){		
	//아임포트 카카오페이 결제 시작
var IMP = window.IMP; 
var amount = parseInt($("#order_sum").val());
var order_amount = parseInt($("#order_amount").val());
var member_phone = $("#member_phone").val();

/* 우편번호 찾기로 가져온 주소를 전부 더해 addr에 넣습니다. */
var member_addr = $("input[name=sn_member_zipcode]").val()
+$("input[name=sn_member_faddr]").val()
+$("input[name=sn_member_laddr]").val();

IMP.init('imp42522200'); 
IMP.request_pay({
	pg : "kakaopay",  //pg사
    pay_method : 'card', //결제방법
    merchant_uid : 'merchant_' + new Date().getTime(), //결제날짜
    name : '${goods.gvo.goods_name}', //품목이름
    amount : amount, //가격
    buyer_email : '${member.member_email}', //이메일
    buyer_name : '${member.member_name}', //이름
    buyer_tel : member_phone, //전화번호
    buyer_addr : member_addr //주소
}, function(rsp) {
    if ( rsp.success ) { //성공시
    	/* function별로 scope이 달라서 다시 변수명 선언 해주었습니다. */
    	var amount = parseInt($("#order_sum").val());
    	var order_amount = parseInt($("#order_amount").val());
    	var member_phone = $("#member_phone").val();
    	/* 우편번호 찾기로 가져온 주소를 전부 더해 addr에 넣습니다. */
    	var member_addr = $("input[name=sn_member_zipcode]").val()
    	+$("input[name=sn_member_faddr]").val()
    	+$("input[name=sn_member_laddr]").val();
        var msg = '결제가 완료되었습니다.';
      	
        /* ajax 시작 db로 보냅니다 */
        $.ajax({
      		type : "post",
			url : "payment",
			data : {
				"member_id" : '${member.member_id}', /* 이건 EL로 바로 보냅니다. */
				"goods_num" : '${goods.gvo.goods_num}',
				"member_addr" : member_addr, /* js의 var 변수명입니다. */
				"member_phone" : member_phone,
				"order_sum" : amount,
				"order_amount" : order_amount
			},
			success : function(data) {
				 swal("", msg, "success").then(()=>{
					location.href="main"; /* ajax가 성공하면 메인페이지로 보냅니다. */
				 });
			}
      	});
    } else {
        var msg = '결제에 실패하였습니다.';
        rsp.error_msg;
    }
});
});
function searchPost() {
	new daum.Postcode({
		oncomplete : function(data) {
			var fullAddr = '';
			var extraAddr = '';

			if (data.userSelectedType == 'R') {
				fullAddr = data.roadAddress;
			} else {
				fullAddr = data.jibunAddress;
			}
			if (data.userSelectedType == 'R') {
				if (data.bname !== '') {
					extraAddr += data.bname;
				}
				if (data.buildingName !== '') {
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName
							: data.buildingName);
				}
				fullAddr += (extraAddr !== '' ? '(' + extraAddr + ')' : '');
			}
			$("input[name=sn_member_zipcode]").val(data.zonecode);
			console.log($("input[name=sn_member_zipcode]").val());
			// document.getElementById('sn_member_zipcode').value = data.zonecode;
			$("input[name=sn_member_faddr]").val(fullAddr);
			// document.getElementById('sn_member_faddr').value = fullAddr;
			$("input[name=sn_member_laddr]").focus();
			// document.getElementById('sn_member_laddr').focus();
		}
	}).open();
}
</script>
</body>
</html>