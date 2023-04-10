package com.land.myapp.model.goods.Service;

import com.land.myapp.model.goods.DTO.GoodsDTO;

import java.util.List;


public interface GoodsService {
	    
	   
	    void updateGoods(GoodsDTO vo);
	    void deleteGoods(int goods_num);
	    void insertGoods(GoodsDTO vo);
	   GoodsDTO getGoodsInfo(int goods_num);
	// 물품 리스트
		List<GoodsDTO> getGoodsList(int start, int end, GoodsDTO vo);
		
		int getCountGoods(GoodsDTO vo);
		
	//관리자 물품 관리
		List<GoodsDTO> getAdminGoodsList(int start, int end, GoodsDTO vo);
		
		int getAdminCountGoods(GoodsDTO vo);
		

}
