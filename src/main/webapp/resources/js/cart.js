/**
 * 장바구니
 */	 
function insertCart() {
	var member_id = $("#member_id").val();
	var goods_num = $("#goods_num").val();
	var basket_amount = $("#basket_amount").val();
	var basket_sum = $("#basket_sum").val();	
	var goods_name = $("#goods_names").val();
	if (member_id == "admini") {
		alert("관리자 권한으로는 이용하실 수 없습니다.");
					} else if (!member_id) {
						alert("비회원은 장바구니를 이용하실 수 없습니다.");
							location.href="login";
					} else if (basket_amount == 0) {
						alert("수량을 선택해주세요");
					} else {
						$.ajax({
							type : "GET",
							url : "insertBasket",
							data : {
								"goods_name" : goods_name,
								"member_id" : member_id,
								"goods_num" : goods_num,
								"basket_sum": basket_sum,
								"basket_amount" : basket_amount
							},
							success : function(data) {
								alert("장바구니에 저장되었습니다.");
								location.href="goodsmall";
							}
						});
					}
				}
			

