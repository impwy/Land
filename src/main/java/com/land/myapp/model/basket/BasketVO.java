package com.land.myapp.model.basket;

public class BasketVO {// 장바구니

	private int member_id; // 회원번호
	private int prd_id; // 상품번호
	private int buy_quantity; // 총금액
	private int cart_id; //
	private int prd_opt; //

	public int getMember_id() {
		return member_id;
	}

	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}

	public int getPrd_id() {
		return prd_id;
	}

	public void setPrd_id(int prd_id) {
		this.prd_id = prd_id;
	}

	public int getBuy_quantity() {
		return buy_quantity;
	}

	public void setBuy_quantity(int buy_quantity) {
		this.buy_quantity = buy_quantity;
	}

	public int getCart_id() {
		return cart_id;
	}

	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}

	public int getPrd_opt() {
		return prd_opt;
	}

	public void setPrd_opt(int prd_opt) {
		this.prd_opt = prd_opt;
	}
}
