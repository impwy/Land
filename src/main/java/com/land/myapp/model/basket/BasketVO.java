package com.land.myapp.model.basket;

public class BasketVO {//장바구니
	
	private int user_no;    //회원번호
	private int goods_num;  //상품번호
	private int basket_sum; //총금액
	
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
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
	@Override
	public String toString() {
		return "basketVO [user_no=" + user_no + ", goods_num=" + goods_num + ", basket_sum=" + basket_sum + "]";
	}
	
	

}
