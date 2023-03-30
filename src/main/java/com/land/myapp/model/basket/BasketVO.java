package com.land.myapp.model.basket;

public class BasketVO {// 장바구니

	private String member_id;
	private int goods_num;
	private int basket_sum;
	private int basket_amount;
	private String goods_name;
	
	
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getGoods_num() {
		return goods_num;
	}
	public void setGoods_num(int goods_num) {
		this.goods_num = goods_num;
	}
	public int getBasket_sum() {
		return basket_sum;
	}
	public void setBasket_sum(int basket_sum) {
		this.basket_sum = basket_sum;
	}
	public int getBasket_amount() {
		return basket_amount;
	}
	public void setBasket_amount(int basket_amount) {
		this.basket_amount = basket_amount;
	}
	@Override
	public String toString() {
		return "BasketVO [member_id=" + member_id + ", goods_num=" + goods_num + ", basket_sum=" + basket_sum
				+ ", basket_amount=" + basket_amount + ", goods_name=" + goods_name + "]";
	}
	
	
	
}
