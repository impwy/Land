$(document).ready(function(){
	var member_phone = $("#member_phone").val();
	var member_addr = $("input[name=sn_member_zipcode]").val()
	+ $("input[name=sn_member_faddr]").val()
	+ $("input[name=sn_member_laddr]").val();
	
	if(!member_phone){
		alert("연락처를 입력해주세요.");
	}
});



function searchPost() {
        new daum.Postcode({
            oncomplete: function (data) {
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
                $("input[name=sn_member_zipcode]").val(data.zonecode);
                console.log($("input[name=sn_member_zipcode]").val());
                // document.getElementById('sn_member_zipcode').value = data.zonecode;
                $("input[name=sn_member_faddr]").val(fullAddr);
                // document.getElementById('sn_member_faddr').value = fullAddr;
                $("input[name=sn_member_laddr]").focus();
                // document.getElementById('sn_member_laddr').focus();
            }
        }).open();
    }