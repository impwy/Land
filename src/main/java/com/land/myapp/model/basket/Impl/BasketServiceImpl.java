package com.land.myapp.model.basket.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.land.myapp.model.basket.BasketService;
import com.land.myapp.model.basket.BasketVO;

@Service("BasketService")
public class BasketServiceImpl implements BasketService {
	
	@Autowired
	private BasketDAO basketDAO;
	
	@Override
	public void insertBasket(BasketVO vo) {
		basketDAO.insertBasket(vo);
	}
	@Override
	public int deleteBasket(int goods_num) {
		return basketDAO.deleteBasket(goods_num);
	}
	
	@Override
	public List<BasketVO> getBasketList(BasketVO vo) {
		return basketDAO.getBasketList(vo);
	}
	
	@Override
	public BasketVO getSelectOne(int goods_num) {
		return basketDAO.getSelectOne(goods_num);
	}

}
