package com.land.myapp.model.orderticket.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.land.myapp.model.orderticket.OrderTicketService;
import com.land.myapp.model.orderticket.OrderTicketVO;

@Service("OrderTicketService")
public class OrderTicketServiceImpl implements OrderTicketService{
	
	@Autowired
	private OrderTicketDAO orderTicketDAO;
	
	
	@Override
	public void insertTicket(OrderTicketVO vo) {
		orderTicketDAO.insertTicket(vo);
	}

}
