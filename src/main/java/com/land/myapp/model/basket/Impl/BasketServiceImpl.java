package com.land.myapp.model.basket.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.land.myapp.model.basket.BasketService;
import com.land.myapp.model.basket.BasketVO;
import com.land.myapp.model.member.vo.GoodsPaymentVO;

@Service("BasketService")
public class BasketServiceImpl implements BasketService {
	
	@Autowired
	private BasketDAO basketDAO;
	//장바구니 추가
	@Override
	public void insertBasket(BasketVO vo) {
		basketDAO.insertBasket(vo);
	}
	//장바구니 삭제
	@Override
	public void deleteBasket(BasketVO vo) {
		basketDAO.deleteBasket(vo);
	}
	//장바구니 리스트
	@Override
	public List<BasketVO> getBasketList(BasketVO vo) {
		return basketDAO.getBasketList(vo);
	}
	//장바구니 상세보기
	@Override
	public BasketVO getSelectOne(BasketVO vo) {
		return basketDAO.getSelectOne(vo);
	}
	//장바구니 결제
	@Override
	public void basketPayment(GoodsPaymentVO vo) {
		basketDAO.basketPayment(vo);
		
	}
	//장바구니 결제후 장바구니 비우기
	@Override
	public void deleteCartPayment(BasketVO vo) {
		basketDAO.deleteCartPayment(vo);
		
	}

}
