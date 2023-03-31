package com.land.myapp.model.member.vo;

import java.sql.Date;

public class MemberVO {

	// 회원번호
	private int member_no;

	// 아이디
	private String member_id;

	// 비밀번호
	private String member_pwd;

	// 이름
	private String member_name;

	// 전화번호
	private String member_phone;

	// 나이
	private int member_age;

	// 이메일
	private String member_email;

	// 주소
	private String member_addr;

	// 주민등록번호
	private Long member_key;

	// 가입날짜
	private Date member_date;

	private Integer getMember;

	public MemberVO() {
	}

	public MemberVO(int member_no) {
		this.member_no = member_no;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pwd() {
		return member_pwd;
	}

	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public int getMember_age() {
		return member_age;
	}

	public void setMember_age(int member_age) {
		this.member_age = member_age;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_addr() {
		return member_addr;
	}

	public void setMember_addr(String member_addr) {
		this.member_addr = member_addr;
	}

	public Long getMember_key() {
		return member_key;
	}

	public void setMember_key(Long member_key) {
		this.member_key = member_key;
	}

	public Date getMember_date() {
		return member_date;
	}

	public void setMember_date(Date member_date) {
		this.member_date = member_date;
	}

	public Integer getGetMember() {
		return getMember;
	}

	public void setGetMember(Integer getMember) {
		this.getMember = getMember;
	}
	
	@Override
	public String toString() {
		return "MemberVO{" +
				"member_no=" + member_no +
				", member_id='" + member_id + '\'' +
				", member_pwd='" + member_pwd + '\'' +
				", member_name='" + member_name + '\'' +
				", member_phone='" + member_phone + '\'' +
				", member_age=" + member_age +
				", member_email='" + member_email + '\'' +
				", member_addr='" + member_addr + '\'' +
				", member_key=" + member_key +
				", member_date=" + member_date +
				", getMember=" + getMember +
				'}';
	}
}