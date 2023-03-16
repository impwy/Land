package com.land.myapp.model.orderticket;

import java.sql.Date;

public class OrderTicketVO {
	private int user_no;
	private int ticket_no;
	private Date ticket_date;
	private String ticket_name;
	private String ticket_email;
	private int ticket_phone;
	private String user_grade;
	private String ticket_type;
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public int getTicket_no() {
		return ticket_no;
	}
	public void setTicket_no(int ticket_no) {
		this.ticket_no = ticket_no;
	}
	public Date getTicket_date() {
		return ticket_date;
	}
	public void setTicket_date(Date ticket_date) {
		this.ticket_date = ticket_date;
	}
	public String getTicket_name() {
		return ticket_name;
	}
	public void setTicket_name(String ticket_name) {
		this.ticket_name = ticket_name;
	}
	public String getTicket_email() {
		return ticket_email;
	}
	public void setTicket_email(String ticket_email) {
		this.ticket_email = ticket_email;
	}
	public int getTicket_phone() {
		return ticket_phone;
	}
	public void setTicket_phone(int ticket_phone) {
		this.ticket_phone = ticket_phone;
	}
	public String getUser_grade() {
		return user_grade;
	}
	public void setUser_grade(String user_grade) {
		this.user_grade = user_grade;
	}
	public String getTicket_type() {
		return ticket_type;
	}
	public void setTicket_type(String ticket_type) {
		this.ticket_type = ticket_type;
	}
	
	
}
