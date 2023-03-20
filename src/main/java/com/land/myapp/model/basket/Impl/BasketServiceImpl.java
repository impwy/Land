package com.land.myapp.model.basket.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.land.myapp.model.basket.BasketService;
import com.land.myapp.model.basket.BasketVO;

@Service("BasketService")
public class BasketServiceImpl implements BasketService {
	
//	@Autowired
	private BasketDAO basketDAO;
	
	public void insertBasket(BasketVO vo) {
		basketDAO.insertBasket(vo);
	}
	
	public void deleteBasket(BasketVO vo) {
		basketDAO.deleteBasket(vo);
	}
	
	
	public List<BasketVO> getBasketList(BasketVO vo) {
		return basketDAO.getBasketList(vo);
	}

}
