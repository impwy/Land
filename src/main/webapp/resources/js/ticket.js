$('document').ready(function(){
    //종일권 어른
    $('#adult-minus').click(function () {
    var currentValue = parseInt($('#adult-amount').val());
    var sum = parseInt($('#total').val());
     if (currentValue > 0) {
     $('#adult-amount').val(currentValue - 1);
     $('#total').val(sum-30000);
    }
});

$('#adult-plus').click(function () {
    var currentValue = parseInt($('#adult-amount').val());
    var sum = parseInt($('#total').val());
    $('#adult-amount').val(currentValue + 1);
    $('#total').val(sum+30000);
});

   //종일권 청소년
   $('#teen-minus').click(function () {
    var currentValue = parseInt($('#teen-amount').val());
    var sum = parseInt($('#total').val());
     if (currentValue > 0) {
     $('#teen-amount').val(currentValue - 1);
     $('#total').val(sum-20000);
    }
});

$('#teen-plus').click(function () {
    var currentValue = parseInt($('#teen-amount').val());
    var sum = parseInt($('#total').val());
    $('#teen-amount').val(currentValue + 1);
    $('#total').val(sum+20000);
});

   //종일권 아기
   $('#baby-minus').click(function () {
    var currentValue = parseInt($('#baby-amount').val());
    var sum = parseInt($('#total').val());
     if (currentValue > 0) {
     $('#baby-amount').val(currentValue - 1);
     $('#total').val(sum-10000);
    }
});

$('#baby-plus').click(function () {
    var currentValue = parseInt($('#baby-amount').val());
    var sum = parseInt($('#total').val());
    $('#baby-amount').val(currentValue + 1);
    $('#total').val(sum+10000);
});

});