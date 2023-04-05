<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TicketList</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style>
   #ticket-list {
  font-family: Arial, sans-serif;
  margin-top:250px;
  margin-bottom:90px;
}

table {
  width: 80%;
  border-collapse: collapse;
  margin-top: 20px;
  transform:translateX(14%);
}

th, td {
  padding: 10px;
  text-align: center;
}

th {
  background-color: #F7F7F7;
}

tr:nth-child(even) {
  background-color: #F2F2F2;
}

a {
  color: #4CAF50;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

td[colspan="9"] {
  text-align: center;
}
.ticket {
	text-align: center;
}

  </style>
  <%@ include file="../include/header.jsp" %>
</head>
<body>
<div id="ticket-list">
	<h2 class="ticket">예매내역</h2>
		<table border="1">
		<tr>
			<th>이름</th>
			<th>이메일</th>
			<th>핸드폰</th>
			<th>티켓넘버</th>
			<th>예매날짜</th>
			<th>종류</th>
			<th>수량</th>
			<th>가격</th>
			<th>예매 취소</th>
		</tr>
		<c:choose>
		<c:when test="${not empty map.list}">
		<c:forEach begin="0" end="${(fn:length(map.list)-1)}" var="i">
		<c:set var="row" value="${map.list[i] }"/>
		<tr>
			<td>${row.member_name }</td>
			<td>${row.ticket_email}</td>
			<td>${row.ticket_phone}</td>
			<td>${row.ticket_num}</td>
			<td>${row.ticket_date}</td>
			<td>${row.ticket_type}</td>
			<td>${row.ticket_amount}</td>
			<td>${row.ticket_sum}</td>
			<td><a onclick="cancelTicket('${row.ticket_num}')">취소</a></td>
		</tr>
		<script>
		function cancelTicket(ticketNum) {
			var check = confirm("삭제하시겠습니까?");
			if(check){
			var ticket = parseInt(ticketNum);
			  $.ajax({
			    url: "deleteTicket",
			    type: "GET",
			    data: { "ticket_num": ticket},
			    success: function(result) {
			     alert("삭제되었습니다.");
			     location.href = "ticketList";
			    },
			    error: function(jqXHR, textStatus, errorThrown) {
			      // Display an error message or handle the error
			    }
			  });
			}else{
			alert("취소하셨습니다");
			}
	}
		</script>
		</c:forEach>
		</c:when>
		<c:otherwise>
		<td colspan="9">예매 내역이 없습니다.</td>
		</c:otherwise>
		</c:choose>
		
		<c:if test="${(fn:length(map)) ne 0}">
			<tr>
				<td colspan="9" align="center">
					<c:if test="${map.pager.curBlock > 1}">
						<a href="ticketList">[처음]</a>
					</c:if> 
					<c:if test="${map.pager.curBlock > 1}">
						<a href="ticketList?curPage=${map.pager.prevPage}">[이전]</a>
					</c:if> 
					<c:forEach var="num" begin="${map.pager.blockBegin}" end="${map.pager.blockEnd}">
						<c:choose>
							<c:when test="${num == map.pager.curPage}">
								<span style="color: red;">${num}</span>
							</c:when>
							<c:otherwise>
								<a href="ticketList?curPage=${num}">${num}</a>
							</c:otherwise>
						</c:choose>	
					</c:forEach> 
					<c:if test="${map.pager.curBlock < map.pager.totBlock}">
						<a href="ticketList?curPage=${map.pager.nextPage}">>[다음]</a>
					</c:if>
					<c:if test="${map.pager.curBlock < map.pager.totPage}">
						<a href="ticketList?curPage=${map.pager.totPage}">[끝]</a>
					</c:if>
				</td>
			</tr>
		</c:if>
		</table>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>