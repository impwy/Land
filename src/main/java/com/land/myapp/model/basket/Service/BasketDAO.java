package com.land.myapp.model.basket.Service;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.land.myapp.model.basket.DTO.BasketDTO;
import com.land.myapp.model.member.DTO.GoodsPaymentDTO;

@Repository
public class BasketDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	// 장바구니 등록
	public void insertBasket(BasketDTO vo) {
		System.out.println(vo);
		mybatis.insert("BasketDAO.insertBasket", vo);

	}

	// 장바구니 비우기
	public void deleteBasket(BasketDTO vo) {
		mybatis.delete("BasketDAO.deleteCart", vo);
	}

	// 리스트 출력
	public List<BasketDTO> getBasketList(BasketDTO vo) {
		List<BasketDTO> result = mybatis.selectList("BasketDAO.basketList", vo);
		return result;
	}

	// 상세 정보
	public BasketDTO getSelectOne(BasketDTO vo) {
		BasketDTO result = mybatis.selectOne("BasketDAO.getbasketList",vo);
		return result;
	}

	// 장바구니 결제
	public void basketPayment(GoodsPaymentDTO vo) {
		mybatis.selectList("GoodsPaymentDAO.insertGoodsPayment", vo);
	}

	// 결제 후 장바구니 비우기
	public void deleteCartPayment(BasketDTO vo) {
		mybatis.delete("BasketDAO.deleteCartPayment", vo);
	}

}
