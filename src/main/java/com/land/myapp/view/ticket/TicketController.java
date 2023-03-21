package com.land.myapp.view.ticket;

import javax.servlet.http.HttpSession;

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
	
	//티켓 주문 페이지 이동
	@RequestMapping(value="/ticketOrder")
	public String orderTicket() {
		return "/ticket/orderTicket";
	}

	//로그인이 되어있다면 member_id에 회원 아이디 저장
	//로그인이 안되어있다면 member_id Guest로 저장
	@RequestMapping(value="/order",method=RequestMethod.POST)
	public String insertTicket(
			@RequestParam(value="member_id",required=false,defaultValue="Guest") String member_id,
			@RequestParam(value="ticket_num",required=false,defaultValue="1") int ticket_num
			,OrderTicketVO vo
			,HttpSession session
			) {

		String member = (String) session.getAttribute("member_id");
		//로그인체크 로그인이 되어있다면 member_id = 로그인된 id
		if(member != null) {
			member_id = member;
		}
		//로그인이 안되어있다면 member_id "Guest"로 저장
		vo.setMember_id(member_id);
		orderticketservice.insertOrderTicket(vo);
		return "/ticket/orderTicket"; 
	}
	
	//예매 취소
	@RequestMapping(value="/deleteTicket", method=RequestMethod.POST)
	public String deleteTicket(OrderTicketVO vo) {
		orderticketservice.deleteOrderTicket(vo);
		return "main";
	}
	//예매내역 조회
}
	
	
