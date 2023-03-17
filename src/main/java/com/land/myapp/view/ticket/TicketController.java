package com.land.myapp.view.ticket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.land.myapp.model.orderticket.OrderTicketService;
import com.land.myapp.model.orderticket.OrderTicketVO;

@Controller
public class TicketController {
	
	@Autowired
	private OrderTicketService orderticketservice;
	
	@RequestMapping(value="/ticketOrder",method=RequestMethod.POST)
	public String insertTicket(OrderTicketVO vo) {
		orderticketservice.insertTicket(vo);
		return "main"; 
	}
}
