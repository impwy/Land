<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style>
    #ticket-list {
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
       background-color: #F7F7F7; /* Change to a light grey or white color */
  color: #333; /* Change the text color to a darker shade */
      border: 1px solid #ddd;
    }

    /* Style the header row */
  #ticket-list  th {
      background-color: #FFD700;
      font-weight: bold;
      padding: 10px;
      text-align: left;
    }

    /* Style the data rows */
   #ticket-list td {
      padding: 8px;
      background-color: #FFF;
    }

    /* Style the "Cancel booking" link */
   #ticket-list a {
      color: #cc0000;
      text-decoration: none;
    }

    /* Hover effect on table rows */
   #ticket-list tr:hover {
      background-color: #f3f3f3;
    }
  </style>
</head>
<body>
<div id="ticket-list">
	<h3>예매내역</h3>
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
			
			  $.ajax({
			    url: "deleteTicket",
			    type: "GET",
			    data: { "ticket_num": ticketNum },
			    success: function(result) {
			     alert("삭제되었습니다.");
			     location.href = "ticketList";
			    },
			    error: function(jqXHR, textStatus, errorThrown) {
			      // Display an error message or handle the error
			    }
			  });
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
</body>
</html>