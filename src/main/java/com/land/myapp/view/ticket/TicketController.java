package com.land.myapp.view.ticket;

import java.sql.Date;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.land.myapp.model.orderticket.OrderTicketService;
import com.land.myapp.model.orderticket.OrderTicketVO;

@Controller
public class TicketController {
	
	@Autowired
	private OrderTicketService orderTicketService;

	
	//로그인이 안되어있다면 member_id Guest로 저장
	@RequestMapping(value="ticketPayment",method=RequestMethod.POST)
	public String insertTicket(OrderTicketVO vo ,HttpSession session) {
		orderTicketService.insertOrderTicket(vo);
		return "/ticket/ticketMain"; 
	}
	
	//예매 취소
	@RequestMapping(value="/deleteTicket", method=RequestMethod.POST)
	public String deleteTicket(OrderTicketVO vo) {
		orderTicketService.deleteOrderTicket(vo);
		return "main";
	}
	
		//티켓예매 페이지로 이동
		@RequestMapping("/ticket")
		public String ticket() {
			return "/ticket/ticketMain";
		}
		//티켓주문으로 이동
		@RequestMapping(value="/order", method=RequestMethod.POST)
		public String orderTicket(
				@RequestParam(value="adult_amount") int adult_amount,
				@RequestParam(value="teen_amount") int teen_amount,
				@RequestParam(value="baby_amount") int baby_amount,
				@RequestParam(value="ticket_sum") int ticket_sum,
				@RequestParam(value="ticket_date") Date ticket_date,
				@RequestParam(value="ticket_amount") String ticket_amount,				
				HttpSession session
				) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("adult_amount",adult_amount);
			map.put("teen_amount",teen_amount);
			map.put("baby_amount",baby_amount);
			map.put("ticket_date",ticket_date);
			map.put("ticket_sum",ticket_sum);
			map.put("ticket_amount", ticket_amount);
			session.setAttribute("map", map);
			return "/ticket/ticketPayment";
		}
		//allDayTicket이동
		@RequestMapping("/allDayTicket")
		public String allDayTicket() {
			return "ticket/allDayTicket";
		}
		//after4Ticket이동
		@RequestMapping("/after4Ticket")
		public String after4Ticket() {
			return "ticket/after4Ticket";
		}
	
	
	//예매내역 조회
}
	
	
