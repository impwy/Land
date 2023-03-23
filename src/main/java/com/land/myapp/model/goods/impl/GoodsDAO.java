package com.land.myapp.model.goods.Impl;

import java.util.HashMap;


import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.land.myapp.model.goods.GoodsVO;



@Repository
public class GoodsDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//목록
	public List<GoodsVO> listGoods(){
		return mybatis.selectList("GoodsDAO.Goods_list");
	}

	
	//상품정보수정
	public void updateGoods(GoodsVO vo) {
		mybatis.update("GoodsDAO.Goods_update",vo);
	}
	//상품 삭제
	public void deleteGoods(int goods_num) {
		mybatis.delete("GoodsDAO.Goods_delete",goods_num);
	}
	//상품 등록
	public void insertGoods(GoodsVO vo) {
		mybatis.insert("GoodsDAO.Goods_insert",vo);
	}
//	public String fileInfo(int product_id) {
//		return mybatis.selectOne("product.fileInfo", product_id);
//	}
	

}
