package com.land.myapp.model.basket.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.land.myapp.model.basket.DTO.BasketDTO;
import com.land.myapp.model.member.DTO.GoodsPaymentDTO;

@Service("BasketService")
public class BasketServiceImpl implements BasketService {
	
	@Autowired
	private BasketDAO basketDAO;
	//장바구니 추가
	@Override
	public void insertBasket(BasketDTO vo) {
		basketDAO.insertBasket(vo);
	}
	//장바구니 삭제
	@Override
	public void deleteBasket(BasketDTO vo) {
		basketDAO.deleteBasket(vo);
	}
	//장바구니 리스트
	@Override
	public List<BasketDTO> getBasketList(BasketDTO vo) {
		return basketDAO.getBasketList(vo);
	}
	//장바구니 상세보기
	@Override
	public BasketDTO getSelectOne(BasketDTO vo) {
		return basketDAO.getSelectOne(vo);
	}
	//장바구니 결제
	@Override
	public void basketPayment(GoodsPaymentDTO vo) {
		basketDAO.basketPayment(vo);
		
	}
	//장바구니 결제후 장바구니 비우기
	@Override
	public void deleteCartPayment(BasketDTO vo) {
		basketDAO.deleteCartPayment(vo);
		
	}

}
