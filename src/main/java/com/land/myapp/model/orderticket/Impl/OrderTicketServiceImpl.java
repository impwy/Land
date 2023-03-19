package com.land.myapp.model.orderticket.Impl;

import java.time.LocalDate;

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
		System.out.println(ticketNum);
	}
	
	@Autowired
	private OrderTicketDAO orderTicketDAO;
	
	@Override
	public void insertTicket(OrderTicketVO vo) {
		makeNum(vo);
		orderTicketDAO.insertTicket(vo);
		System.out.println(vo);
	}

}
