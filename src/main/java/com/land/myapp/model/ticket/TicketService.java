package com.land.myapp.model.ticket;

import java.util.List;

public interface TicketService {

	//티켓 가격 가져오기
	List<TicketVO> getTicketPrice(TicketVO vo);
}