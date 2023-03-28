
var namecheck = false;
var phonecheck = false;
var agecheck = false;
var emailcheck = false;
var addrcheck = false;
var keycheck = false;
var datecheck = false;
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

function Signup() {
	var user_id = $("#user_id").val();
	var user_password = $("#user_password").val();
	var user_name = $("#user_name").val();
	var user_birth = $("#user_birth").val();
	var user_email = $("#user_email").val();
	var user_tel = $("#user_tel").val();
	var user_addr = $("#user_addr").val() +" "+ $("#user_detail_addr").val();
	
	if (checkID == false) { console.log("아이디 중복검사 안함"); }
	if (checkPWD == false) { console.log("비밀번호 다름"); }
	if (checkNAME == false) { console.log("이름이 비어있음"); }
	if (checkBIRTH == false) { console.log("생일이 비어있음"); }
	if (checkTEL == false) { console.log("연락처가 비어있음"); }
	if (checkEMAIL == false) { console.log("이메일이 비어있음"); }
	if (checkADDR == false) { console.log("주소가 비어있음"); }
	if (checkID == false || checkPWD == false || checkNAME == false || checkBIRTH == false || checkTEL == false || checkEMAIL == false || checkADDR == false) {
		alert("빠진 정보가 있는지 확인해주세요.");
	} else {
		$.ajax({
			type : "POST",
			url : "join",
			data : {
				"user_id" : user_id,
				"user_password" : user_password,
				"user_name" : user_name,
				"user_birth" : user_birth,
				"user_email" : user_email,
				"user_tel" : user_tel,
				"user_addr" : user_addr
			},
			success : function(data) {
				alert("MIRAE SURF 회원가입을 축하드립니다.")
				window.location.href="login";
			}
		});
	}
}

function searchPost() {
	new daum.Postcode({
		oncomplete : function(data) {
			var fullAddr = '';
			var extraAddr = '';

			if (data.userSelectedType == 'R') {
				fullAddr = data.roadAddress;
			} else {
				fullAddr = data.jibunAddress;
			}
			if (data.userSelectedType == 'R') {
				if (data.bname !== '') {
					extraAddr += data.bname;
				}
				if (data.buildingName !== '') {
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName
							: data.buildingName);
				}
				fullAddr += (extraAddr !== '' ? '(' + extraAddr + ')' : '');
			}
			document.getElementById('member_addr_number').value = data.zonecode;
			document.getElementById('member_addr').value = fullAddr;
			document.getElementById('member_detail_addr').focus();
		}
	}).open();
}
