package com.land.myapp.view.order_goods;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Order_GoodsController {
	
	//굿즈  페이지 이동
		@RequestMapping(value="/goodsOrder")
		public String orderGoods() {
			return "/goods/Goods";
		}
		
		

}
