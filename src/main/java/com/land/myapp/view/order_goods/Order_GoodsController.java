package com.land.myapp.view.order_goods;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.land.myapp.model.goods_payment.GoodsPaymentService;
import com.land.myapp.model.goods_payment.GoodsPaymentVO;

@Controller
public class Order_GoodsController {
		
	@Autowired
	private GoodsPaymentService GoodsPaymentService;
	//굿즈  페이지 이동
		@RequestMapping(value="/goodsOrder")
		public String orderGoods() {
			return "/goods/Goods";
		}
		
		//주문 내역 등록
		@PostMapping(value="/payment")
		public String insertGoodsPayment(GoodsPaymentVO vo) {
			GoodsPaymentService.insertGoodsPayment(vo);
			return "main";
		}

}
