<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="resources/js/afterFourTicket.js"></script>
    <link rel="stylesheet" href="resources/css/ticketPart.css">
    <title>After Four Ticket</title>
</head>
<body>
<%@ include file="../include/header.jsp"%>
   <div class="ticket-info">
    <h2>티켓을 고르세요.</h2>
       
    <form action="orderTicket" method="post" onsubmit="return validateForm()">
        <input type="hidden" id="amount" name="ticket_amount" value="0" />
        <input type="hidden" id="type" name="ticket_type" value="AfterFour" />
        
        <h3>방문 날짜</h3>
        <input type="date" name="ticket_date" id="date">
        
        <h3>성인</h3>
        <input type="number" id="adult-amount" name="adult_amount" min="0" max="4" value="0" />
             
        <h3>청소년</h3>
        <input type="number" id="teen-amount" name="teen_amount" min="0" max="4" value="0" />
    
        <h3>아기</h3>
        <input type="number" id="baby-amount" name="baby_amount" min="0" max="4" value="0" />

        <h3>총가격</h3>
        <input type="number" id="total" name="ticket_sum" readonly value="0" />
        <br>
        <button>결제하기</button>
    </form>
</div>
<%@ include file="../include/footer.jsp"%>
</body>
</html>