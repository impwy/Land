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
	
	//관리자가 상품 코드 중복 검사
	public int prdCheckID(GoodsVO vo) {
		return mybatis.selectOne("GoodsDAO.prdCheckID",vo);
	}
	
	//상품 검색
	public List<GoodsVO> listSearch
	

}
