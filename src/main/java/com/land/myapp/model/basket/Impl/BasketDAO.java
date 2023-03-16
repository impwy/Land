package com.land.myapp.model.basket.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.land.myapp.model.basket.BasketVO;

@Repository
public class BasketDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//장바구니 등록
	public void insertBasket(BasketVO vo) {
		mybatis.insert("BasketDAO.insertBasket",vo);
		
	}
	//장바구니 비우기
	public void deleteBasket(BasketVO vo) {
		mybatis.delete("BasketDAO.deleteBasket",vo);
	}
	//리스트 출력
	public List<BasketVO> getBasketList(BasketVO vo){
		return mybatis.selectList("BasketDAO.basket",vo);
	}

}