<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
				<th>아이디</th>
				<th>상품종류</th>
				<th>수량</th>
				<th>합계</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${basketList}" var="basket">
				<tr>
					<td>${member.member_id}</td>
					<td><a
						href='/basket/get?goods_num=${basket.goods_num}&member_id=${member.member_id}'>
					    ${basket.goods_num} </a></td>
					<td>${basket.basket_sum}</td>
					<td>${basket.basket_amount}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


	<div>
		<h2>주문 상세 내역</h2>
		<div>
			<button>
				<a href="/">취소</a>
			</button>
			<button>
				<a href="/goodspay">구매</a>
			</button>
		</div>
	</div>
	<script>
	$('#buybasket').click(function(){		
		//아임포트 카카오페이 결제 시작
	var IMP = window.IMP; 
	IMP.init('imp42522200'); 
	IMP.request_pay({
		pg : "kakaopay", 
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '${map.basket_type }',
	    amount : '${map.basket_sum }',
	    buyer_email : '${member.member_email}',
	    buyer_name : '${member.member_name}',
	    buyer_tel : '${member.member_phone}',
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '예매가 완료되었습니다.';
	        $.ajax({
	        	  type: "POST",
	        	  url: "basketPayment",
	        	  data: $('#form1').serialize(),
	        	  success: function(response) {
	        	    console.log(response);
	        	    swal("", msg, "success").then(()=>{
	        	    location.href="main";
	        	    });
	        	  },
	        	  error: function(xhr, textStatus, errorThrown) {
	        	    console.log(xhr.responseText);
	        	  }
	        	});
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        rsp.error_msg;
	        
	    }
		});
	});
	</script>



</body>
</html>