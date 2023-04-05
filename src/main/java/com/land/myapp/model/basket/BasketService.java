package com.land.myapp.model.basket;

import java.util.List;

import com.land.myapp.model.member.vo.GoodsPaymentVO;

public interface BasketService {// 장바구니

	void insertBasket(BasketVO vo); // 장바구니 추가

	void deleteBasket(BasketVO vo); // 장바구니 삭제

	public BasketVO getSelectOne(BasketVO vo);// 상세 정보

	List<BasketVO> getBasketList(BasketVO vo); // 리스트 출력

	// 장바구니 결제
	public void basketPayment(GoodsPaymentVO vo);

	// 결제 후 장바구니 비우기
	public void deleteCartPayment(BasketVO vo);

}
