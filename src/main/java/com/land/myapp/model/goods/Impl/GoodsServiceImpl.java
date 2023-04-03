package com.land.myapp.model.goods.Impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.land.myapp.model.goods.GoodsService;
import com.land.myapp.model.goods.GoodsVO;




@Service("goodsService")
public class GoodsServiceImpl implements GoodsService{
	
	@Autowired
	private GoodsDAO goodsDAO;

    //상품정보 수정
    public void updateGoods(GoodsVO vo) {
    	goodsDAO.updateGoods(vo);
    }
    //상품정보 삭제
    public void deleteGoods(int goods_num){
    	System.out.println("impl통과");
    	goodsDAO.deleteGoods(goods_num);
    }
    //상품등록
    public void insertGoods(GoodsVO vo) {
    	System.out.println("impl통과");
    	goodsDAO.insertGoods(vo);
    }
    
   
    
    //상품상세
	@Override
	public GoodsVO getGoodsInfo(int goods_num) {
		return goodsDAO.getGoodsInfo(goods_num);
	}
	
	public List<GoodsVO> getGoodsList(int start, int end, GoodsVO vo){
		System.out.println("impl통과");
		return goodsDAO.getGoodsList(start,end,vo);
	}
	
	public int getCountGoods(GoodsVO vo) {
		return goodsDAO.getCountGoods(vo);
	}
    //관리자용
	public List<GoodsVO> getAdminGoodsList(int start, int end, GoodsVO vo){
		return goodsDAO.getAdminGoodsList(start, end, vo);
	}
	
	public int getAdminCountGoods(GoodsVO vo) {
		return goodsDAO.getAdminCountGoods(vo);
	}
	

}
