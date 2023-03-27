package com.land.myapp.view.ticket;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.mvc.method.annotation.ViewMethodReturnValueHandler;
import org.springframework.web.servlet.mvc.method.annotation.ViewNameMethodReturnValueHandler;

import com.land.myapp.model.member.vo.MemberVO;
import com.land.myapp.model.orderticket.OrderTicketService;
import com.land.myapp.model.orderticket.OrderTicketVO;

@Controller
public class TicketController {
	
	@Autowired
	private OrderTicketService orderTicketService;

	
	//예매 성공
	@RequestMapping(value="/ticketPayment",method=RequestMethod.POST)
	public String insertTicket(OrderTicketVO vo) {
		orderTicketService.insertOrderTicket(vo);
		return "redirect:/success"; 
	}
	
	//예매 취소
	@RequestMapping(value="/deleteTicket", method=RequestMethod.GET)
	public String deleteTicket(String ticket_num) {
		orderTicketService.deleteOrderTicket(ticket_num);
		return "redirect:/ticketList";
	}
	
		//티켓예매 페이지로 이동
		@RequestMapping("/ticket")
		public String ticket() {
			return "/ticket/ticketMain";
		}
		
		//티켓주문으로 이동
		@RequestMapping(value="/order", method=RequestMethod.POST)
		public String orderTicket(OrderTicketVO vo,HttpSession session) {
			session.setAttribute("map", vo);
			return "/ticket/ticketPayment";
		}
		
		//allDayTicket이동
		@RequestMapping("/allDayTicket")
		public String allDayTicket() {
			return "ticket/allDayTicket";
		}
		//after4Ticket이동
		@RequestMapping("/afterFourTicket")
		public String after4Ticket() {
			return "ticket/after4Ticket";
		}
	
	
	//예매내역 조회
	@RequestMapping(value="/ticketList", method=RequestMethod.GET)
	public String getTicketList(OrderTicketVO vo, HttpSession session) {
		MemberVO member = (MemberVO) session.getAttribute("member");
		List<OrderTicketVO> list =  orderTicketService.getOrderTicketList(member.getMember_id());
		session.setAttribute("list", list);
		return "ticket/ticketList";
	}
}
	
	
