package com.land.myapp.model.goods;

import java.util.List;







public interface GoodsService {
	    
	   
	    void updateGoods(GoodsVO vo);
	    void deleteGoods(int goods_num);
	    void insertGoods(GoodsVO vo);
	   GoodsVO getGoodsInfo(int goods_num);
	// 물품 리스트
		List<GoodsVO> getGoodsList(int start, int end, GoodsVO vo);
		
		int getCountGoods(GoodsVO vo);
	   
	
}
