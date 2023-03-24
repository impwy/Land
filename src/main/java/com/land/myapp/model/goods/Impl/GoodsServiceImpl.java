package com.land.myapp.model.goods.Impl;

import java.util.List;




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
    	goodsDAO.deleteGoods(goods_num);
    }
    //상품등록
    public void insertGoods(GoodsVO vo) {
    	System.out.println("impl통과");
    	goodsDAO.insertGoods(vo);
    }
    
    public List<GoodsVO> listGoods(){
    	return goodsDAO.listGoods();
    }
   
 
}
