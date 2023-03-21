package com.land.myapp.model.orderticket.Impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public void deletOrderTicket(OrderTicketVO vo) {
		mybatis.delete("OrderTicketDAO.deleteOrderTicket",vo);
	}
	//티켓 조회
	public List<OrderTicketVO> getOrderTicketList(OrderTicketVO vo){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("member_id", vo.getMember_id());
		map.put("OrderTicket", vo);
		return mybatis.selectList("OrderTicketDAO.getOrderTicketList" , map);        //mapping OrderTicketDAO안에있는 id(메소드)쓰기
	}
}
