package com.land.myapp.view.ticket;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.land.myapp.model.orderticket.OrderTicketService;
import com.land.myapp.model.orderticket.OrderTicketVO;
import com.land.myapp.model.ticket.TicketService;

@Controller
public class TicketController {
	
	@Autowired
	private OrderTicketService orderTicketService;

	
	//로그인이 안되어있다면 member_id Guest로 저장
	@RequestMapping(value="/order",method=RequestMethod.POST)
	public String insertTicket(
			@RequestParam(value="member_id",required=false,defaultValue="Guest") String member_id
			,OrderTicketVO vo
			,HttpSession session
			) {
		vo.setMember_id(member_id);
		orderTicketService.insertOrderTicket(vo);
		System.out.println(vo.getTicket_amount());
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
	
	
