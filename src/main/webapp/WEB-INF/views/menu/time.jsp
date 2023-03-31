<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<div class="time-h">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="resources/css/time.css" />
	<title>놀이공원 운영시간</title>
</div>
<div class="time-b">
	<%@ include file="../include/header.jsp"%>
	<div class="container">
		<h1 class="time-h1">놀이공원 운영시간</h1>
		<p>놀이공원 이용 시간은 다음과 같습니다:</p>
		<table class="time-t">
			<tr>
				<th>요일</th>
				<th>시간</th>
			</tr>
			<tr>
				<td>월요일</td>
				<td>10am - 6pm</td>
			</tr>
			<tr>
				<td>화요일</td>
				<td>10am - 6pm</td>
			</tr>
			<tr>
				<td>수요일</td>
				<td>10am - 6pm</td>
			</tr>
			<tr>
				<td>목요일</td>
				<td>10am - 6pm</td>
			</tr>
			<tr>
				<td>금요일</td>
				<td>10am - 8pm</td>
			</tr>
			<tr>
				<td>토요일</td>
				<td>9am - 8pm</td>
			</tr>
			<tr>
				<td>일요일</td>
				<td>9am - 7pm</td>
			</tr>
		</table>
		<p class="time-p">영업 시간은 예고 없이 변경될 수 있습니다. 자세한 내용은 당사에 문의하십시오.</p>
	</div>
</div>

</html>
