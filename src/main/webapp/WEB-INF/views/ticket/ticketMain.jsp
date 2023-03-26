<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ticketing</title>
<style>
	#ticket-main{
		display : flex; 
		margin-top : 300px;
		height: 80%;
		width : 100%;
		justify-content : center;
		align-items : center;
	}
</style>
</head>
<body>
<%@ include file="../include/header.jsp"%>
<div id="ticket-main">
	<a href="allDayTicket">종일권</a>
	<a href="afterFourTicket">애프터4</a>
	</div>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>