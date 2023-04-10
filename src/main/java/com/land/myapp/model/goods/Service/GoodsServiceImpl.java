package com.land.myapp.model.goods.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.land.myapp.model.goods.DTO.GoodsDTO;




@Service("goodsService")
public class GoodsServiceImpl implements GoodsService{
	
	@Autowired
	private GoodsDAO goodsDAO;

    //상품정보 수정
    public void updateGoods(GoodsDTO vo) {
    	goodsDAO.updateGoods(vo);
    }
    //상품정보 삭제
    public void deleteGoods(int goods_num){
    	System.out.println("impl통과");
    	goodsDAO.deleteGoods(goods_num);
    }
    //상품등록
    public void insertGoods(GoodsDTO vo) {
    	System.out.println("impl통과");
    	goodsDAO.insertGoods(vo);
    }
    
   
    
    //상품상세
	@Override
	public GoodsDTO getGoodsInfo(int goods_num) {
		return goodsDAO.getGoodsInfo(goods_num);
	}
	
	public List<GoodsDTO> getGoodsList(int start, int end, GoodsDTO vo){
		System.out.println("impl통과");
		return goodsDAO.getGoodsList(start,end,vo);
	}
	
	public int getCountGoods(GoodsDTO vo) {
		return goodsDAO.getCountGoods(vo);
	}
    //관리자용
	public List<GoodsDTO> getAdminGoodsList(int start, int end, GoodsDTO vo){
		return goodsDAO.getAdminGoodsList(start, end, vo);
	}
	
	public int getAdminCountGoods(GoodsDTO vo) {
		return goodsDAO.getAdminCountGoods(vo);
	}
	

}
