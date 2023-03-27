<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="resources/css/productpage.css" />
<title>상품 상세 페이지</title>
</head>
<body>
<%@ include file="../include/header.jsp"%>
		<div class="productdetail">
			<form>
				<img class="productLeft" src="${goods.goods_image }">
				<div class="productRight">
					<p align="left" class="p1" id="goods_name">상품명: ${goods.goods_name}</p>
					<p align="left" class="p2">가격: <fmt:formatNumber value="${goods.goods_price}" pattern="#,###"/>원</p>
					<p align="left">상품코드: ${goods.goods_num}</p>
					<p align="left">수량: <input type="number" id="basket_amount" min="0" maxlength="2" max="99" value="0" /></p>				
					<p align="left">총 가격:<input type="number" name="basket_sum" id="basket_sum" value="0" readonly/></p>
					
					<p align="left">본 상품은 서울배송만 가능합니다.</p><br><br><br>
					<input type="hidden" name="goods_image" id="goods_image" value="${goods.goods_image}" />
					<input type="hidden" name="member_id" id="member_id" value="${member.member_id}" />
					<input type="hidden" name="goods_num" id="goods_num" value="${goods.goods_num}" />
					
					<p align="left">
						<input type="button" name="buy" id="buy"  value="구매하기" />&nbsp;&nbsp;&nbsp;
						<input type="button" name="cart" id="cart" onclick="insertCart()" value="장바구니" />
						<input type="hidden" name="hiddenbtn" id="hiddenbtn" value="prdpage" />
					</p>
				</div>
			</form>
		</div>
		<div class="danger">
			<table style="width: 700px; text-align: left;">
				<tr>
					<th>주의 사항</th>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;13시 이전 결제 완료시 당일 배송</td>
				</tr>
				<tr>
					<td>&nbsp;&nbsp;반품 및 교환 요청은 배송비 고객 부담</td>
				</tr>
			</table>
		</div>
<script type="text/javascript" src="resources/js/cart.js" charset="UTF-8"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
		//수량이 늘어날 때 마다 가격을 늘려준다.
$(document).ready(function() {
	  
	  var basketAmountInput = $('#basket_amount'); //수량
	  var basketSumInput = $('#basket_sum'); //총 가격

	  basketAmountInput.on('input', function() {  
	    var basketAmount = parseInt(basketAmountInput.val())*${goods.goods_price};
	    basketSumInput.val(basketAmount);
	  });
});

$('#buy').click(function(){		
	//아임포트 카카오페이 결제 시작
var IMP = window.IMP; 
var amount = parseInt($("#basket_sum").val());
var order_amount = parseInt($("#basket_amount").val());

IMP.init('imp42522200'); 
IMP.request_pay({
	pg : "kakaopay",  //pg사
    pay_method : 'card', //결제방법
    merchant_uid : 'merchant_' + new Date().getTime(), //결제날짜
    name : '${goods.goods_name}', //품목이름
    amount : amount, //수량
    buyer_email : '${member.member_email}', //이메일
    buyer_name : '${member.member_name}', //이름
    buyer_tel : '${member.member_phone}', //전화번호
    buyer_addr : '${member.member_addr}', //주소
}, function(rsp) {
    if ( rsp.success ) { //성공시
    	var amount = parseInt($("#basket_sum").val());
    	var order_amount = parseInt($("#basket_amount").val());
        var msg = '결제가 완료되었습니다.';
      	$.ajax({
      		type : "post",
			url : "payment",
			data : {
				"member_id" : '${member.member_id}',
				"goods_num" : '${goods.goods_num}',
				"member_addr": '${member.member_addr}',
				"member_phone" : '${member.member_phone}',
				"order_sum":amount,
				"order_amount" : order_amount
			},
			success : function(data) {
				 swal("", msg, "success");
			}
      	});
    } else {
        var msg = '결제에 실패하였습니다.';
        rsp.error_msg;
    }
});
});


</script>
<%@ include file="../include/footer.jsp"%>
</body>
</html>