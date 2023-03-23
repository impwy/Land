package com.land.myapp.model.orderticket.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.land.myapp.model.orderticket.OrderTicketVO;

@Repository
public class OrderTicketDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//티켓 정보 입력
	public void insertOrderTicket(OrderTicketVO vo) {
		mybatis.insert("OrderTicketDAO.insertOrderTicket",vo);
	}
	
	//예매 취소
	public void deletOrderTicket(String ticket_num) {
		mybatis.delete("OrderTicketDAO.deleteOrderTicket",ticket_num);
	}
	//티켓 조회
	public List<OrderTicketVO> getOrderTicketList(String member_id){
		return mybatis.selectList("OrderTicketDAO.getOrderTicketList",member_id);        
	}
}
