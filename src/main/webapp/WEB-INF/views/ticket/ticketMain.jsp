<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<title>Ticketing</title>
<style>
		#ticket-main {
			display: flex;
			height: 80%;
			width: 100%;
			justify-content: center;
			align-items: center;
			margin:20% auto;
		}
		
		#ticket-main a {
			display: flex;
			justify-content: center;
			align-items: center;
			margin: 0 20px;
			width: 200px;
			height: 100px;
			background-color: #fff;
			box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.2);
			border-radius: 5px;
			font-size: 24px;
			color: #333;
			text-decoration: none;
			transition: all 0.3s ease-in-out;
		}
		
		#ticket-main a:hover {
			transform: scale(1.05);
			box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
		}
		
	</style>
</head>
<body>
	<%@ include file="../include/header.jsp"%>
	<div id="ticket-main">
		<a href="allDayTicket">
			<div>All Day Ticket</div>
		</a>
		<a href="afterFourTicket">
			<div>After4</div>
		</a>
	</div>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>