//+,-를 누르면 getTicketPrice(TicketVO vo)를 실행해서 
//ticket_type에 대한 가격을 가져와 금액에 추가해준다.
//예매 페이지에 들어올 때 티켓 가격을 가져온다.


//$('document').ready(function(){
//	var amount;
//	var adult;
//	var teen;
//	var baby;
//	
//var total = parsInt($('#total').val());
////총량
//adult =parseInt($('#adult-amount').val());
//teen =parseInt($('#teen-amount').val());
//baby =parseInt($('#baby-amount').val());
//amount = "어른X"+adult+","+"청소년X"+teen+","+"아기X"+baby;
//total = adult * 40000 + teen * 30000 + baby * 20000;
//
//$('#total').val(total);
//$('#amount').val(amount);
//
//});
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
	    totalInput.val(totalValue);
	  }
	  
	});