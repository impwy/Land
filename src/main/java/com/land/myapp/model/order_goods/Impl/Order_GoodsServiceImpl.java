package com.land.myapp.model.order_goods.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.land.myapp.model.order_goods.Order_GoodsService;
import com.land.myapp.model.order_goods.Order_GoodsVO;

@Service("order_GoodsService")
public class Order_GoodsServiceImpl{
	@Autowired
	private Order_GoodsDAO order_GoodsDAO;
	
	//구매
	public List<Order_GoodsVO> getOrder_Goods(Order_GoodsVO vo){
		return order_GoodsDAO.getOrder_Goods(vo);
		
	}
	//장바구니 구매
	public List<Order_GoodsVO> basketOrder_Goods(Order_GoodsVO vo){
		return order_GoodsDAO.basketOrder_Goods(vo);
	}
	//결제
	public void insertOrder_Goods(Order_GoodsVO vo) {
		order_GoodsDAO.insertOrder_Goods(vo);
	}
	
	//장바구니 비우기
	public void deleteBasketOrder_Goods(Order_GoodsVO vo) {
		order_GoodsDAO.deleteBasketOrder_Goods(vo);
	}
	

}
