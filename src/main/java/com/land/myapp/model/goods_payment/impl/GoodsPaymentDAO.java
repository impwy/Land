package com.land.myapp.model.goods_payment.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.land.myapp.model.goods_payment.GoodsPaymentService;
import com.land.myapp.model.goods_payment.GoodsPaymentVO;

@Repository
public class GoodsPaymentDAO implements GoodsPaymentService {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertGoodsPayment(GoodsPaymentVO vo) {
		mybatis.insert("GoodsPaymentDAO.insertGoodsPayment",vo);
	}
}
