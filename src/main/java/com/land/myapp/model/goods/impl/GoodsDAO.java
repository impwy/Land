package com.land.myapp.model.goods.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.land.myapp.model.goods.GoodsVO;


@Repository
public class GoodsDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//상품등록
	public void insertGoods(GoodsVO vo) {
		mybatis.insert("ProductInfoDAO.insertProduct", vo);
	}
	

}
