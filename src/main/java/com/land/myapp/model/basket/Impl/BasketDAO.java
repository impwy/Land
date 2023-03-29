package com.land.myapp.model.basket.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.land.myapp.model.basket.BasketVO;
import com.land.myapp.model.board.BoardVO;

@Repository
public class BasketDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	//장바구니 등록
	public void insertBasket(BasketVO vo) {
		System.out.println(vo);
		mybatis.insert("BasketDAO.insertBasket",vo);
		
	}
	//장바구니 비우기
	public int deleteBasket(int goods_num) {
		int result = mybatis.delete("BasketDAO.deleteCart",goods_num);
		return result;
	}
	

	
	//리스트 출력
	public List<BasketVO> getBasketList(BasketVO vo){
		List<BasketVO> result = mybatis.selectList("BasketDAO.basketList");
		return result;
	}
	
	// 상세 정보
	public BasketVO getSelectOne(int goods_num) {
		BasketVO result = mybatis.selectOne("BasketDAO.getbasketList",goods_num);
		return result;
	}

}
