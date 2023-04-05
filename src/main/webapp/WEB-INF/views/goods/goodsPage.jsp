<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
					<p align="left">수량: <input type="number" id="basket_amount" min="0" maxlength="2" max="99" value="1" /></p>				
					<p align="left">총 가격:<input type="number" name="basket_sum" id="basket_sum" value="${goods.goods_price}" readonly/></p>
					
					<p align="left">본 상품은 서울배송만 가능합니다.</p><br><br><br>
					<input type="hidden" name="goods_image" id="goods_image" value="${goods.goods_image}" />
					<input type="hidden" name="member_id" id="member_id" value="${member.member_id}" />
					<input type="hidden" name="goods_num" id="goods_num" value="${goods.goods_num}" />
					<input type="hidden" name="goods_name" id="goods_names" value="${goods.goods_name}" />
					
					<p align="left">
						<input type="button" name="buy" id="buy" onclick="buyGoods()"  value="구매하기" />&nbsp;&nbsp;&nbsp;
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
		
function buyGoods(){
	var basket_amount = parseInt($("#basket_amount").val());
	var basket_sum = $("#basket_sum").val();
	if(basket_amount == 0 ){
		alert("수량을 선택해 주세요");
	}else{
		var check = confirm("주문 하시겠습니까?");
		if(check){
		$.ajax({
			type : "post",
			url : 'goodsPayment',
			data : {
			"goods_name" : '${goods.goods_name}',
			"order_amount" : basket_amount,
			"order_sum" : basket_sum,
			"member_id" : '${member.member_id}',
			"goods_num" : '${goods.goods_num}',
			"goods_image" : '${goods.goods_image}'
			}, success : function(data){
				window.open("goodsPayment", "", "width=600,height=800,");
				/* location.href = "goodsPayment"; */
			}
		});
		}else{
			alert("취소하셨습니다.");
		}
	}
}
</script>
<%@ include file="../include/footer.jsp"%>
</body>
</html>