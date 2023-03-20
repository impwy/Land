<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/login.css">

<title>Insert title here</title>
</head>
<body>
	 <div class="login-wrap">
    <div class="login-html">
      <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">로그인</label>
      <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">회원가입</label>
      <div class="login-form">
     
        <div class="sign-in-htm">
         <form action="login" method="post">
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
            <input type="submit" class="button" value="Sign In">
          </div>
          <div class="hr"></div>
          <div class="foot-lnk">
            <a href="#forgot">비밀번호 찾기</a>
          </div>
          </form>
        </div>
        
        
        <div class="sign-up-htm">
         <form action="join" method="post">
          <div class="group">
            <label for="user" class="label">아이디</label>
            <input id="user" type="text" class="input" name="member_id">
          </div>
          <div class="group">
            <label for="pass" class="label">비밀번호</label>
            <input id="pass" type="password" class="input" name="member_pwd">
          </div>
          <div class="group">
            <label for="pass" class="label">비밀번호 확인</label>
            <input id="pass" type="password" class="input">
          </div>
          <div class="group">
            <label for="pass" class="label">이름</label>
            <input id="text" type="text" class="input" name="member_name">
          </div>
          <div class="group">
            <label for="pass" class="label">휴대폰 번호</label>
            <input id="text" type="text" class="input" name="member_phone">
          </div>
          <div class="group">
            <label for="pass" class="label">나이</label>
            <input id="text" type="number" class="input" name="member_age">
          </div>
          <div class="group">
            <label for="pass" class="label">Email 주소</label>
            <input id="text" type="text" class="input" name="member_email">
          </div>
          <div class="group">
            <label for="pass" class="label">주소</label>
            <input id="text" type="text" class="input" name="member_addr">
          </div>
          <div class="group">
            <label for="pass" class="label">주민등록번호</label>
            <input id="text" type="number" class="input" name="member_key">
          </div>
          <div class="group">
            <input type="submit" class="button" value="Sign Up" link="login">
          </div>
          </form>
          <div class="hr"></div>
          <div class="foot-lnk">
            <label for="tab-1">이미 회원이십니까?</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>