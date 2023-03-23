
$(document).ready(function() {
	  // Get references to the input elements
	  var adultInput = $("#adult-amount");
	  var teenInput = $("#teen-amount");
	  var babyInput = $("#baby-amount");
	  var totalInput = $("#total");
	  var amountInput = $("#amount");
	  // Attach a change event listener to each input element
	  adultInput.change(updateTotal);
	  teenInput.change(updateTotal);
	  babyInput.change(updateTotal);
	  
	  $("button").click(updateAmount);
	  
	  // Define the updateTotal function
	  function updateTotal() {
		var adultValue = parseInt(adultInput.val());
		var teenValue = parseInt(teenInput.val());
		var babyValue = parseInt(babyInput.val());
	    var totalValue = adultValue*40000 + teenValue*30000 + babyValue*20000;
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