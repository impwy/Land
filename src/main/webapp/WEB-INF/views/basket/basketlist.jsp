<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style>
table {
	border-collapse: collapse;
	width: 100%;
	margin-bottom: 1rem;
}

th, td {
	padding: 0.75rem;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}

a {
	color: #007bff;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>
	<h1>장바구니</h1>
	<table>
		<thead>
			<tr>
				<th><input id="checkAll" type="checkbox" checked /></th>
				<th>아이디</th>
				<th>상품종류</th>
				<th>수량</th>
				<th>가격</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${basketList}" var="basket">
				<tr>
					<td><input type="checkbox" name="chk" onclick="calCart()"
						value="${basket.goods_num}" checked /> <input type="hidden"
						name="prd_sum" value="${basket.basket_sum}" /> <input
						type="hidden" name="amt_sum" value="${basket.basket_amount}" /> <input
						type="hidden" id="member_id" value="${member.member_id}" /></td>
					<td>${member.member_id}</td>
					<td><a
						href='/basket/get?goods_num=${basket.goods_num}&member_id=${member.member_id}'>
							${basket.goods_num} </a></td>
					<td>${basket.basket_amount}</td>
					<td>${basket.basket_sum}</td>
					<td><a
						href="/basket/delbasket?goods_num=${basket.goods_num}&member_id=${member.member_id}">삭제</a>
					</td>
				</tr>
				<c:set var="priceSum" value="${priceSum + basket.basket_sum}" />
				<c:set var="amountSum" value="${amountSum + basket.basket_amount}" />
			</c:forEach>
		</tbody>
	</table>

	<table>
		<h1>결제</h1>
		<table class="cart3" align="center">
			<tr align="center">
				<th colspan="2">총 상품 금액</th>
				<th></th>
			</tr>
		</table>

		<tr align="center">
			<td colspan="2"><h2 id="prd_sum">
					<fmt:formatNumber value="${priceSum}" pattern="#,###" />
				</h2></td>
		</tr>
		<tr align="center">
			<td colspan="2"><h2 id="amt_sum">
					<fmt:formatNumber value="${amountSum}" pattern="#,###" />
				</h2></td>
		</tr>
		<tr align="center">
			<td colspan="7"><input type="button" id="payCart"
				onclick="payCart()" value="결제하기" /> <input type="hidden"
				name="hiddenbtn" id="hiddenbtn" value="cartpage" /></td>
		</tr>

	</table>
	<div>
		<button>
			<a href="/">취소</a>
		</button>
	</div>
	<script>
		$(document)
				.ready(
						function() { // 최상단 체크박스 클릭
							$("#checkAll").click(
									function() { // 클릭
										if ($("#checkAll").prop("checked")) { // input tag name="chk" checked=true
											$("input[name=chk]").prop(
													"checked", true);
										} else {
											$("input[name=chk]").prop(
													"checked", false);
										}
									})
							$("input[name=chk]")
									.click(
											function() {
												if ($("input[name=chk]").length == $("input[name=chk]:checkbox:checked").length) {
													$("#checkAll").prop(
															"checked", true);
												} else {
													$("#checkAll").prop(
															"checked", false);
												}
											})
						})

		function payCart() {
			var member_id = $("#member_id").val();
			var hiddenbtn = $("#hiddenbtn").val();
			if ($("input[name=chk]:checkbox:checked").length == 0) {
				swal("", "결제할 상품을 선택해주세요.", "warning");
			} else {
				$.ajax({
					type : "post",
					url : 'goodsPayment',
					data : {
						"goods_name" : '${basketlist.goods_name[0]} 외 ${amountSum-1} 개',
						"order_amount" : '${amountSum}',
						"order_sum" : '${priceSum}',
						"member_id" : '${member.member_id}',
						"goods_num" : '${basket.goods_num[0]}'
					},
					success : function(data) {
						location.href = "goodsPayment";
					}
				});
			}
		}
		function calCart() {
			var prd_sum = 0;
			for (i = 0; i < $("input[name=chk]").length; i++) {
				if ($("input[name=chk]")[i].checked == true) {
					prd_sum += parseInt($("input[name=prd_sum]")[i].value);
				}
			}
			document.getElementById("prd_sum").innerHTML = numberWithCommas(prd_sum);
		}
		function numberWithCommas(x) {
			return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
	</script>


</body>
</html>