<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="resources/js/ticket.js"></script>
    <title>All Day Ticket</title>
</head>
<body>
    <div class="ticket-info">
       
        <form action="order" method="post">
        <h3>방문날짜</h3>
        <input type="date" name="ticket_date" id="date">
        
        <!-- 티켓종류 -->
        <input type="hidden" name="ticket_type" id="type" value="allDay">
        
        <h3>이메일</h3>
        <input type="text" name="ticket_email" id="email">
        
        <h3>핸드폰</h3>
        <input type="text" name="ticket_phone" id="phone">
        
        <h3>어른</h3>
        <button id="adult-minus" type="button">-</button>
        <input type="number" id="adult-amount" readonly value="0" />
        <button id="adult-plus" type="button">+</button>
        
        <h3>청소년</h3>
        <button id="teen-minus" type="button">-</button>
        <input type="number" id="teen-amount" readonly value="0" />
        <button id="teen-plus" type="button">+</button>
        
        <h3>아기</h3>
        <button id="baby-minus" type="button">-</button>
        <input type="number" id="baby-amount" readonly value="0" />
        <button id="baby-plus" type="button">+</button>
        
        <input type="hidden" id="amount" name="ticket_amount" readonly value="0" />
      

        <h3>금액</h3>
        <input type="number" id="total" name="ticket_sum" readonly value="0" />
        <br>
        <button type="submit">결제</button>
    	</form>
    	<form action="deleteTicket" method="post">
    	<h1>티켓넘버 입력</h1>
		<input type="text" name="ticket_num">
    	<button>삭제</button>
    	</form>
    	</div>

       
</body>
</html>