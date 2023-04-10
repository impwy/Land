package com.land.myapp.model.orderticket.Service;

import com.land.myapp.model.orderticket.DTO.OrderTicketDTO;

import java.util.List;

public interface OrderTicketService {
	
	//티켓 정보 입력
	void insertOrderTicket(OrderTicketDTO vo);
	//예매 취소
	void deleteOrderTicket(String ticket_num);
	//티켓 조회
	List<OrderTicketDTO> getOrderTicketList(String member_id, int start, int end);
	//주문 수
	int getCountOrderTicket(String member_id);
}