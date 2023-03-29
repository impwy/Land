package com.land.myapp.model.basket;

import java.util.List;

public interface BasketService {// 장바구니

	void insertBasket(BasketVO vo); // 물품 추가

	public int deleteBasket(int goods_num); // 물품 삭제

	public BasketVO getSelectOne(int goods_num);// 상세 정보

	List<BasketVO> getBasketList(BasketVO vo); // 리스트 출력

}
