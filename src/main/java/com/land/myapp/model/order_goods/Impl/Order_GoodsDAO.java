package com.land.myapp.model.order_goods.Impl;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.land.myapp.model.order_goods.Order_GoodsVO;


@Repository
public class Order_GoodsDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//물품 구매
	public List<Order_GoodsVO> getOrder_Goods(Order_GoodsVO vo){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("Order_Goods", vo);
		return mybatis.selectList("Order_GoodsDAO.getOrder_Goods",map);
	}
	
	// 장바구니 물품 구매
		public List<Order_GoodsVO> basketOrder_Goods(Order_GoodsVO vo) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("payment", vo);
			return mybatis.selectList("Order_GoodsDAO.basketOrder_Goods", map);
		}
		
		// 결제
		public void insertOrder_Goods(Order_GoodsVO vo) {
			mybatis.insert("Order_GoodsDAO.insertOrder_Goods", vo);
		}
		
		// 결제 후 장바구니 비우기
		public void deleteBasketOrder_Goods(Order_GoodsVO vo) {
			mybatis.delete("Order_GoodsDAO.deleteBasketOrder_Goods", vo);
		}
}
