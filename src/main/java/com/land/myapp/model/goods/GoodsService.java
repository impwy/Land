package com.land.myapp.model.goods;

import java.util.List;

public interface GoodsService {
	    
	    List<GoodsVO> listGoods();
	    void updateGoods(GoodsVO vo);
	    void deleteGoods(int goods_num);
	    void insertGoods(GoodsVO vo);
	   List<GoodsVO> getGoodsInfo(int goods_num);
	   
	
}
