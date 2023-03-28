package com.land.myapp.model.orderticket;

import java.sql.Date;

import org.springframework.web.bind.annotation.RequestParam;

public class OrderTicketVO {
	private String member_id;
	private String ticket_num;
	private Date ticket_date;
	private String ticket_email;
	private String ticket_phone;
	private String ticket_type;
	private String ticket_amount;
	private int ticket_sum;
	private String member_name;
	
	//티켓 수량 셋팅
	int adult_amount=0;	
	int teen_amount=0;
	int baby_amount=0;
	
		
	public String getTicket_amount() {
		return ticket_amount;
	}
	public void setTicket_amount(String ticket_amount) {
		this.ticket_amount = ticket_amount;
	}
	public int getTicket_sum() {
		return ticket_sum;
	}
	public void setTicket_sum(int ticket_sum) {
		this.ticket_sum = ticket_sum;
	}
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getTicket_num() {
		return ticket_num;
	}
	public void setTicket_num(String ticket_num) {
		this.ticket_num = ticket_num;
	}
	public Date getTicket_date() {
		return ticket_date;
	}
	public void setTicket_date(Date ticket_date) {
		this.ticket_date = ticket_date;
	}
	
	public String getTicket_email() {
		return ticket_email;
	}
	public void setTicket_email(String ticket_email) {
		this.ticket_email = ticket_email;
	}
	public String getTicket_phone() {
		return ticket_phone;
	}
	public void setTicket_phone(String ticket_phone) {
		this.ticket_phone = ticket_phone;
	}
	
	public String getTicket_type() {
		return ticket_type;
	}
	public void setTicket_type(String ticket_type) {
		this.ticket_type = ticket_type;
	}
	
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	@Override
	public String toString() {
		return "OrderTicketVO [member_id=" + member_id + ", ticket_num=" + ticket_num + ", ticket_date=" + ticket_date
				+ ", ticket_email=" + ticket_email + ", ticket_phone=" + ticket_phone + ", ticket_type=" + ticket_type
				+ ", ticket_amount=" + ticket_amount + ", ticket_sum=" + ticket_sum + ", member_name=" + member_name
				+ "]";
	}
	
	public int getAdult_amount() {
		return adult_amount;
	}
	public void setAdult_amount(int adult_amount) {
		this.adult_amount = adult_amount;
	}
	public int getTeen_amount() {
		return teen_amount;
	}
	public void setTeen_amount(int teen_amount) {
		this.teen_amount = teen_amount;
	}
	public int getBaby_amount() {
		return baby_amount;
	}
	public void setBaby_amount(int baby_amount) {
		this.baby_amount = baby_amount;
	}
	
	
}
