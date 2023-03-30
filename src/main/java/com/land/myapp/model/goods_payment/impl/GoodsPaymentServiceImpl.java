package com.land.myapp.model.goods_payment.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.land.myapp.model.goods_payment.GoodsPaymentService;
import com.land.myapp.model.goods_payment.GoodsPaymentVO;

@Service("GoodsPaymentService")
public class GoodsPaymentServiceImpl implements GoodsPaymentService {
	
	@Autowired
	private GoodsPaymentDAO goodsPaymentDAO;
	
	@Override
	public void insertGoodsPayment(GoodsPaymentVO vo) {
		goodsPaymentDAO.insertGoodsPayment(vo);
	}
	
	

}
