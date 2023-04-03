<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script type="text/javascript">
    var alert = function (msg, title, type) {
        swal({
            title: title,
            text: msg,
            icon: "success",
            type: type,
            timer: 1500,
            customClass: 'sweet-size',
            showConfirmButton: false
        });
    }
</script>
<head>
    <title>회원 관리</title>
</head>
<body>
<c:if test="${member.member_id eq 'admin'}">
<script type="text/javascript">
    let msg = "${msg}";
    if (msg == "DEL_OK") alert('삭제되었습니다.', "삭제.", "success");
</script>
<h1>회원 관리</h1>

<table>
    <tr>
        <th>회원번호</th>
        <th>아이디</th>
        <th>이름</th>
        <th>전화번호</th>
        <th>나이</th>
        <th>이메일</th>
        <th>주소</th>
        <th>가입날짜</th>
        <th colspan="2">비고</th>
    </tr>

    <form id="form" method="post" action="">
        <c:forEach items="${memberList}" var="member" begin="1">
            <%--            스윗알람 및 삭제 버튼 함수--%>
            <script type="text/javascript">
                var confirm = function (title, msg) {
                    swal({
                        title: title,
                        text: msg,
                        icon: "warning",
                        showCancelButton: true,
                        confirmButtonClass: "btn-danger",
                        confirmButtonText: "삭제",
                        cancelButtonText: "취소",
                        closeOnConfirm: false,
                        closeOnCancel: true
                    }, function (isConfirm) {
                        if (isConfirm) {
                            let form = $("#form");
                            form.attr("action", "<c:url value='deleteMember?member_no=${member.member_no}'/>");
                            form.attr("method", "post");
                            form.submit();
                        } else {
                            return false;
                        }

                    });
                }
                function deleteMember() {
                    if (!confirm('삭제 하시겠습니까?', "삭제 하신 정보는 다시 불러 올 수 없습니다.", "warning")) return;
                }
            </script>

            <tr>
                <td>${member.member_no}</td>
                <td>${member.member_id}</td>
                <td>${member.member_name}</td>
                <td>${member.member_phone}</td>
                <td>${member.member_age}</td>
                <td>${member.member_email}</td>
                <td>${member.member_addr}</td>
                <td>${member.member_date}</td>
                <th>
                    <button type="button" onclick="deleteMember()"><i class="fa fa-remove"></i>삭제</button>
                </th>
            </tr>
        </c:forEach>
    </form>
</table>
</c:if>
<c:if test="${member.member_id ne 'admin'}">
<h1>잘못 된 접근입니다.</h1>
</c:if>
<a onclick="history.back()" style="cursor: pointer">돌아가기</a>
</body>
</html>