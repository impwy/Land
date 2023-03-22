<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="resources/js/allDayTicket.js"></script>
    <title>All Day Ticket</title>
</head>
<body>
    <div class="ticket-info">
       
        <form action="order" method="post">
        <!-- hidden처리 -->
        <input type="hidden" name="ticket_type" id="type" value="allDay">
        <input type="hidden" id="member_id" name="member_id" value="${member.member_id }" />
        <input type="hidden" id="amount" name="ticket_amount" value="2" />
        
        <h3>방문날짜</h3>
        <input type="date" name="ticket_date" id="date">
        
        
        <h3>이메일</h3>
        <input type="text" name="ticket_email" id="email" value="${member.member_email }">
        
        <h3>핸드폰</h3>
        <input type="text" name="ticket_phone" id="phone" value="${member.member_phone }">
        
        <h3>어른</h3>
      
        <input type="number" id="adult-amount" min="0" max="4" value="0" />
      
        
        <h3>청소년</h3>
     
        <input type="number" id="teen-amount" min="0" max="4" value="0" />
    
        
        <h3>아기</h3>
   
        <input type="number" id="baby-amount" min="0" max="4" value="0" />
 

        <h3>금액</h3>
        <input type="number" id="total" name="ticket_sum" readonly value="0" />
        <br>
        <button type="submit">결제하기</button>
    	</form>
    </div>

       
</body>
</html>