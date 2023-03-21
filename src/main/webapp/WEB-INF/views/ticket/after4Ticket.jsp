<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <div class="ticket-info">
       
        <form action="order" method="post">
        <h3>방문날짜</h3>
        <input type="date" name="ticket_date" id="date">
        
        <h3>티켓종류</h3>
        <input type="hidden" name="ticket_type" id="type" value="afterFour">
        
        <h3>이메일</h3>
        <input type="text" name="ticket_email" id="email">
        
        <h3>핸드폰</h3>
        <input type="text" name="ticket_phone" id="phone">
        
        <h3>금액</h3>
        <input type="number" id="total" name="ticket_sum" readonly />
        <button type="submit">a</button>
    	</form>
    	<form action="deleteTicket" method="post">
    	<h1>티켓넘버 입력</h1>
		<input type="text" name="ticket_num">
    	<button>삭제</button>
    	</form>
    	</div>
</body>
</html>