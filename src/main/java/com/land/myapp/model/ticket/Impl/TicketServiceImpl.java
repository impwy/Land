package com.land.myapp.model.ticket.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.land.myapp.model.ticket.TicketService;
import com.land.myapp.model.ticket.TicketVO;

@Service("TicketService")
public class TicketServiceImpl implements TicketService {
	
	@Autowired
	private TicketDAO ticketDAO;
	@Override
	public List<TicketVO> getTicketPrice(TicketVO vo) {
		
		return ticketDAO.getTicketPrice(vo);
	}
	
}
