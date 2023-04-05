<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="resources/css/login.css">
<script type="text/javascript" src="resources/js/signup.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<title>Login</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
	 <div class="login-wrap">
    <div class="login-html">
      <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">로그인</label>
      <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">회원가입</label>
      <div class="login-form">
        <div class="sign-in-htm">
        <form id="loginForm" method="post">
          <div class="group">
            <label for="user" class="label">아이디</label>
            <input id="user" type="text" class="input" name="member_id">
          </div>
          <div class="group">
            <label for="pass" class="label">비밀번호</label>
            <input id="pass" type="password" class="input" name="member_pwd">
          </div>
          <div class="group">
            <input id="check" type="checkbox" class="check" checked>
            <label for="check"><span class="icon"></span>아이디 저장</label>
          </div>
          <div class="group">
            <input type="submit" class="button" id="loginBtn" value="Sign In">
          </div>
          <div class="hr"></div>
          <div class="foot-lnk">
          </div>
          </form>
        </div>
        <div class="sign-up-htm">
        <form action="join" method="post" id="joinForm">
          <div class="group">
            <label for="user" class="label">아이디</label>
            <input id="user_id" type="text" class="input" name="member_id">
            <button type="button" id="checkID" onClick="idCheck">중복검사</button>
          </div>
          <div class="group">
            <label for="pass" class="label">비밀번호</label>
            <input id="user_pass" type="password" class="input" name="member_pwd">
          </div>
          <div class="group">
            <label for="passCheck" class="label">비밀번호 확인</label>
            <input id="passCheck" type="password" class="input">
            <span id="checkPasswd"></span>
          </div>
          <div class="group">
            <label for="name" class="label">이름</label>
            <input id="name" type="text" class="input" name="member_name">
          </div>
          <div class="group">
            <label for="phone" class="label">휴대폰 번호</label>
            <input id="phone" type="text" class="input" name="member_phone">
          </div>
          <div class="group">
            <label for="age" class="label">나이</label>
            <input id="age" type="number" class="input" name="member_age">
          </div>
          <div class="group">
            <label for="email" class="label">Email 주소</label>
            <input id="email" type="email" class="input" name="member_email">
          </div>
          <div class="group">
            <label for="address" class="label">주소</label>
            <input id="address" type="text" class="input" name="member_addr">
          </div>
          <div class="group">
            <label for="key" class="label">주민등록번호</label>
            <input id="key" type="number" class="input" name="member_key">
          </div>
          <div class="group">
            <input type="submit" class="button" id="signBtn" value="Sign Up">
          </div>
          <div class="hr"></div>
          <div class="foot-lnk">
          </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  
</body>
</html>