package com.land.myapp.model.orderticket;

import java.sql.Date;

public class OrderTicketVO {
	private String member_id;
	private String ticket_num;
	private Date ticket_date;
	private String ticket_email;
	private String ticket_phone;
	private String ticket_type;
	private int ticket_amount;
	private int ticket_sum;
	
	
	
	
	
	public int getTicket_amount() {
		return ticket_amount;
	}
	public void setTicket_amount(int ticket_amount) {
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
	@Override
	public String toString() {
		return "OrderTicketVO [member_id=" + member_id + ", ticket_num=" + ticket_num + ", ticket_date=" + ticket_date
				+ ", ticket_email=" + ticket_email + ", ticket_phone=" + ticket_phone + ", ticket_type=" + ticket_type
				+ ", ticket_amount=" + ticket_amount + ", ticket_sum=" + ticket_sum + "]";
	}
	
}
