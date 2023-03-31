package com.land.myapp.model.orderticket.Impl;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.land.myapp.model.orderticket.OrderTicketService;
import com.land.myapp.model.orderticket.OrderTicketVO;

@Service("orderTicketService")
public class OrderTicketServiceImpl implements OrderTicketService{
	
	//TICKET_NUM 생성
	private void makeNum(OrderTicketVO vo) {
		LocalDate now = LocalDate.now();
		String year = now.getYear()+"";
		String monthValue = now.getMonthValue()+"";
		String day = now.getDayOfMonth()+"";
		int num = (int)(Math.random()*(9999-1000 +1))+1000;
		
		String ticketNum = year+monthValue+day+num; 
		vo.setTicket_num(ticketNum);
	}
	
	@Autowired
	private OrderTicketDAO orderTicketDAO;
	
	//티켓정보 등록
	@Override
	public void insertOrderTicket(OrderTicketVO vo) {
		makeNum(vo);
		orderTicketDAO.insertOrderTicket(vo);
	}
	
	//예매 취소
	@Override
	public void deleteOrderTicket(String ticket_num) {
		orderTicketDAO.deletOrderTicket(ticket_num);
	}
	
	//티켓 조회
	public List<OrderTicketVO> getOrderTicketList(String member_id, int start, int end) {
		return orderTicketDAO.getOrderTicketList(member_id,start,end);
	}
	
	//티켓 수량
	public int getCountOrderTicket(String member_id) {
		return orderTicketDAO.getCountOrderTicket(member_id);
	}
	
}
