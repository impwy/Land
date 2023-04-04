
$(document).ready(function() {
	  
	  var adultInput = $("#adult-amount");
	  var teenInput = $("#teen-amount");
	  var babyInput = $("#baby-amount");
	  var totalInput = $("#total");
	  var amountInput = $("#amount");
	//input값이 바뀔 때마다 값이 바뀐다.
	  adultInput.change(updateTotal);
	  teenInput.change(updateTotal);
	  babyInput.change(updateTotal);
	  
	  $("button").click(updateAmount);
	  
	//input값이 올라갈 때마다 totalValue증가
	  function updateTotal() {
		var adultValue = parseInt(adultInput.val());
		var teenValue = parseInt(teenInput.val());
		var babyValue = parseInt(babyInput.val());
	    var totalValue = adultValue*42000 + teenValue*39000 + babyValue*36000;
	    totalInput.val(totalValue);
	  }
	  
	  function updateAmount(){
		  var adultValue = adultInput.val();
		  var teenValue = teenInput.val();
		  var babyValue = babyInput.val();
		  var amountValue = "";
		    if(adultValue !== "0"){
		    amountValue+=" 어른"+adultValue;
		    }
		    if(teenValue !== "0"){
		    amountValue	+=" 청소년"+teenValue;
		    }
		    if(babyValue !== "0" ){	    	
		    amountValue+=" 유아"+babyValue;
		    }
		    amountInput.val(amountValue);
	  }
	  
	});
function validateForm() {
	var date = document.getElementById("date").value;
	var total = document.getElementById("total").value;

	if (date === "" || total == 0 ) {
		alert("티켓을 선택해 주세요");
		return false;
	}
	return true;
}
