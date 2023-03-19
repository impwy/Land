package com.land.myapp.view.ticket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.land.myapp.model.orderticket.OrderTicketService;
import com.land.myapp.model.orderticket.OrderTicketVO;

@Controller
public class TicketController {
	
	@Autowired
	private OrderTicketService orderticketservice;
	
	@RequestMapping(value="/ticketOrder")
	public String orderTicket() {
		return "/ticket/orderTicket";
	}

	
	@RequestMapping(value="/order",method=RequestMethod.POST)
	public String insertTicket(
			@RequestParam(value="member_id",required=false,defaultValue="Guest") String member_id ,OrderTicketVO vo) {
		vo.setMember_id(member_id);
		orderticketservice.insertTicket(vo);
		return "/ticket/orderTicket"; 
	}
}
	
	
