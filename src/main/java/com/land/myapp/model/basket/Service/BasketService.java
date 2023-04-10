package com.land.myapp.model.basket.Service;

import java.util.List;

import com.land.myapp.model.basket.DTO.BasketDTO;
import com.land.myapp.model.member.DTO.GoodsPaymentDTO;

public interface BasketService {// 장바구니

	void insertBasket(BasketDTO vo); // 장바구니 추가

	void deleteBasket(BasketDTO vo); // 장바구니 삭제

	public BasketDTO getSelectOne(BasketDTO vo);// 상세 정보

	List<BasketDTO> getBasketList(BasketDTO vo); // 리스트 출력

	// 장바구니 결제
	public void basketPayment(GoodsPaymentDTO vo);

	// 결제 후 장바구니 비우기
	public void deleteCartPayment(BasketDTO vo);

}
