package com.land.myapp.model.basket;

import java.util.List;

public interface BasketService {// 장바구니

	void insertBasket(BasketVO vo); // 물품 추가

	void deleteBasket(BasketVO vo); // 물품 삭제

	List<BasketVO> getBasketList(BasketVO vo); // 리스트 출력

}
