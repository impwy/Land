package com.land.myapp.model.goods;

import java.util.List;

public interface GoodsService {
	    
	    List<GoodsVO> listProduct();
	    void updateGoods(GoodsVO vo);
	    void deleteGoods(int goods_num);
	    void insertGoods(GoodsVO vo);
	    String fileInfo(int goods_num);
	   
	
}
