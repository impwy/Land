<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Payment</title>
</head>
<body>
	<form action="ticketPayment" method="POST">
		<!-- hidden처리 -->
        <input type="hidden" name="ticket_type" id="type" value="${map.ticket_type }">
        <input type="hidden" id="member_id" name="member_id" value="${member.member_id }" />
        <input type="hidden" id="member_name" name="member_name" readonly value="${member.member_name }" />
        <input type="hidden" id="amount" name="ticket_amount"  value="${map.ticket_amount }" />
       	<input type="text" id="name"  value="${member.member_name }" />
       	<input type="text" id="email" name="ticket_email" readonly value="${member.member_email }" />
       	<input type="text" id="phone" name="ticket_phone" readonly value="${member.member_phone }" />
       	<input type="text" id="date" name="ticket_date" readonly value="${map.ticket_date }" />
        <h3>어른</h3>
        <h4>${map.adult_amount}장</h4>
        <h3>청소년</h3>
        <h4>${map.teen_amount}장</h4>
        <h3>유아</h3>
        <h4>${map.baby_amount} 장</h4>
       	<input type="number" id="sum" name="ticket_sum" value="${map.ticket_sum }" readonly/>
        <button>결제하기</button>
	</form>
</body>
</html>