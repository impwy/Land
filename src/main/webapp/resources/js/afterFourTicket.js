//+,-를 누르면 getTicketPrice(TicketVO vo)를 실행해서 
//ticket_type에 대한 가격을 가져와 금액에 추가해준다.
//예매 페이지에 들어올 때 티켓 가격을 가져온다.


$('document').ready(function(){
    //애프터4 어른
    $('#adult-minus').click(function () {
    var currentValue = parseInt($('#adult-amount').val());
    var sum = parseInt($('#total').val());
     if (currentValue > 0) {
     $('#adult-amount').val(currentValue - 1);
     $('#total').val(sum-35000);
    }
});

$('#adult-plus').click(function () {
    var currentValue = parseInt($('#adult-amount').val());
    var sum = parseInt($('#total').val());
    $('#adult-amount').val(currentValue + 1);
    $('#total').val(sum+35000);
});

   //애프터4 청소년
   $('#teen-minus').click(function () {
    var currentValue = parseInt($('#teen-amount').val());
    var sum = parseInt($('#total').val());
     if (currentValue > 0) {
     $('#teen-amount').val(currentValue - 1);
     $('#total').val(sum-25000);
    }
});

$('#teen-plus').click(function () {
    var currentValue = parseInt($('#teen-amount').val());
    var sum = parseInt($('#total').val());
    $('#teen-amount').val(currentValue + 1);
    $('#total').val(sum+25000);
});

   //애프터4 아기
   $('#baby-minus').click(function () {
    var currentValue = parseInt($('#baby-amount').val());
    var sum = parseInt($('#total').val());
     if (currentValue > 0) {
     $('#baby-amount').val(currentValue - 1);
     $('#total').val(sum-15000);
    }
});

$('#baby-plus').click(function () {
    var currentValue = parseInt($('#baby-amount').val());
    var sum = parseInt($('#total').val());
    $('#baby-amount').val(currentValue + 1);
    $('#total').val(sum+15000);
});

});