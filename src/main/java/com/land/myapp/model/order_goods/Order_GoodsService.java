package com.land.myapp.model.order_goods;

import java.util.List;

public interface Order_GoodsService {
	
	//구매
	List<Order_GoodsVO> getOrder_Goods(Order_GoodsVO vo);
	
	//장바구니 구매
	List<Order_GoodsVO> basketOrder_Goods(Order_GoodsVO vo);
	
	//결제
	void insertOrder_Goods(Order_GoodsVO vo);
	
	//결제 후 장바구니 비우기
	void deleteBasketOrder_Goods(Order_GoodsVO vo);
}
	
	
	
	
	
	
	


