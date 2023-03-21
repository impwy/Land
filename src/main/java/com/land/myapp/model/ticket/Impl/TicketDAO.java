package com.land.myapp.model.ticket.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.land.myapp.model.ticket.TicketVO;

@Repository
public class TicketDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//티켓 가격 가져오기
	public List<TicketVO> getTicketPrice(TicketVO vo) {
		return mybatis.selectList("TicketDAO.getTicketPrice",vo);
	}
}
