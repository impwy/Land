package com.land.myapp.model.orderticket;

import java.util.List;

public interface OrderTicketService {
	
	//티켓 정보 입력
	void insertOrderTicket(OrderTicketVO vo);
	//예매 취소
	void deleteOrderTicket(OrderTicketVO vo);
	//티켓 조회
	void selectOrderTicket(OrderTicketVO vo);
}