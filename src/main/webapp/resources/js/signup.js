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
      swal("","아이디를 입력해주세요","error");
    } else if(member_id){
      $.ajax({
        type: "POST",
        url: "checkID",
        data :{"member_id" : member_id},
        success : function(data){
          console.log(data);
          if(data != 0){
            swal("","중복된 아이디 입니다.","error");
            idCheck = false;
          } else{
            swal("","사용 가능한 아이디 입니다.","success");
            idChck = true;
          }
        },
        error : function(error) {
          swal("", member_id, "error");
        }
      });
    }
  });
});
