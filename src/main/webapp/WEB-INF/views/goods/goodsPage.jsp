<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="resources/css/productpage.css" />
<title>상품 상세 페이지</title>
</head>
<body>

		<div class="productdetail">
			<form>
				<img class="productLeft" src="${goods.goods_image }">
				<div class="productRight">
					<p align="left" class="p1">상품명: ${goods.goods_name}</p>
					<p align="left" class="p2">가격: <fmt:formatNumber value="${goods.goods_price}" pattern="#,###"/>원</p>
					<p align="left">상품코드: ${goods.goods_num}</p>
					<p align="left">수량: <input type="number" id="basket_amount" min="1" maxlength="2" max="99" value="0" /></p>
					
					<input type="number" name="basket_sum" id="basket_sum" value="0" />
					
					<p align="left">본 상품은 서울배송만 가능합니다.</p><br><br><br>
					<input type="hidden" name="goods_image" id="goods_image" value="${goods.goods_image}" />
					<input type="hidden" name="member_id" id="member_id" value="${member.member_id}" />
					<input type="hidden" name="goods_num" id="goods_num" value="${goods.goods_num}" />
					<p align="left">
						<input type="button" name="buy" id="buy" onclick="buyProduct()" value="구매하기" />&nbsp;&nbsp;&nbsp;
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
<script type="text/javascript" src="resources/js/product.js" charset="UTF-8"></script>
		<script>
$(document).ready(function() {
	  // Get the "basket_amount" and "basket_sum" input elements
	  var basketAmountInput = $('#basket_amount');
	  var basketSumInput = $('#basket_sum');

	  // Listen for input changes to the "basket_amount" input value
	  basketAmountInput.on('input', function() {
	    // Get the current "basket_amount" value
	    var basketAmount = parseInt(basketAmountInput.val())*${goods.goods_price};

	    // Update the "basket_sum" value by adding the new "basket_amount" value
	    basketSumInput.val(basketAmount);
	  });
	});

</script>
</body>
</html>