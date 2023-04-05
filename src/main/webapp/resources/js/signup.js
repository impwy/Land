
var idCheck = false;
var pwCheck = false;

$(document).ready(function(){
  // 패스워드 확인
  $("#user_pass").keyup(function() {
    $("#checkPasswd").text("");
  });

  $("#passCheck").keyup(function() {
    var checkText = $("#checkPasswd");
    if ($("#user_pass").val() == "" || $("#passCheck").val() == "") {
      checkText.css("color", "red");
      checkText.text("필수 입력사항");
      pwCheck = false;
    } else if ($("#user_pass").val() != $("#passCheck").val()) {
      pwCheck = false;
      checkText.text("비밀번호가 다릅니다.");
      checkText.css("color", "red");
    } else {
      pwCheck = true;
      checkText.text("동일한 비밀번호 입니다.");
      checkText.css("color", "green");
    }
  });

  //아이디 체크
  $("#checkID").click(function(){
    let member_id = $('#user_id').val();
    if(!member_id){
     alert("아이디를 입력해주세요");
    } else if(member_id){
      $.ajax({
        type: "POST",
        url: "checkID",
        data :{"member_id" : member_id},
        success : function(data){
          console.log(data);
          if(data != 0){
            alert("중복된 아이디 입니다.");
            idCheck = false;
          } else{
            alert("사용 가능한 아이디 입니다.");
            idCheck = true;
          }
        },
        error : function(error) {
         alert(member_id);
        }
      });
    }
  });
  
  $("#loginBtn").click(function(){
	 $.ajax({
		 type : 'post',
		 url : 	'checkMember',
		 data : $("#loginForm").serialize(),
		 success : function(data){
			 if(data == 0){
				alert("아이디 비밀번호를 확인해 주세요.");
					location.href="login";
			 }else{
				 alert("로그인 완료");
					$.ajax({
						type : 'post',
						url : 'login',
						data : $('#loginForm').serialize(),
						success : function(){
							location.href = 'main';
						}
					});
			 }
		 }
	 }); 
  });
  
  //회원가입 전 체크
  $('#signBtn').click(function(event) {
	    if (idCheck === false) {
	     alert("중복검사를 해주세요");
	    	event.preventDefault(); // prevent form submission
	    }else if(pwCheck === false){
	    	alert("비밀번호가 다릅니다.");
	    	event.preventDefault();
	    }else if($("#email").val().indexOf("@") == -1){
	    	alert("이메일을 바르게 써주세요");
	    	event.preventDefault();
	    } else{
	    	alert("회원가입 완료");
	    	location.href="login";
	    }
	 });
});