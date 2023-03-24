<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<title>상품 상세 페이지</title>
</head>
<body>
<script>
			$("#buy_quantity").keyup(function(e){
				var regNumber = /^([0-9]{2})$/;
				var str = $(this).val();
				if(!regNumber.test(str)) {
					var res = str.substring(0, str.length-1);
					$(this).val(res);
				}
			});
		</script>
		<div class="productdetail">
			<form>
				<img class="productLeft" src="${goods.goods_image}">
				<div class="productRight">
					<p align="left" class="p1">상품명: ${goods.goods_name}</p>
					<p align="left" class="p2">가격: <fmt:formatNumber value="${goods.goods_price}" pattern="#,###"/>원</p>
					<p align="left">상품코드: ${goods.goods_num}</p>
					<p align="left">수량: <input type="number" id="buy_quantity" min="1" maxlength="2" max="99" value="1" oninput="mxNum(this)" /></p>
					<script>
						function mxNum(object) {
							if (object.value.length > object.maxLength) {
								object.value = object.value.slice(0, object.maxLength)
							}
						}
					</script>
					<p align="left">본 상품은 서울배송만 가능합니다.</p><br><br><br>
					<input type="hidden" name="prd_img" id="prd_img" value="${goods.goods_image}" />
					<input type="hidden" name="member_id" id="member_id" value="${member.member_id}" />
					<input type="hidden" name="prd_id" id="prd_id" value="${goods.goods_num}" />
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
</body>
</html>