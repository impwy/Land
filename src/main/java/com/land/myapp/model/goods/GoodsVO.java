package com.land.myapp.model.goods;



public class GoodsVO {
	private int goods_num;//상품번호
	private int goods_price;//가격
	private String goods_name;//상품이름
	private String goods_image;//상품이미지
	private int goods_amount;//상품수량
	
	
	public int getGoods_num() {
		return goods_num;
	}
	public void setGoods_num(int goods_num) {
		this.goods_num = goods_num;
	}
	public int getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(int goods_price) {
		this.goods_price = goods_price;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getGoods_image() {
		return goods_image;
	}
	public void setGoods_image(String goods_image) {
		this.goods_image = goods_image;
	}
	public int getGoods_amount() {
		return goods_amount;
	}
	public void setGoods_amount(int goods_amount) {
		this.goods_amount = goods_amount;
	}
	@Override
	public String toString() {
		return "GoodsVO [goods_num=" + goods_num + ", goods_price=" + goods_price + ", goods_name=" + goods_name
				+ ", goods_image=" + goods_image + ", goods_amount=" + goods_amount + "]";
	}
	
	
	
	
	
}
