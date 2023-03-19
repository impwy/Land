package com.land.myapp.model.orderticket.Impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.land.myapp.model.orderticket.OrderTicketVO;

@Repository
public class OrderTicketDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//티켓 정보 입력
	public void insertTicket(OrderTicketVO vo) {
		mybatis.insert("OrderTicketDAO.insertOrderTicket",vo);
	}
}
