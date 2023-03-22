
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
	  
	  
	  // Define the updateTotal function
	  function updateTotal() {
		var adultValue = parseInt(adultInput.val());
		var teenValue = parseInt(teenInput.val());
		var babyValue = parseInt(babyInput.val());
	    var totalValue = adultValue*40000 + teenValue*30000 + babyValue*20000;
	    var amountValue = "어른"+adultValue+",청소년"+teenValue+",유아"+babyValue;
	    totalInput.val(totalValue);
	    amountInput.val(amountValue);
	  }
	  
	});